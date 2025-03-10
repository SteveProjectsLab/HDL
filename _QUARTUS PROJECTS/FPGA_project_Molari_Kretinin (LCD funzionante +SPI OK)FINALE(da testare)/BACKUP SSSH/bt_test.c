#include <unistd.h>
#include <bluetooth/bluetooth.h>
#include <bluetooth/sdp.h>
#include <bluetooth/sdp_lib.h>
#include <bluetooth/rfcomm.h>

#define MY_RF_CHANNEL 22

sdp_session_t* register_service()
{
	uint8_t svc_uuid_int[] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0xab, 0xcd };
	uint8_t rfcomm_channel = MY_RF_CHANNEL ;
	
	const char *service_name = "Terasic RFCOMM";
	const char *svc_dsc = "Terasic RFCOMM";
	const char *service_prov = "Terasic RFCOMM";
	
	uuid_t root_uuid, l2cap_uuid, rfcomm_uuid, svc_uuid, svc_class_uuid;
	
	sdp_list_t *l2cap_list = 0,
	*rfcomm_list = 0,
	*root_list = 0,
	*proto_list = 0,
	*access_proto_list = 0,
	*svc_class_list = 0,
	*profile_list = 0;
	sdp_data_t *channel = 0;
	sdp_profile_desc_t profile;
	sdp_record_t record = { 0 };
	sdp_session_t *session = 0;
	
	// set the general service ID
	printf("[register_service] set the general service ID\r\n");
	sdp_uuid128_create( &svc_uuid, &svc_uuid_int );
	sdp_set_service_id( &record, svc_uuid );
	
	// set the service class
	printf("[register_service] set the service class\r\n");
	sdp_uuid16_create(&svc_class_uuid, SERIAL_PORT_SVCLASS_ID);
	svc_class_list = sdp_list_append(0, &svc_class_uuid);
	sdp_set_service_classes(&record, svc_class_list);
	
	// set the Bluetooth profile information
	printf("[register_service] set the Bluetooth profile information\r\n");
	sdp_uuid16_create(&profile.uuid, SERIAL_PORT_PROFILE_ID);
	profile.version = 0x0100;
	profile_list = sdp_list_append(0, &profile);
	sdp_set_profile_descs(&record, profile_list);
	
	// make the service record publicly browsable
	printf("[register_service] make the service record publicly browsable\r\n");
	sdp_uuid16_create(&root_uuid, PUBLIC_BROWSE_GROUP);
	root_list = sdp_list_append(0, &root_uuid);
	sdp_set_browse_groups( &record, root_list );
	
	// set l2cap information
	printf("[register_service] set l2cap information\r\n");
	sdp_uuid16_create(&l2cap_uuid, L2CAP_UUID);
	l2cap_list = sdp_list_append( 0, &l2cap_uuid );
	proto_list = sdp_list_append( 0, l2cap_list );
	
	// register the RFCOMM channel for RFCOMM sockets
	printf("[register_service] register the RFCOMM channel for RFCOMM sockets\r\n");
	sdp_uuid16_create(&rfcomm_uuid, RFCOMM_UUID);
	channel = sdp_data_alloc(SDP_UINT8, &rfcomm_channel);
	rfcomm_list = sdp_list_append( 0, &rfcomm_uuid );
	sdp_list_append( rfcomm_list, channel );
	sdp_list_append( proto_list, rfcomm_list );
	access_proto_list = sdp_list_append( 0, proto_list );
	sdp_set_access_protos( &record, access_proto_list );
	
	// set the name, provider, and description
	printf("[register_service] set the name, provider, and description\r\n");
	sdp_set_info_attr(&record, service_name, service_prov, svc_dsc);
	
	// connect to the local SDP server, register the service record,
	// and disconnect
	printf("[register_service] connect to the local SDP server, register the service record and disconnect\r\n");
	session = sdp_connect(BDADDR_ANY, BDADDR_LOCAL, SDP_RETRY_IF_BUSY);
	printf("[register_service] sdp_record_register\r\n");
	sdp_record_register(session, &record, 0);
	
	// cleanup
	printf("[register_service] cleanup\r\n");
	sdp_data_free( channel );
	sdp_list_free( l2cap_list, 0 );
	sdp_list_free( rfcomm_list, 0 );
	sdp_list_free( root_list, 0 );
	sdp_list_free( access_proto_list, 0 );
	sdp_list_free( svc_class_list, 0 );
	sdp_list_free( profile_list, 0 );
	return session;
}

int rfcomm_listen(void) {
	struct sockaddr_rc loc_addr = { 0 }, rem_addr = { 0 };
	char buf[1024] = { 0 };
	int s, client, bytes_read;
	
	unsigned int opt = sizeof(rem_addr);
	
	// allocate socket
	printf("[rfcomm] allocate socket ...\r\n");
	s = socket(AF_BLUETOOTH, SOCK_STREAM, BTPROTO_RFCOMM);
	
	// bind socket to port 1 of the first available bluetooth adapter
	loc_addr.rc_family = AF_BLUETOOTH;
	loc_addr.rc_bdaddr = *BDADDR_ANY;
	loc_addr.rc_channel = MY_RF_CHANNEL ;
	printf("[rfcomm] bind socket ...\r\n");
	bind(s, (struct sockaddr *)&loc_addr, sizeof(loc_addr));
	
	// put socket into listening mode
	listen(s, 1);
	printf("[rfcomm]listen...\r\n");
	
	// accept one connection
	client = accept(s, (struct sockaddr *)&rem_addr, &opt);
	printf("[rfcomm]accept...\r\n");
	ba2str( &rem_addr.rc_bdaddr, buf );
	fprintf(stderr, "accepted connection from %s\n", buf);
	memset(buf, 0, sizeof(buf));
	
	// read data from the client
	bytes_read = recv(client, buf, sizeof(buf), 0);
	if( bytes_read > 0 ) {
		printf("received [%s]\n", buf);
	}
	close(client);
	close(s);
	return 0;
}

int main()	{
	sdp_session_t* session;
	
	session = register_service();
	if (!session){
		printf("failed to register rfcomm sdp\r\n");
		return 0;
	}
	rfcomm_listen();
	sdp_close( session );
	return 0;
}
