/****************文件信息********************************************
**创建日期：   2011.06.01
**版本号：     version 1.0
**功能描述：   读取按键信号实验
如果按下的是S2,那么点亮LED4
如果按下的是S3,那么点亮LED4LED3
如果按下的是S4,那么点亮LED4LED3LED2
********************************************************************/


module key_led(key,led);//
input[2:0]key;//
output[2:0]led;
reg[2:0]led_r;
reg[2:0]buffer;
assign led=led_r;

always@(key)
begin
	buffer=key;
	case(buffer)
		8'b010:led_r=8'b110;//如果按下的是key1,那么点亮LED1
		8'b001:led_r=8'b100;//如果按下的是key4,那么点亮LED1-LED4
		8'b111:led_r=8'b000;//如果按下的是key4,那么点亮LED1-LED4
	    default:led_r=8'b111;
	endcase
end
endmodule