`timescale 1 ps/ 1 ps

module LED(
	led,
	clk);
output	[3:0] led;
input	clk;

//wire	gnd;
//wire	vcc;
wire	\Add0~0_combout ;
wire	\Add0~1 ;
wire	\Add0~10_combout ;
wire	\Add0~11 ;
wire	\Add0~12_combout ;
wire	\Add0~13 ;
wire	\Add0~14_combout ;
wire	\Add0~15 ;
wire	\Add0~16_combout ;
wire	\Add0~17 ;
wire	\Add0~18_combout ;
wire	\Add0~19 ;
wire	\Add0~20_combout ;
wire	\Add0~21 ;
wire	\Add0~22_combout ;
wire	\Add0~23 ;
wire	\Add0~24_combout ;
wire	\Add0~25 ;
wire	\Add0~26_combout ;
wire	\Add0~27 ;
wire	\Add0~28_combout ;
wire	\Add0~29 ;
wire	\Add0~2_combout ;
wire	\Add0~3 ;
wire	\Add0~30_combout ;
wire	\Add0~31 ;
wire	\Add0~32_combout ;
wire	\Add0~33 ;
wire	\Add0~34_combout ;
wire	\Add0~35 ;
wire	\Add0~36_combout ;
wire	\Add0~37 ;
wire	\Add0~38_combout ;
wire	\Add0~39 ;
wire	\Add0~40_combout ;
wire	\Add0~41 ;
wire	\Add0~42_combout ;
wire	\Add0~43 ;
wire	\Add0~44_combout ;
wire	\Add0~45 ;
wire	\Add0~46_combout ;
wire	\Add0~47 ;
wire	\Add0~48_combout ;
wire	\Add0~4_combout ;
wire	\Add0~5 ;
wire	\Add0~6_combout ;
wire	\Add0~7 ;
wire	\Add0~8_combout ;
wire	\Add0~9 ;
wire	AsyncReset_X28_Y22_GND;
wire	AsyncReset_X29_Y22_GND;
wire	AsyncReset_X29_Y23_GND;
wire	\Equal0~0_combout ;
wire	\Equal0~1_combout ;
wire	\Equal0~2_combout ;
wire	\Equal0~3_combout ;
wire	\Equal0~4_combout ;
wire	\Equal0~5_combout ;
wire	\Equal0~6_combout ;
wire	\Equal0~7_combout ;
wire	\Equal1~0_combout ;
wire	\clk~input_o ;
wire	\clk~inputclkctrl_outclk ;
wire	\clk~inputclkctrl_outclk_X28_Y22_SIG_VCC ;
wire	\clk~inputclkctrl_outclk_X29_Y22_SIG_VCC ;
wire	\clk~inputclkctrl_outclk_X29_Y23_SIG_VCC ;
wire	\clk~inputclkctrl_outclk__Equal0~7_combout_X28_Y22_SIG_SIG ;
wire	[24:0] counter;
//wire	counter[0];
//wire	counter[10];
//wire	counter[11];
//wire	counter[12];
//wire	counter[13];
//wire	counter[14];
//wire	counter[15];
//wire	counter[16];
//wire	counter[17];
//wire	counter[18];
//wire	counter[19];
//wire	counter[1];
//wire	counter[20];
//wire	counter[21];
//wire	counter[22];
//wire	counter[23];
//wire	counter[24];
//wire	counter[2];
//wire	counter[3];
//wire	counter[4];
//wire	counter[5];
//wire	counter[6];
//wire	counter[7];
//wire	counter[8];
//wire	counter[9];
wire	\counter~0_combout ;
wire	\counter~10_combout ;
wire	\counter~11_combout ;
wire	\counter~12_combout ;
wire	\counter~1_combout ;
wire	\counter~2_combout ;
wire	\counter~3_combout ;
wire	\counter~4_combout ;
wire	\counter~5_combout ;
wire	\counter~6_combout ;
wire	\counter~7_combout ;
wire	\counter~8_combout ;
wire	\counter~9_combout ;
tri1	devclrn;
tri1	devoe;
tri1	devpor;
wire	\led[0]~reg0_q ;
wire	\led[1]~reg0_q ;
wire	\led[2]~reg0_q ;
wire	\led[3]~reg0_q ;
wire	\led~0_combout ;
wire	\led~1_combout ;
wire	\led~2_combout ;
wire	unknown;

wire vcc;
wire gnd;
assign vcc = 1'b1;
assign gnd = 1'b0;

alta_slice \Add0~0 (
	.A(vcc),
	.B(counter[0]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~0_combout ),
	.Cout(\Add0~1 ),
	.Q());
defparam \Add0~0 .coord_x = 40;
defparam \Add0~0 .coord_y = 28;
defparam \Add0~0 .coord_z = 4;
defparam \Add0~0 .mask = 16'h33CC;
defparam \Add0~0 .modeMux = 1'b0;
defparam \Add0~0 .FeedbackMux = 1'b0;
defparam \Add0~0 .ShiftMux = 1'b0;
defparam \Add0~0 .BypassEn = 1'b0;
defparam \Add0~0 .CarryEnb = 1'b0;

alta_slice \Add0~12 (
	.A(counter[6]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~11 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~12_combout ),
	.Cout(\Add0~13 ),
	.Q());
defparam \Add0~12 .coord_x = 40;
defparam \Add0~12 .coord_y = 28;
defparam \Add0~12 .coord_z = 10;
defparam \Add0~12 .mask = 16'hA50A;
defparam \Add0~12 .modeMux = 1'b1;
defparam \Add0~12 .FeedbackMux = 1'b0;
defparam \Add0~12 .ShiftMux = 1'b0;
defparam \Add0~12 .BypassEn = 1'b0;
defparam \Add0~12 .CarryEnb = 1'b0;

alta_slice \Add0~22 (
	.A(counter[11]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~21 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~22_combout ),
	.Cout(\Add0~23 ),
	.Q());
defparam \Add0~22 .coord_x = 40;
defparam \Add0~22 .coord_y = 28;
defparam \Add0~22 .coord_z = 15;
defparam \Add0~22 .mask = 16'h5A5F;
defparam \Add0~22 .modeMux = 1'b1;
defparam \Add0~22 .FeedbackMux = 1'b0;
defparam \Add0~22 .ShiftMux = 1'b0;
defparam \Add0~22 .BypassEn = 1'b0;
defparam \Add0~22 .CarryEnb = 1'b0;

alta_slice \Add0~24 (
	.A(vcc),
	.B(counter[12]),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~23 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~24_combout ),
	.Cout(\Add0~25 ),
	.Q());
defparam \Add0~24 .coord_x = 40;
defparam \Add0~24 .coord_y = 27;
defparam \Add0~24 .coord_z = 0;
defparam \Add0~24 .mask = 16'hC30C;
defparam \Add0~24 .modeMux = 1'b1;
defparam \Add0~24 .FeedbackMux = 1'b0;
defparam \Add0~24 .ShiftMux = 1'b0;
defparam \Add0~24 .BypassEn = 1'b0;
defparam \Add0~24 .CarryEnb = 1'b0;

alta_slice \Add0~26 (
	.A(vcc),
	.B(counter[13]),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~25 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~26_combout ),
	.Cout(\Add0~27 ),
	.Q());
defparam \Add0~26 .coord_x = 40;
defparam \Add0~26 .coord_y = 27;
defparam \Add0~26 .coord_z = 1;
defparam \Add0~26 .mask = 16'h3C3F;
defparam \Add0~26 .modeMux = 1'b1;
defparam \Add0~26 .FeedbackMux = 1'b0;
defparam \Add0~26 .ShiftMux = 1'b0;
defparam \Add0~26 .BypassEn = 1'b0;
defparam \Add0~26 .CarryEnb = 1'b0;

alta_slice \Add0~28 (
	.A(vcc),
	.B(counter[14]),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~27 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~28_combout ),
	.Cout(\Add0~29 ),
	.Q());
defparam \Add0~28 .coord_x = 40;
defparam \Add0~28 .coord_y = 27;
defparam \Add0~28 .coord_z = 2;
defparam \Add0~28 .mask = 16'hC30C;
defparam \Add0~28 .modeMux = 1'b1;
defparam \Add0~28 .FeedbackMux = 1'b0;
defparam \Add0~28 .ShiftMux = 1'b0;
defparam \Add0~28 .BypassEn = 1'b0;
defparam \Add0~28 .CarryEnb = 1'b0;

alta_slice \Add0~32 (
	.A(counter[16]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~31 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~32_combout ),
	.Cout(\Add0~33 ),
	.Q());
defparam \Add0~32 .coord_x = 40;
defparam \Add0~32 .coord_y = 27;
defparam \Add0~32 .coord_z = 4;
defparam \Add0~32 .mask = 16'hA50A;
defparam \Add0~32 .modeMux = 1'b1;
defparam \Add0~32 .FeedbackMux = 1'b0;
defparam \Add0~32 .ShiftMux = 1'b0;
defparam \Add0~32 .BypassEn = 1'b0;
defparam \Add0~32 .CarryEnb = 1'b0;

alta_slice \Add0~36 (
	.A(vcc),
	.B(counter[18]),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~35 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~36_combout ),
	.Cout(\Add0~37 ),
	.Q());
defparam \Add0~36 .coord_x = 40;
defparam \Add0~36 .coord_y = 27;
defparam \Add0~36 .coord_z = 6;
defparam \Add0~36 .mask = 16'hC30C;
defparam \Add0~36 .modeMux = 1'b1;
defparam \Add0~36 .FeedbackMux = 1'b0;
defparam \Add0~36 .ShiftMux = 1'b0;
defparam \Add0~36 .BypassEn = 1'b0;
defparam \Add0~36 .CarryEnb = 1'b0;

alta_slice \Add0~38 (
	.A(vcc),
	.B(counter[19]),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~37 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~38_combout ),
	.Cout(\Add0~39 ),
	.Q());
defparam \Add0~38 .coord_x = 40;
defparam \Add0~38 .coord_y = 27;
defparam \Add0~38 .coord_z = 7;
defparam \Add0~38 .mask = 16'h3C3F;
defparam \Add0~38 .modeMux = 1'b1;
defparam \Add0~38 .FeedbackMux = 1'b0;
defparam \Add0~38 .ShiftMux = 1'b0;
defparam \Add0~38 .BypassEn = 1'b0;
defparam \Add0~38 .CarryEnb = 1'b0;

alta_slice \Add0~40 (
	.A(counter[20]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~39 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~40_combout ),
	.Cout(\Add0~41 ),
	.Q());
defparam \Add0~40 .coord_x = 40;
defparam \Add0~40 .coord_y = 27;
defparam \Add0~40 .coord_z = 8;
defparam \Add0~40 .mask = 16'hA50A;
defparam \Add0~40 .modeMux = 1'b1;
defparam \Add0~40 .FeedbackMux = 1'b0;
defparam \Add0~40 .ShiftMux = 1'b0;
defparam \Add0~40 .BypassEn = 1'b0;
defparam \Add0~40 .CarryEnb = 1'b0;

alta_slice \Add0~42 (
	.A(vcc),
	.B(counter[21]),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~41 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~42_combout ),
	.Cout(\Add0~43 ),
	.Q());
defparam \Add0~42 .coord_x = 40;
defparam \Add0~42 .coord_y = 27;
defparam \Add0~42 .coord_z = 9;
defparam \Add0~42 .mask = 16'h3C3F;
defparam \Add0~42 .modeMux = 1'b1;
defparam \Add0~42 .FeedbackMux = 1'b0;
defparam \Add0~42 .ShiftMux = 1'b0;
defparam \Add0~42 .BypassEn = 1'b0;
defparam \Add0~42 .CarryEnb = 1'b0;

alta_slice \Add0~44 (
	.A(counter[22]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~43 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~44_combout ),
	.Cout(\Add0~45 ),
	.Q());
defparam \Add0~44 .coord_x = 40;
defparam \Add0~44 .coord_y = 27;
defparam \Add0~44 .coord_z = 10;
defparam \Add0~44 .mask = 16'hA50A;
defparam \Add0~44 .modeMux = 1'b1;
defparam \Add0~44 .FeedbackMux = 1'b0;
defparam \Add0~44 .ShiftMux = 1'b0;
defparam \Add0~44 .BypassEn = 1'b0;
defparam \Add0~44 .CarryEnb = 1'b0;

alta_slice \Add0~48 (
	.A(counter[24]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~47 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~48_combout ),
	.Cout(),
	.Q());
defparam \Add0~48 .coord_x = 40;
defparam \Add0~48 .coord_y = 27;
defparam \Add0~48 .coord_z = 12;
defparam \Add0~48 .mask = 16'hA5A5;
defparam \Add0~48 .modeMux = 1'b1;
defparam \Add0~48 .FeedbackMux = 1'b0;
defparam \Add0~48 .ShiftMux = 1'b0;
defparam \Add0~48 .BypassEn = 1'b0;
defparam \Add0~48 .CarryEnb = 1'b1;

alta_slice \Equal0~0 (
	.A(counter[0]),
	.B(counter[1]),
	.C(counter[2]),
	.D(counter[3]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Equal0~0_combout ),
	.Cout(),
	.Q());
defparam \Equal0~0 .coord_x = 39;
defparam \Equal0~0 .coord_y = 28;
defparam \Equal0~0 .coord_z = 11;
defparam \Equal0~0 .mask = 16'h0001;
defparam \Equal0~0 .modeMux = 1'b0;
defparam \Equal0~0 .FeedbackMux = 1'b0;
defparam \Equal0~0 .ShiftMux = 1'b0;
defparam \Equal0~0 .BypassEn = 1'b0;
defparam \Equal0~0 .CarryEnb = 1'b1;

alta_slice \Equal0~1 (
	.A(counter[7]),
	.B(counter[6]),
	.C(counter[4]),
	.D(counter[5]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Equal0~1_combout ),
	.Cout(),
	.Q());
defparam \Equal0~1 .coord_x = 39;
defparam \Equal0~1 .coord_y = 28;
defparam \Equal0~1 .coord_z = 3;
defparam \Equal0~1 .mask = 16'h0004;
defparam \Equal0~1 .modeMux = 1'b0;
defparam \Equal0~1 .FeedbackMux = 1'b0;
defparam \Equal0~1 .ShiftMux = 1'b0;
defparam \Equal0~1 .BypassEn = 1'b0;
defparam \Equal0~1 .CarryEnb = 1'b1;

alta_slice \Equal0~2 (
	.A(counter[11]),
	.B(counter[10]),
	.C(counter[9]),
	.D(counter[8]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Equal0~2_combout ),
	.Cout(),
	.Q());
defparam \Equal0~2 .coord_x = 40;
defparam \Equal0~2 .coord_y = 28;
defparam \Equal0~2 .coord_z = 1;
defparam \Equal0~2 .mask = 16'h0002;
defparam \Equal0~2 .modeMux = 1'b0;
defparam \Equal0~2 .FeedbackMux = 1'b0;
defparam \Equal0~2 .ShiftMux = 1'b0;
defparam \Equal0~2 .BypassEn = 1'b0;
defparam \Equal0~2 .CarryEnb = 1'b1;

alta_slice \Equal0~3 (
	.A(counter[13]),
	.B(counter[12]),
	.C(counter[15]),
	.D(counter[14]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Equal0~3_combout ),
	.Cout(),
	.Q());
defparam \Equal0~3 .coord_x = 39;
defparam \Equal0~3 .coord_y = 27;
defparam \Equal0~3 .coord_z = 9;
defparam \Equal0~3 .mask = 16'h0800;
defparam \Equal0~3 .modeMux = 1'b0;
defparam \Equal0~3 .FeedbackMux = 1'b0;
defparam \Equal0~3 .ShiftMux = 1'b0;
defparam \Equal0~3 .BypassEn = 1'b0;
defparam \Equal0~3 .CarryEnb = 1'b1;

alta_slice \Equal0~4 (
	.A(\Equal0~0_combout ),
	.B(\Equal0~1_combout ),
	.C(\Equal0~2_combout ),
	.D(\Equal0~3_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Equal0~4_combout ),
	.Cout(),
	.Q());
defparam \Equal0~4 .coord_x = 39;
defparam \Equal0~4 .coord_y = 27;
defparam \Equal0~4 .coord_z = 13;
defparam \Equal0~4 .mask = 16'h8000;
defparam \Equal0~4 .modeMux = 1'b0;
defparam \Equal0~4 .FeedbackMux = 1'b0;
defparam \Equal0~4 .ShiftMux = 1'b0;
defparam \Equal0~4 .BypassEn = 1'b0;
defparam \Equal0~4 .CarryEnb = 1'b1;

alta_slice \Equal0~5 (
	.A(counter[19]),
	.B(counter[17]),
	.C(counter[16]),
	.D(counter[18]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Equal0~5_combout ),
	.Cout(),
	.Q());
defparam \Equal0~5 .coord_x = 39;
defparam \Equal0~5 .coord_y = 27;
defparam \Equal0~5 .coord_z = 0;
defparam \Equal0~5 .mask = 16'h2000;
defparam \Equal0~5 .modeMux = 1'b0;
defparam \Equal0~5 .FeedbackMux = 1'b0;
defparam \Equal0~5 .ShiftMux = 1'b0;
defparam \Equal0~5 .BypassEn = 1'b0;
defparam \Equal0~5 .CarryEnb = 1'b1;

alta_slice \Equal0~6 (
	.A(counter[20]),
	.B(counter[21]),
	.C(counter[23]),
	.D(counter[22]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Equal0~6_combout ),
	.Cout(),
	.Q());
defparam \Equal0~6 .coord_x = 39;
defparam \Equal0~6 .coord_y = 27;
defparam \Equal0~6 .coord_z = 4;
defparam \Equal0~6 .mask = 16'h0800;
defparam \Equal0~6 .modeMux = 1'b0;
defparam \Equal0~6 .FeedbackMux = 1'b0;
defparam \Equal0~6 .ShiftMux = 1'b0;
defparam \Equal0~6 .BypassEn = 1'b0;
defparam \Equal0~6 .CarryEnb = 1'b1;

alta_slice \Equal0~7 (
	.A(\Equal0~6_combout ),
	.B(counter[24]),
	.C(\Equal0~5_combout ),
	.D(\Equal0~4_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Equal0~7_combout ),
	.Cout(),
	.Q());
defparam \Equal0~7 .coord_x = 39;
defparam \Equal0~7 .coord_y = 27;
defparam \Equal0~7 .coord_z = 5;
defparam \Equal0~7 .mask = 16'h8000;
defparam \Equal0~7 .modeMux = 1'b0;
defparam \Equal0~7 .FeedbackMux = 1'b0;
defparam \Equal0~7 .ShiftMux = 1'b0;
defparam \Equal0~7 .BypassEn = 1'b0;
defparam \Equal0~7 .CarryEnb = 1'b1;

alta_asyncctrl asyncreset_ctrl_X28_Y22_N0(
	.Din(),
	.Dout(AsyncReset_X28_Y22_GND));
defparam asyncreset_ctrl_X28_Y22_N0.coord_x = 39;
defparam asyncreset_ctrl_X28_Y22_N0.coord_y = 27;
defparam asyncreset_ctrl_X28_Y22_N0.coord_z = 0;
defparam asyncreset_ctrl_X28_Y22_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X29_Y22_N0(
	.Din(),
	.Dout(AsyncReset_X29_Y22_GND));
defparam asyncreset_ctrl_X29_Y22_N0.coord_x = 40;
defparam asyncreset_ctrl_X29_Y22_N0.coord_y = 27;
defparam asyncreset_ctrl_X29_Y22_N0.coord_z = 0;
defparam asyncreset_ctrl_X29_Y22_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X29_Y23_N0(
	.Din(),
	.Dout(AsyncReset_X29_Y23_GND));
defparam asyncreset_ctrl_X29_Y23_N0.coord_x = 40;
defparam asyncreset_ctrl_X29_Y23_N0.coord_y = 28;
defparam asyncreset_ctrl_X29_Y23_N0.coord_z = 0;
defparam asyncreset_ctrl_X29_Y23_N0.AsyncCtrlMux = 2'b00;

alta_clkenctrl clken_ctrl_X28_Y22_N0(
	.ClkIn(\clk~inputclkctrl_outclk ),
	.ClkEn(\Equal0~7_combout ),
	.ClkOut(\clk~inputclkctrl_outclk__Equal0~7_combout_X28_Y22_SIG_SIG ));
defparam clken_ctrl_X28_Y22_N0.coord_x = 39;
defparam clken_ctrl_X28_Y22_N0.coord_y = 27;
defparam clken_ctrl_X28_Y22_N0.coord_z = 0;
defparam clken_ctrl_X28_Y22_N0.ClkMux = 2'b10;
defparam clken_ctrl_X28_Y22_N0.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X28_Y22_N1(
	.ClkIn(\clk~inputclkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\clk~inputclkctrl_outclk_X28_Y22_SIG_VCC ));
defparam clken_ctrl_X28_Y22_N1.coord_x = 39;
defparam clken_ctrl_X28_Y22_N1.coord_y = 27;
defparam clken_ctrl_X28_Y22_N1.coord_z = 1;
defparam clken_ctrl_X28_Y22_N1.ClkMux = 2'b10;
defparam clken_ctrl_X28_Y22_N1.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X29_Y22_N0(
	.ClkIn(\clk~inputclkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\clk~inputclkctrl_outclk_X29_Y22_SIG_VCC ));
defparam clken_ctrl_X29_Y22_N0.coord_x = 40;
defparam clken_ctrl_X29_Y22_N0.coord_y = 27;
defparam clken_ctrl_X29_Y22_N0.coord_z = 0;
defparam clken_ctrl_X29_Y22_N0.ClkMux = 2'b10;
defparam clken_ctrl_X29_Y22_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X29_Y23_N0(
	.ClkIn(\clk~inputclkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\clk~inputclkctrl_outclk_X29_Y23_SIG_VCC ));
defparam clken_ctrl_X29_Y23_N0.coord_x = 40;
defparam clken_ctrl_X29_Y23_N0.coord_y = 28;
defparam clken_ctrl_X29_Y23_N0.coord_z = 0;
defparam clken_ctrl_X29_Y23_N0.ClkMux = 2'b10;
defparam clken_ctrl_X29_Y23_N0.ClkEnMux = 2'b01;

alta_dio \clk~input (
	.padio(clk),
	.datain(gnd),
	.datainh(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\clk~input_o ),
	.regout());
defparam \clk~input .coord_x = 0;
defparam \clk~input .coord_y = 12;
defparam \clk~input .coord_z = 0;
defparam \clk~input .IN_ASYNC_MODE = 1'b0;
defparam \clk~input .IN_SYNC_MODE = 1'b0;
defparam \clk~input .IN_POWERUP = 1'b0;
defparam \clk~input .IN_ASYNC_DISABLE = 1'b0;
defparam \clk~input .IN_SYNC_DISABLE = 1'b0;
defparam \clk~input .OUT_REG_MODE = 1'b0;
defparam \clk~input .OUT_ASYNC_MODE = 1'b0;
defparam \clk~input .OUT_SYNC_MODE = 1'b0;
defparam \clk~input .OUT_POWERUP = 1'b0;
defparam \clk~input .OUT_CLKEN_DISABLE = 1'b0;
defparam \clk~input .OUT_ASYNC_DISABLE = 1'b0;
defparam \clk~input .OUT_SYNC_DISABLE = 1'b0;
defparam \clk~input .OUT_DDIO = 1'b0;
defparam \clk~input .OE_REG_MODE = 1'b0;
defparam \clk~input .OE_ASYNC_MODE = 1'b0;
defparam \clk~input .OE_SYNC_MODE = 1'b0;
defparam \clk~input .OE_POWERUP = 1'b0;
defparam \clk~input .OE_CLKEN_DISABLE = 1'b0;
defparam \clk~input .OE_ASYNC_DISABLE = 1'b0;
defparam \clk~input .OE_SYNC_DISABLE = 1'b0;
defparam \clk~input .OE_DDIO = 1'b0;
defparam \clk~input .CFG_TRI_INPUT = 1'b0;
defparam \clk~input .CFG_PULL_UP = 1'b0;
defparam \clk~input .CFG_OPEN_DRAIN = 1'b0;
defparam \clk~input .CFG_ROCT_CAL_EN = 1'b0;
defparam \clk~input .CFG_PDRV = 7'b0010000;
defparam \clk~input .CFG_NDRV = 7'b0010000;
defparam \clk~input .CFG_KEEP = 2'b00;
defparam \clk~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \clk~input .CFG_LVDS_SEL_CUA = 3'b000;
defparam \clk~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \clk~input .CFG_LVDS_IN_EN = 1'b0;
defparam \clk~input .CFG_SSTL_OUT_EN = 1'b0;
defparam \clk~input .CFG_SSTL_INPUT_EN = 1'b0;
defparam \clk~input .CFG_SSTL_SEL_CUA = 3'b011;
defparam \clk~input .CFG_OSCDIV = 2'b00;
defparam \clk~input .CFG_ROCTUSR = 1'b0;
defparam \clk~input .CFG_SEL_CUA = 1'b0;
defparam \clk~input .CFG_ROCT_EN = 1'b0;
defparam \clk~input .DPCLK_DELAY = 4'b0000;
defparam \clk~input .OUT_DELAY = 1'b0;
defparam \clk~input .IN_DATA_DELAY = 3'b000;
defparam \clk~input .IN_REG_DELAY = 3'b000;

alta_io_gclk \clk~inputclkctrl (
	.inclk(\clk~input_o ),
	.outclk(\clk~inputclkctrl_outclk ));
defparam \clk~inputclkctrl .coord_x = 0;
defparam \clk~inputclkctrl .coord_y = 12;
defparam \clk~inputclkctrl .coord_z = 1;

alta_slice \counter[0] (
	.A(vcc),
	.B(vcc),
	.C(\Add0~0_combout ),
	.D(\Equal0~7_combout ),
	.Cin(),
	.Qin(counter[0]),
	.Clk(\clk~inputclkctrl_outclk_X29_Y23_SIG_VCC ),
	.AsyncReset(AsyncReset_X29_Y23_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\counter~0_combout ),
	.Cout(),
	.Q(counter[0]));
defparam \counter[0] .coord_x = 40;
defparam \counter[0] .coord_y = 28;
defparam \counter[0] .coord_z = 2;
defparam \counter[0] .mask = 16'h00F0;
defparam \counter[0] .modeMux = 1'b0;
defparam \counter[0] .FeedbackMux = 1'b0;
defparam \counter[0] .ShiftMux = 1'b0;
defparam \counter[0] .BypassEn = 1'b0;
defparam \counter[0] .CarryEnb = 1'b1;

alta_slice \counter[10] (
	.A(vcc),
	.B(counter[10]),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~19 ),
	.Qin(counter[10]),
	.Clk(\clk~inputclkctrl_outclk_X29_Y23_SIG_VCC ),
	.AsyncReset(AsyncReset_X29_Y23_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~20_combout ),
	.Cout(\Add0~21 ),
	.Q(counter[10]));
defparam \counter[10] .coord_x = 40;
defparam \counter[10] .coord_y = 28;
defparam \counter[10] .coord_z = 14;
defparam \counter[10] .mask = 16'hC30C;
defparam \counter[10] .modeMux = 1'b1;
defparam \counter[10] .FeedbackMux = 1'b0;
defparam \counter[10] .ShiftMux = 1'b0;
defparam \counter[10] .BypassEn = 1'b0;
defparam \counter[10] .CarryEnb = 1'b0;

alta_slice \counter[11] (
	.A(vcc),
	.B(vcc),
	.C(\Add0~22_combout ),
	.D(\Equal0~7_combout ),
	.Cin(),
	.Qin(counter[11]),
	.Clk(\clk~inputclkctrl_outclk_X29_Y23_SIG_VCC ),
	.AsyncReset(AsyncReset_X29_Y23_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\counter~2_combout ),
	.Cout(),
	.Q(counter[11]));
defparam \counter[11] .coord_x = 40;
defparam \counter[11] .coord_y = 28;
defparam \counter[11] .coord_z = 0;
defparam \counter[11] .mask = 16'h00F0;
defparam \counter[11] .modeMux = 1'b0;
defparam \counter[11] .FeedbackMux = 1'b0;
defparam \counter[11] .ShiftMux = 1'b0;
defparam \counter[11] .BypassEn = 1'b0;
defparam \counter[11] .CarryEnb = 1'b1;

alta_slice \counter[12] (
	.A(\Equal0~7_combout ),
	.B(vcc),
	.C(vcc),
	.D(\Add0~24_combout ),
	.Cin(),
	.Qin(counter[12]),
	.Clk(\clk~inputclkctrl_outclk_X28_Y22_SIG_VCC ),
	.AsyncReset(AsyncReset_X28_Y22_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\counter~3_combout ),
	.Cout(),
	.Q(counter[12]));
defparam \counter[12] .coord_x = 39;
defparam \counter[12] .coord_y = 27;
defparam \counter[12] .coord_z = 12;
defparam \counter[12] .mask = 16'h5500;
defparam \counter[12] .modeMux = 1'b0;
defparam \counter[12] .FeedbackMux = 1'b0;
defparam \counter[12] .ShiftMux = 1'b0;
defparam \counter[12] .BypassEn = 1'b0;
defparam \counter[12] .CarryEnb = 1'b1;

alta_slice \counter[13] (
	.A(\Equal0~7_combout ),
	.B(vcc),
	.C(\Add0~26_combout ),
	.D(vcc),
	.Cin(),
	.Qin(counter[13]),
	.Clk(\clk~inputclkctrl_outclk_X28_Y22_SIG_VCC ),
	.AsyncReset(AsyncReset_X28_Y22_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\counter~4_combout ),
	.Cout(),
	.Q(counter[13]));
defparam \counter[13] .coord_x = 39;
defparam \counter[13] .coord_y = 27;
defparam \counter[13] .coord_z = 3;
defparam \counter[13] .mask = 16'h5050;
defparam \counter[13] .modeMux = 1'b0;
defparam \counter[13] .FeedbackMux = 1'b0;
defparam \counter[13] .ShiftMux = 1'b0;
defparam \counter[13] .BypassEn = 1'b0;
defparam \counter[13] .CarryEnb = 1'b1;

alta_slice \counter[14] (
	.A(\Equal0~7_combout ),
	.B(\Add0~28_combout ),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(counter[14]),
	.Clk(\clk~inputclkctrl_outclk_X28_Y22_SIG_VCC ),
	.AsyncReset(AsyncReset_X28_Y22_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\counter~5_combout ),
	.Cout(),
	.Q(counter[14]));
defparam \counter[14] .coord_x = 39;
defparam \counter[14] .coord_y = 27;
defparam \counter[14] .coord_z = 8;
defparam \counter[14] .mask = 16'h4444;
defparam \counter[14] .modeMux = 1'b0;
defparam \counter[14] .FeedbackMux = 1'b0;
defparam \counter[14] .ShiftMux = 1'b0;
defparam \counter[14] .BypassEn = 1'b0;
defparam \counter[14] .CarryEnb = 1'b1;

alta_slice \counter[15] (
	.A(counter[15]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~29 ),
	.Qin(counter[15]),
	.Clk(\clk~inputclkctrl_outclk_X29_Y22_SIG_VCC ),
	.AsyncReset(AsyncReset_X29_Y22_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~30_combout ),
	.Cout(\Add0~31 ),
	.Q(counter[15]));
defparam \counter[15] .coord_x = 40;
defparam \counter[15] .coord_y = 27;
defparam \counter[15] .coord_z = 3;
defparam \counter[15] .mask = 16'h5A5F;
defparam \counter[15] .modeMux = 1'b1;
defparam \counter[15] .FeedbackMux = 1'b0;
defparam \counter[15] .ShiftMux = 1'b0;
defparam \counter[15] .BypassEn = 1'b0;
defparam \counter[15] .CarryEnb = 1'b0;

alta_slice \counter[16] (
	.A(vcc),
	.B(vcc),
	.C(\Add0~32_combout ),
	.D(\Equal0~7_combout ),
	.Cin(),
	.Qin(counter[16]),
	.Clk(\clk~inputclkctrl_outclk_X29_Y22_SIG_VCC ),
	.AsyncReset(AsyncReset_X29_Y22_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\counter~6_combout ),
	.Cout(),
	.Q(counter[16]));
defparam \counter[16] .coord_x = 40;
defparam \counter[16] .coord_y = 27;
defparam \counter[16] .coord_z = 15;
defparam \counter[16] .mask = 16'h00F0;
defparam \counter[16] .modeMux = 1'b0;
defparam \counter[16] .FeedbackMux = 1'b0;
defparam \counter[16] .ShiftMux = 1'b0;
defparam \counter[16] .BypassEn = 1'b0;
defparam \counter[16] .CarryEnb = 1'b1;

alta_slice \counter[17] (
	.A(counter[17]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~33 ),
	.Qin(counter[17]),
	.Clk(\clk~inputclkctrl_outclk_X29_Y22_SIG_VCC ),
	.AsyncReset(AsyncReset_X29_Y22_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~34_combout ),
	.Cout(\Add0~35 ),
	.Q(counter[17]));
defparam \counter[17] .coord_x = 40;
defparam \counter[17] .coord_y = 27;
defparam \counter[17] .coord_z = 5;
defparam \counter[17] .mask = 16'h5A5F;
defparam \counter[17] .modeMux = 1'b1;
defparam \counter[17] .FeedbackMux = 1'b0;
defparam \counter[17] .ShiftMux = 1'b0;
defparam \counter[17] .BypassEn = 1'b0;
defparam \counter[17] .CarryEnb = 1'b0;

alta_slice \counter[18] (
	.A(\Add0~36_combout ),
	.B(vcc),
	.C(vcc),
	.D(\Equal0~7_combout ),
	.Cin(),
	.Qin(counter[18]),
	.Clk(\clk~inputclkctrl_outclk_X29_Y22_SIG_VCC ),
	.AsyncReset(AsyncReset_X29_Y22_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\counter~7_combout ),
	.Cout(),
	.Q(counter[18]));
defparam \counter[18] .coord_x = 40;
defparam \counter[18] .coord_y = 27;
defparam \counter[18] .coord_z = 14;
defparam \counter[18] .mask = 16'h00AA;
defparam \counter[18] .modeMux = 1'b0;
defparam \counter[18] .FeedbackMux = 1'b0;
defparam \counter[18] .ShiftMux = 1'b0;
defparam \counter[18] .BypassEn = 1'b0;
defparam \counter[18] .CarryEnb = 1'b1;

alta_slice \counter[19] (
	.A(\Equal0~7_combout ),
	.B(vcc),
	.C(\Add0~38_combout ),
	.D(vcc),
	.Cin(),
	.Qin(counter[19]),
	.Clk(\clk~inputclkctrl_outclk_X28_Y22_SIG_VCC ),
	.AsyncReset(AsyncReset_X28_Y22_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\counter~8_combout ),
	.Cout(),
	.Q(counter[19]));
defparam \counter[19] .coord_x = 39;
defparam \counter[19] .coord_y = 27;
defparam \counter[19] .coord_z = 6;
defparam \counter[19] .mask = 16'h5050;
defparam \counter[19] .modeMux = 1'b0;
defparam \counter[19] .FeedbackMux = 1'b0;
defparam \counter[19] .ShiftMux = 1'b0;
defparam \counter[19] .BypassEn = 1'b0;
defparam \counter[19] .CarryEnb = 1'b1;

alta_slice \counter[1] (
	.A(counter[1]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~1 ),
	.Qin(counter[1]),
	.Clk(\clk~inputclkctrl_outclk_X29_Y23_SIG_VCC ),
	.AsyncReset(AsyncReset_X29_Y23_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~2_combout ),
	.Cout(\Add0~3 ),
	.Q(counter[1]));
defparam \counter[1] .coord_x = 40;
defparam \counter[1] .coord_y = 28;
defparam \counter[1] .coord_z = 5;
defparam \counter[1] .mask = 16'h5A5F;
defparam \counter[1] .modeMux = 1'b1;
defparam \counter[1] .FeedbackMux = 1'b0;
defparam \counter[1] .ShiftMux = 1'b0;
defparam \counter[1] .BypassEn = 1'b0;
defparam \counter[1] .CarryEnb = 1'b0;

alta_slice \counter[20] (
	.A(\Equal0~7_combout ),
	.B(vcc),
	.C(vcc),
	.D(\Add0~40_combout ),
	.Cin(),
	.Qin(counter[20]),
	.Clk(\clk~inputclkctrl_outclk_X28_Y22_SIG_VCC ),
	.AsyncReset(AsyncReset_X28_Y22_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\counter~10_combout ),
	.Cout(),
	.Q(counter[20]));
defparam \counter[20] .coord_x = 39;
defparam \counter[20] .coord_y = 27;
defparam \counter[20] .coord_z = 1;
defparam \counter[20] .mask = 16'h5500;
defparam \counter[20] .modeMux = 1'b0;
defparam \counter[20] .FeedbackMux = 1'b0;
defparam \counter[20] .ShiftMux = 1'b0;
defparam \counter[20] .BypassEn = 1'b0;
defparam \counter[20] .CarryEnb = 1'b1;

alta_slice \counter[21] (
	.A(\Equal0~7_combout ),
	.B(vcc),
	.C(\Add0~42_combout ),
	.D(vcc),
	.Cin(),
	.Qin(counter[21]),
	.Clk(\clk~inputclkctrl_outclk_X28_Y22_SIG_VCC ),
	.AsyncReset(AsyncReset_X28_Y22_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\counter~11_combout ),
	.Cout(),
	.Q(counter[21]));
defparam \counter[21] .coord_x = 39;
defparam \counter[21] .coord_y = 27;
defparam \counter[21] .coord_z = 10;
defparam \counter[21] .mask = 16'h5050;
defparam \counter[21] .modeMux = 1'b0;
defparam \counter[21] .FeedbackMux = 1'b0;
defparam \counter[21] .ShiftMux = 1'b0;
defparam \counter[21] .BypassEn = 1'b0;
defparam \counter[21] .CarryEnb = 1'b1;

alta_slice \counter[22] (
	.A(\Equal0~7_combout ),
	.B(\Add0~44_combout ),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(counter[22]),
	.Clk(\clk~inputclkctrl_outclk_X28_Y22_SIG_VCC ),
	.AsyncReset(AsyncReset_X28_Y22_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\counter~12_combout ),
	.Cout(),
	.Q(counter[22]));
defparam \counter[22] .coord_x = 39;
defparam \counter[22] .coord_y = 27;
defparam \counter[22] .coord_z = 14;
defparam \counter[22] .mask = 16'h4444;
defparam \counter[22] .modeMux = 1'b0;
defparam \counter[22] .FeedbackMux = 1'b0;
defparam \counter[22] .ShiftMux = 1'b0;
defparam \counter[22] .BypassEn = 1'b0;
defparam \counter[22] .CarryEnb = 1'b1;

alta_slice \counter[23] (
	.A(counter[23]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~45 ),
	.Qin(counter[23]),
	.Clk(\clk~inputclkctrl_outclk_X29_Y22_SIG_VCC ),
	.AsyncReset(AsyncReset_X29_Y22_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~46_combout ),
	.Cout(\Add0~47 ),
	.Q(counter[23]));
defparam \counter[23] .coord_x = 40;
defparam \counter[23] .coord_y = 27;
defparam \counter[23] .coord_z = 11;
defparam \counter[23] .mask = 16'h5A5F;
defparam \counter[23] .modeMux = 1'b1;
defparam \counter[23] .FeedbackMux = 1'b0;
defparam \counter[23] .ShiftMux = 1'b0;
defparam \counter[23] .BypassEn = 1'b0;
defparam \counter[23] .CarryEnb = 1'b0;

alta_slice \counter[24] (
	.A(vcc),
	.B(vcc),
	.C(\Add0~48_combout ),
	.D(\Equal0~7_combout ),
	.Cin(),
	.Qin(counter[24]),
	.Clk(\clk~inputclkctrl_outclk_X29_Y22_SIG_VCC ),
	.AsyncReset(AsyncReset_X29_Y22_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\counter~9_combout ),
	.Cout(),
	.Q(counter[24]));
defparam \counter[24] .coord_x = 40;
defparam \counter[24] .coord_y = 27;
defparam \counter[24] .coord_z = 13;
defparam \counter[24] .mask = 16'h00F0;
defparam \counter[24] .modeMux = 1'b0;
defparam \counter[24] .FeedbackMux = 1'b0;
defparam \counter[24] .ShiftMux = 1'b0;
defparam \counter[24] .BypassEn = 1'b0;
defparam \counter[24] .CarryEnb = 1'b1;

alta_slice \counter[2] (
	.A(counter[2]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~3 ),
	.Qin(counter[2]),
	.Clk(\clk~inputclkctrl_outclk_X29_Y23_SIG_VCC ),
	.AsyncReset(AsyncReset_X29_Y23_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~4_combout ),
	.Cout(\Add0~5 ),
	.Q(counter[2]));
defparam \counter[2] .coord_x = 40;
defparam \counter[2] .coord_y = 28;
defparam \counter[2] .coord_z = 6;
defparam \counter[2] .mask = 16'hA50A;
defparam \counter[2] .modeMux = 1'b1;
defparam \counter[2] .FeedbackMux = 1'b0;
defparam \counter[2] .ShiftMux = 1'b0;
defparam \counter[2] .BypassEn = 1'b0;
defparam \counter[2] .CarryEnb = 1'b0;

alta_slice \counter[3] (
	.A(vcc),
	.B(counter[3]),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~5 ),
	.Qin(counter[3]),
	.Clk(\clk~inputclkctrl_outclk_X29_Y23_SIG_VCC ),
	.AsyncReset(AsyncReset_X29_Y23_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~6_combout ),
	.Cout(\Add0~7 ),
	.Q(counter[3]));
defparam \counter[3] .coord_x = 40;
defparam \counter[3] .coord_y = 28;
defparam \counter[3] .coord_z = 7;
defparam \counter[3] .mask = 16'h3C3F;
defparam \counter[3] .modeMux = 1'b1;
defparam \counter[3] .FeedbackMux = 1'b0;
defparam \counter[3] .ShiftMux = 1'b0;
defparam \counter[3] .BypassEn = 1'b0;
defparam \counter[3] .CarryEnb = 1'b0;

alta_slice \counter[4] (
	.A(vcc),
	.B(counter[4]),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~7 ),
	.Qin(counter[4]),
	.Clk(\clk~inputclkctrl_outclk_X29_Y23_SIG_VCC ),
	.AsyncReset(AsyncReset_X29_Y23_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~8_combout ),
	.Cout(\Add0~9 ),
	.Q(counter[4]));
defparam \counter[4] .coord_x = 40;
defparam \counter[4] .coord_y = 28;
defparam \counter[4] .coord_z = 8;
defparam \counter[4] .mask = 16'hC30C;
defparam \counter[4] .modeMux = 1'b1;
defparam \counter[4] .FeedbackMux = 1'b0;
defparam \counter[4] .ShiftMux = 1'b0;
defparam \counter[4] .BypassEn = 1'b0;
defparam \counter[4] .CarryEnb = 1'b0;

alta_slice \counter[5] (
	.A(vcc),
	.B(counter[5]),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~9 ),
	.Qin(counter[5]),
	.Clk(\clk~inputclkctrl_outclk_X29_Y23_SIG_VCC ),
	.AsyncReset(AsyncReset_X29_Y23_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~10_combout ),
	.Cout(\Add0~11 ),
	.Q(counter[5]));
defparam \counter[5] .coord_x = 40;
defparam \counter[5] .coord_y = 28;
defparam \counter[5] .coord_z = 9;
defparam \counter[5] .mask = 16'h3C3F;
defparam \counter[5] .modeMux = 1'b1;
defparam \counter[5] .FeedbackMux = 1'b0;
defparam \counter[5] .ShiftMux = 1'b0;
defparam \counter[5] .BypassEn = 1'b0;
defparam \counter[5] .CarryEnb = 1'b0;

alta_slice \counter[6] (
	.A(vcc),
	.B(\Add0~12_combout ),
	.C(vcc),
	.D(\Equal0~7_combout ),
	.Cin(),
	.Qin(counter[6]),
	.Clk(\clk~inputclkctrl_outclk_X29_Y23_SIG_VCC ),
	.AsyncReset(AsyncReset_X29_Y23_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\counter~1_combout ),
	.Cout(),
	.Q(counter[6]));
defparam \counter[6] .coord_x = 40;
defparam \counter[6] .coord_y = 28;
defparam \counter[6] .coord_z = 3;
defparam \counter[6] .mask = 16'h00CC;
defparam \counter[6] .modeMux = 1'b0;
defparam \counter[6] .FeedbackMux = 1'b0;
defparam \counter[6] .ShiftMux = 1'b0;
defparam \counter[6] .BypassEn = 1'b0;
defparam \counter[6] .CarryEnb = 1'b1;

alta_slice \counter[7] (
	.A(counter[7]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~13 ),
	.Qin(counter[7]),
	.Clk(\clk~inputclkctrl_outclk_X29_Y23_SIG_VCC ),
	.AsyncReset(AsyncReset_X29_Y23_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~14_combout ),
	.Cout(\Add0~15 ),
	.Q(counter[7]));
defparam \counter[7] .coord_x = 40;
defparam \counter[7] .coord_y = 28;
defparam \counter[7] .coord_z = 11;
defparam \counter[7] .mask = 16'h5A5F;
defparam \counter[7] .modeMux = 1'b1;
defparam \counter[7] .FeedbackMux = 1'b0;
defparam \counter[7] .ShiftMux = 1'b0;
defparam \counter[7] .BypassEn = 1'b0;
defparam \counter[7] .CarryEnb = 1'b0;

alta_slice \counter[8] (
	.A(vcc),
	.B(counter[8]),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~15 ),
	.Qin(counter[8]),
	.Clk(\clk~inputclkctrl_outclk_X29_Y23_SIG_VCC ),
	.AsyncReset(AsyncReset_X29_Y23_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~16_combout ),
	.Cout(\Add0~17 ),
	.Q(counter[8]));
defparam \counter[8] .coord_x = 40;
defparam \counter[8] .coord_y = 28;
defparam \counter[8] .coord_z = 12;
defparam \counter[8] .mask = 16'hC30C;
defparam \counter[8] .modeMux = 1'b1;
defparam \counter[8] .FeedbackMux = 1'b0;
defparam \counter[8] .ShiftMux = 1'b0;
defparam \counter[8] .BypassEn = 1'b0;
defparam \counter[8] .CarryEnb = 1'b0;

alta_slice \counter[9] (
	.A(counter[9]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\Add0~17 ),
	.Qin(counter[9]),
	.Clk(\clk~inputclkctrl_outclk_X29_Y23_SIG_VCC ),
	.AsyncReset(AsyncReset_X29_Y23_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Add0~18_combout ),
	.Cout(\Add0~19 ),
	.Q(counter[9]));
defparam \counter[9] .coord_x = 40;
defparam \counter[9] .coord_y = 28;
defparam \counter[9] .coord_z = 13;
defparam \counter[9] .mask = 16'h5A5F;
defparam \counter[9] .modeMux = 1'b1;
defparam \counter[9] .FeedbackMux = 1'b0;
defparam \counter[9] .ShiftMux = 1'b0;
defparam \counter[9] .BypassEn = 1'b0;
defparam \counter[9] .CarryEnb = 1'b0;

alta_dio \led[0]~output (
	.padio(led[0]),
	.datain(\led[0]~reg0_q ),
	.datainh(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \led[0]~output .coord_x = 39;
defparam \led[0]~output .coord_y = 29;
defparam \led[0]~output .coord_z = 1;
defparam \led[0]~output .IN_ASYNC_MODE = 1'b0;
defparam \led[0]~output .IN_SYNC_MODE = 1'b0;
defparam \led[0]~output .IN_POWERUP = 1'b0;
defparam \led[0]~output .IN_ASYNC_DISABLE = 1'b0;
defparam \led[0]~output .IN_SYNC_DISABLE = 1'b0;
defparam \led[0]~output .OUT_REG_MODE = 1'b0;
defparam \led[0]~output .OUT_ASYNC_MODE = 1'b0;
defparam \led[0]~output .OUT_SYNC_MODE = 1'b0;
defparam \led[0]~output .OUT_POWERUP = 1'b0;
defparam \led[0]~output .OUT_CLKEN_DISABLE = 1'b0;
defparam \led[0]~output .OUT_ASYNC_DISABLE = 1'b0;
defparam \led[0]~output .OUT_SYNC_DISABLE = 1'b0;
defparam \led[0]~output .OUT_DDIO = 1'b0;
defparam \led[0]~output .OE_REG_MODE = 1'b0;
defparam \led[0]~output .OE_ASYNC_MODE = 1'b0;
defparam \led[0]~output .OE_SYNC_MODE = 1'b0;
defparam \led[0]~output .OE_POWERUP = 1'b0;
defparam \led[0]~output .OE_CLKEN_DISABLE = 1'b0;
defparam \led[0]~output .OE_ASYNC_DISABLE = 1'b0;
defparam \led[0]~output .OE_SYNC_DISABLE = 1'b0;
defparam \led[0]~output .OE_DDIO = 1'b0;
defparam \led[0]~output .CFG_TRI_INPUT = 1'b0;
defparam \led[0]~output .CFG_PULL_UP = 1'b0;
defparam \led[0]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \led[0]~output .CFG_ROCT_CAL_EN = 1'b0;
defparam \led[0]~output .CFG_PDRV = 7'b0001000;
defparam \led[0]~output .CFG_NDRV = 7'b0001000;
defparam \led[0]~output .CFG_KEEP = 2'b00;
defparam \led[0]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \led[0]~output .CFG_LVDS_SEL_CUA = 3'b000;
defparam \led[0]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \led[0]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \led[0]~output .CFG_SSTL_OUT_EN = 1'b0;
defparam \led[0]~output .CFG_SSTL_INPUT_EN = 1'b0;
defparam \led[0]~output .CFG_SSTL_SEL_CUA = 3'b011;
defparam \led[0]~output .CFG_OSCDIV = 2'b00;
defparam \led[0]~output .CFG_ROCTUSR = 1'b0;
defparam \led[0]~output .CFG_SEL_CUA = 1'b0;
defparam \led[0]~output .CFG_ROCT_EN = 1'b0;
defparam \led[0]~output .DPCLK_DELAY = 4'b0000;
defparam \led[0]~output .OUT_DELAY = 1'b0;
defparam \led[0]~output .IN_DATA_DELAY = 3'b000;
defparam \led[0]~output .IN_REG_DELAY = 3'b000;

alta_slice \led[0]~reg0 (
	.A(\led[3]~reg0_q ),
	.B(\led[2]~reg0_q ),
	.C(vcc),
	.D(\led[1]~reg0_q ),
	.Cin(),
	.Qin(\led[0]~reg0_q ),
	.Clk(\clk~inputclkctrl_outclk__Equal0~7_combout_X28_Y22_SIG_SIG ),
	.AsyncReset(AsyncReset_X28_Y22_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Equal1~0_combout ),
	.Cout(),
	.Q(\led[0]~reg0_q ));
defparam \led[0]~reg0 .coord_x = 39;
defparam \led[0]~reg0 .coord_y = 27;
defparam \led[0]~reg0 .coord_z = 11;
defparam \led[0]~reg0 .mask = 16'h0001;
defparam \led[0]~reg0 .modeMux = 1'b0;
defparam \led[0]~reg0 .FeedbackMux = 1'b1;
defparam \led[0]~reg0 .ShiftMux = 1'b0;
defparam \led[0]~reg0 .BypassEn = 1'b0;
defparam \led[0]~reg0 .CarryEnb = 1'b1;

alta_dio \led[1]~output (
	.padio(led[1]),
	.datain(\led[1]~reg0_q ),
	.datainh(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \led[1]~output .coord_x = 39;
defparam \led[1]~output .coord_y = 29;
defparam \led[1]~output .coord_z = 0;
defparam \led[1]~output .IN_ASYNC_MODE = 1'b0;
defparam \led[1]~output .IN_SYNC_MODE = 1'b0;
defparam \led[1]~output .IN_POWERUP = 1'b0;
defparam \led[1]~output .IN_ASYNC_DISABLE = 1'b0;
defparam \led[1]~output .IN_SYNC_DISABLE = 1'b0;
defparam \led[1]~output .OUT_REG_MODE = 1'b0;
defparam \led[1]~output .OUT_ASYNC_MODE = 1'b0;
defparam \led[1]~output .OUT_SYNC_MODE = 1'b0;
defparam \led[1]~output .OUT_POWERUP = 1'b0;
defparam \led[1]~output .OUT_CLKEN_DISABLE = 1'b0;
defparam \led[1]~output .OUT_ASYNC_DISABLE = 1'b0;
defparam \led[1]~output .OUT_SYNC_DISABLE = 1'b0;
defparam \led[1]~output .OUT_DDIO = 1'b0;
defparam \led[1]~output .OE_REG_MODE = 1'b0;
defparam \led[1]~output .OE_ASYNC_MODE = 1'b0;
defparam \led[1]~output .OE_SYNC_MODE = 1'b0;
defparam \led[1]~output .OE_POWERUP = 1'b0;
defparam \led[1]~output .OE_CLKEN_DISABLE = 1'b0;
defparam \led[1]~output .OE_ASYNC_DISABLE = 1'b0;
defparam \led[1]~output .OE_SYNC_DISABLE = 1'b0;
defparam \led[1]~output .OE_DDIO = 1'b0;
defparam \led[1]~output .CFG_TRI_INPUT = 1'b0;
defparam \led[1]~output .CFG_PULL_UP = 1'b0;
defparam \led[1]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \led[1]~output .CFG_ROCT_CAL_EN = 1'b0;
defparam \led[1]~output .CFG_PDRV = 7'b0011010;
defparam \led[1]~output .CFG_NDRV = 7'b0011000;
defparam \led[1]~output .CFG_KEEP = 2'b00;
defparam \led[1]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \led[1]~output .CFG_LVDS_SEL_CUA = 3'b000;
defparam \led[1]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \led[1]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \led[1]~output .CFG_SSTL_OUT_EN = 1'b0;
defparam \led[1]~output .CFG_SSTL_INPUT_EN = 1'b0;
defparam \led[1]~output .CFG_SSTL_SEL_CUA = 3'b011;
defparam \led[1]~output .CFG_OSCDIV = 2'b00;
defparam \led[1]~output .CFG_ROCTUSR = 1'b0;
defparam \led[1]~output .CFG_SEL_CUA = 1'b0;
defparam \led[1]~output .CFG_ROCT_EN = 1'b0;
defparam \led[1]~output .DPCLK_DELAY = 4'b0000;
defparam \led[1]~output .OUT_DELAY = 1'b0;
defparam \led[1]~output .IN_DATA_DELAY = 3'b000;
defparam \led[1]~output .IN_REG_DELAY = 3'b000;

alta_slice \led[1]~reg0 (
	.A(\led[3]~reg0_q ),
	.B(\led[0]~reg0_q ),
	.C(vcc),
	.D(\led[2]~reg0_q ),
	.Cin(),
	.Qin(\led[1]~reg0_q ),
	.Clk(\clk~inputclkctrl_outclk__Equal0~7_combout_X28_Y22_SIG_SIG ),
	.AsyncReset(AsyncReset_X28_Y22_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\led~0_combout ),
	.Cout(),
	.Q(\led[1]~reg0_q ));
defparam \led[1]~reg0 .coord_x = 39;
defparam \led[1]~reg0 .coord_y = 27;
defparam \led[1]~reg0 .coord_z = 7;
defparam \led[1]~reg0 .mask = 16'hCCCD;
defparam \led[1]~reg0 .modeMux = 1'b0;
defparam \led[1]~reg0 .FeedbackMux = 1'b1;
defparam \led[1]~reg0 .ShiftMux = 1'b0;
defparam \led[1]~reg0 .BypassEn = 1'b0;
defparam \led[1]~reg0 .CarryEnb = 1'b1;

alta_dio \led[2]~output (
	.padio(led[2]),
	.datain(\led[2]~reg0_q ),
	.datainh(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \led[2]~output .coord_x = 42;
defparam \led[2]~output .coord_y = 29;
defparam \led[2]~output .coord_z = 0;
defparam \led[2]~output .IN_ASYNC_MODE = 1'b0;
defparam \led[2]~output .IN_SYNC_MODE = 1'b0;
defparam \led[2]~output .IN_POWERUP = 1'b0;
defparam \led[2]~output .IN_ASYNC_DISABLE = 1'b0;
defparam \led[2]~output .IN_SYNC_DISABLE = 1'b0;
defparam \led[2]~output .OUT_REG_MODE = 1'b0;
defparam \led[2]~output .OUT_ASYNC_MODE = 1'b0;
defparam \led[2]~output .OUT_SYNC_MODE = 1'b0;
defparam \led[2]~output .OUT_POWERUP = 1'b0;
defparam \led[2]~output .OUT_CLKEN_DISABLE = 1'b0;
defparam \led[2]~output .OUT_ASYNC_DISABLE = 1'b0;
defparam \led[2]~output .OUT_SYNC_DISABLE = 1'b0;
defparam \led[2]~output .OUT_DDIO = 1'b0;
defparam \led[2]~output .OE_REG_MODE = 1'b0;
defparam \led[2]~output .OE_ASYNC_MODE = 1'b0;
defparam \led[2]~output .OE_SYNC_MODE = 1'b0;
defparam \led[2]~output .OE_POWERUP = 1'b0;
defparam \led[2]~output .OE_CLKEN_DISABLE = 1'b0;
defparam \led[2]~output .OE_ASYNC_DISABLE = 1'b0;
defparam \led[2]~output .OE_SYNC_DISABLE = 1'b0;
defparam \led[2]~output .OE_DDIO = 1'b0;
defparam \led[2]~output .CFG_TRI_INPUT = 1'b0;
defparam \led[2]~output .CFG_PULL_UP = 1'b0;
defparam \led[2]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \led[2]~output .CFG_ROCT_CAL_EN = 1'b0;
defparam \led[2]~output .CFG_PDRV = 7'b0011010;
defparam \led[2]~output .CFG_NDRV = 7'b0011000;
defparam \led[2]~output .CFG_KEEP = 2'b00;
defparam \led[2]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \led[2]~output .CFG_LVDS_SEL_CUA = 3'b000;
defparam \led[2]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \led[2]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \led[2]~output .CFG_SSTL_OUT_EN = 1'b0;
defparam \led[2]~output .CFG_SSTL_INPUT_EN = 1'b0;
defparam \led[2]~output .CFG_SSTL_SEL_CUA = 3'b011;
defparam \led[2]~output .CFG_OSCDIV = 2'b00;
defparam \led[2]~output .CFG_ROCTUSR = 1'b0;
defparam \led[2]~output .CFG_SEL_CUA = 1'b0;
defparam \led[2]~output .CFG_ROCT_EN = 1'b0;
defparam \led[2]~output .DPCLK_DELAY = 4'b0000;
defparam \led[2]~output .OUT_DELAY = 1'b0;
defparam \led[2]~output .IN_DATA_DELAY = 3'b000;
defparam \led[2]~output .IN_REG_DELAY = 3'b000;

alta_slice \led[2]~reg0 (
	.A(\led[3]~reg0_q ),
	.B(\led[0]~reg0_q ),
	.C(vcc),
	.D(\led[1]~reg0_q ),
	.Cin(),
	.Qin(\led[2]~reg0_q ),
	.Clk(\clk~inputclkctrl_outclk__Equal0~7_combout_X28_Y22_SIG_SIG ),
	.AsyncReset(AsyncReset_X28_Y22_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\led~1_combout ),
	.Cout(),
	.Q(\led[2]~reg0_q ));
defparam \led[2]~reg0 .coord_x = 39;
defparam \led[2]~reg0 .coord_y = 27;
defparam \led[2]~reg0 .coord_z = 2;
defparam \led[2]~reg0 .mask = 16'hFF01;
defparam \led[2]~reg0 .modeMux = 1'b0;
defparam \led[2]~reg0 .FeedbackMux = 1'b1;
defparam \led[2]~reg0 .ShiftMux = 1'b0;
defparam \led[2]~reg0 .BypassEn = 1'b0;
defparam \led[2]~reg0 .CarryEnb = 1'b1;

alta_dio \led[3]~output (
	.padio(led[3]),
	.datain(\led[3]~reg0_q ),
	.datainh(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \led[3]~output .coord_x = 42;
defparam \led[3]~output .coord_y = 29;
defparam \led[3]~output .coord_z = 1;
defparam \led[3]~output .IN_ASYNC_MODE = 1'b0;
defparam \led[3]~output .IN_SYNC_MODE = 1'b0;
defparam \led[3]~output .IN_POWERUP = 1'b0;
defparam \led[3]~output .IN_ASYNC_DISABLE = 1'b0;
defparam \led[3]~output .IN_SYNC_DISABLE = 1'b0;
defparam \led[3]~output .OUT_REG_MODE = 1'b0;
defparam \led[3]~output .OUT_ASYNC_MODE = 1'b0;
defparam \led[3]~output .OUT_SYNC_MODE = 1'b0;
defparam \led[3]~output .OUT_POWERUP = 1'b0;
defparam \led[3]~output .OUT_CLKEN_DISABLE = 1'b0;
defparam \led[3]~output .OUT_ASYNC_DISABLE = 1'b0;
defparam \led[3]~output .OUT_SYNC_DISABLE = 1'b0;
defparam \led[3]~output .OUT_DDIO = 1'b0;
defparam \led[3]~output .OE_REG_MODE = 1'b0;
defparam \led[3]~output .OE_ASYNC_MODE = 1'b0;
defparam \led[3]~output .OE_SYNC_MODE = 1'b0;
defparam \led[3]~output .OE_POWERUP = 1'b0;
defparam \led[3]~output .OE_CLKEN_DISABLE = 1'b0;
defparam \led[3]~output .OE_ASYNC_DISABLE = 1'b0;
defparam \led[3]~output .OE_SYNC_DISABLE = 1'b0;
defparam \led[3]~output .OE_DDIO = 1'b0;
defparam \led[3]~output .CFG_TRI_INPUT = 1'b0;
defparam \led[3]~output .CFG_PULL_UP = 1'b0;
defparam \led[3]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \led[3]~output .CFG_ROCT_CAL_EN = 1'b0;
defparam \led[3]~output .CFG_PDRV = 7'b0011010;
defparam \led[3]~output .CFG_NDRV = 7'b0011000;
defparam \led[3]~output .CFG_KEEP = 2'b00;
defparam \led[3]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \led[3]~output .CFG_LVDS_SEL_CUA = 3'b000;
defparam \led[3]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \led[3]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \led[3]~output .CFG_SSTL_OUT_EN = 1'b0;
defparam \led[3]~output .CFG_SSTL_INPUT_EN = 1'b0;
defparam \led[3]~output .CFG_SSTL_SEL_CUA = 3'b011;
defparam \led[3]~output .CFG_OSCDIV = 2'b00;
defparam \led[3]~output .CFG_ROCTUSR = 1'b0;
defparam \led[3]~output .CFG_SEL_CUA = 1'b0;
defparam \led[3]~output .CFG_ROCT_EN = 1'b0;
defparam \led[3]~output .DPCLK_DELAY = 4'b0000;
defparam \led[3]~output .OUT_DELAY = 1'b0;
defparam \led[3]~output .IN_DATA_DELAY = 3'b000;
defparam \led[3]~output .IN_REG_DELAY = 3'b000;

alta_slice \led[3]~reg0 (
	.A(\led[0]~reg0_q ),
	.B(\led[2]~reg0_q ),
	.C(vcc),
	.D(\led[1]~reg0_q ),
	.Cin(),
	.Qin(\led[3]~reg0_q ),
	.Clk(\clk~inputclkctrl_outclk__Equal0~7_combout_X28_Y22_SIG_SIG ),
	.AsyncReset(AsyncReset_X28_Y22_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\led~2_combout ),
	.Cout(),
	.Q(\led[3]~reg0_q ));
defparam \led[3]~reg0 .coord_x = 39;
defparam \led[3]~reg0 .coord_y = 27;
defparam \led[3]~reg0 .coord_z = 15;
defparam \led[3]~reg0 .mask = 16'hCCCD;
defparam \led[3]~reg0 .modeMux = 1'b0;
defparam \led[3]~reg0 .FeedbackMux = 1'b1;
defparam \led[3]~reg0 .ShiftMux = 1'b0;
defparam \led[3]~reg0 .BypassEn = 1'b0;
defparam \led[3]~reg0 .CarryEnb = 1'b1;

endmodule
