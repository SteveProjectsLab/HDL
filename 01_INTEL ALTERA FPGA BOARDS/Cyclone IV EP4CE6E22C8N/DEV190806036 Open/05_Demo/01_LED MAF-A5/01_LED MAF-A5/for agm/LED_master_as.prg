usb_connect
if { [as_device_id] } {
  as_write  ./LED_master.bin
  as_verify ./LED_master.bin
}
usb_close
