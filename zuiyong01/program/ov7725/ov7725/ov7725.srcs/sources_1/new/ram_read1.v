`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/11/12 15:13:28
// Design Name: 
// Module Name: ram_read1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module ram_read1 #(
parameter   SHOW_H_START = 160,
              SHOW_V_START = 120,
              SHOW_WIDTH = 320,
              SHOW_HEIGHT = 240
 )(
input clk,
input valid,
input[15:0] din,
output reg[16:0] address,
input [11:0]vga_h_cnt,
input [10:0]vga_v_cnt,
output [3:0]vga_red,
output [3:0]vga_green,
output [3:0]vga_blue,
input clk1
    );
wire [15:0] temp;
parameter caise_h = 324,
           caise_v =3;
 reg [8:0]address2; 
 reg clka=0,clkb=0; 
 reg [8:0] addra=0,addrb=0;
 reg [15:0] dina;
 wire [15:0] doutb;     
blk_mem_gen_1 blk(.clka(clka),.wea(1'b1),.addra(addra),.dina(dina),.clkb(clkb),.addrb(addrb),.doutb(doutb));
huidu h(.clk(clk),.din(din),.post_data_in(temp),.clk1(clk1));
always@(posedge clk)
    begin
    if(vga_h_cnt >=SHOW_H_START && vga_h_cnt<SHOW_WIDTH+SHOW_H_START)
       begin
        clka<=!clka;
        addra<=addra+1;
        addrb<=0;
        dina<=din;
        clka<=!clka;
        end
    else if(vga_h_cnt>=caise_h && vga_h_cnt<caise_h+SHOW_WIDTH)
        begin
        addra<=0;
        clkb<=!clkb;
        addrb<=addrb+1;
        clkb<=!clkb;
        end;
    end
always@(posedge clk)
begin
    if(vga_h_cnt >=SHOW_H_START&& vga_h_cnt<SHOW_H_START+SHOW_WIDTH && vga_v_cnt>=SHOW_V_START && vga_v_cnt<SHOW_V_START+SHOW_HEIGHT)
        address <= address+1;
     else if(vga_v_cnt>=SHOW_V_START+SHOW_HEIGHT)
        address<=0;
end

/*assign     vga_red   = (valid==1 &&vga_h_cnt >=SHOW_H_START && vga_h_cnt<SHOW_H_START+SHOW_WIDTH && vga_v_cnt>=SHOW_V_START && vga_v_cnt<SHOW_V_START+SHOW_HEIGHT)?temp[15:12]:4'b0;
assign     vga_green = (valid==1 && vga_h_cnt >=SHOW_H_START && vga_h_cnt<SHOW_H_START+SHOW_WIDTH && vga_v_cnt>=SHOW_V_START && vga_v_cnt<SHOW_V_START+SHOW_HEIGHT)?temp[10:7]:4'b0;
assign     vga_blue  = (valid==1 &&vga_h_cnt >=SHOW_H_START && vga_h_cnt<SHOW_H_START+SHOW_WIDTH && vga_v_cnt>=SHOW_V_START && vga_v_cnt<SHOW_V_START+SHOW_HEIGHT)?temp[4:1]:4'b0;
*/
assign     vga_red   = (valid==1 &&vga_h_cnt >=SHOW_H_START && vga_h_cnt<SHOW_H_START+SHOW_WIDTH && vga_v_cnt>=SHOW_V_START && vga_v_cnt<SHOW_V_START+SHOW_HEIGHT)?temp[15:12]:((vga_h_cnt >=caise_h && vga_h_cnt<caise_h+SHOW_WIDTH && vga_v_cnt>=caise_v && vga_v_cnt<caise_v+SHOW_HEIGHT)?doutb[15:12]:4'b0);
assign     vga_green = (valid==1 && vga_h_cnt >=SHOW_H_START && vga_h_cnt<SHOW_H_START+SHOW_WIDTH && vga_v_cnt>=SHOW_V_START && vga_v_cnt<SHOW_V_START+SHOW_HEIGHT)?temp[10:7]:((vga_h_cnt >=caise_h && vga_h_cnt<caise_h+SHOW_WIDTH && vga_v_cnt>=caise_v && vga_v_cnt<caise_v+SHOW_HEIGHT)?doutb[10:7]:4'b0);
assign     vga_blue  = (valid==1 &&vga_h_cnt >=SHOW_H_START && vga_h_cnt<SHOW_H_START+SHOW_WIDTH && vga_v_cnt>=SHOW_V_START && vga_v_cnt<SHOW_V_START+SHOW_HEIGHT)?temp[4:1]:((vga_h_cnt >=caise_h && vga_h_cnt<caise_h+SHOW_WIDTH && vga_v_cnt>=caise_v && vga_v_cnt<caise_v+SHOW_HEIGHT)?doutb[4:1]:4'b0);

endmodule

module huidu(clk,din,post_data_in,clk1);
    input clk,clk1;
    input [15:0] din;
    output [15:0] post_data_in;
    reg [15:0] dinn;
    reg [15:0] Gray,a,b,c;
	reg [15:0] out_data;
	wire [7:0] line1,line2,line3;
    always @(din)
          dinn=din;
    always  @(posedge clk)
    begin
           a <= dinn[15:12] * 77 ;     
           b <= dinn[10:7] * 150;
           c <= dinn[4:1]  * 29 ;
    end
    
    always  @(posedge clk)
    begin
            Gray <= a + b + c;        
    end
    
    always  @(posedge clk)
        begin
		
           out_data <= { Gray[13:9], Gray[13:8], Gray[13:9] };
       
    end
    
	line l(.a(out_data[15:8]),.b1(line1),.b2(line2),.b3(line3));
	
	sobel so(clk,line1,line2,line3,post_data_in,clk1);

endmodule

module shift1(input [7:0] a,output[7:0] b);
    assign b={a[2],a[1],a[0],a[7:3]};
endmodule
    
module line(a,b1,b2,b3);
    input [7:0] a;
    output [7:0] b1,b2,b3;
    shift1 s1(a,b1);
    shift1 s2(b1,b2);
    shift1 s3(b2,b3);
endmodule
    
    
module sobel(clk,line1,line2,line3,out,clk1);
    input[7:0] line1,line2,line3;
    output reg [15:0] out;
    input clk,clk1;
    reg [5:0]p_11,p_12,p_13; 
    reg [5:0]p_21,p_22,p_23;
    reg [5:0]p_31,p_32,p_33;
    
    reg [8:0] p_x_data ,p_y_data ;  
    reg [8:0] n_x_data ,n_y_data ; 
    reg [8:0] gx_data  ,gy_data  ; 
    wire clk_out;
    quart q2(clk1,clk_out);
    always@(posedge clk)
    begin
        p_11<={3'b0,line1[7:5]};
        p_12<={4'b0,line1[4:3]};
        p_13<={3'b0,line1[2:0]};
        
        p_21<={3'b0,line2[7:5]};
        p_22<={4'b0,line2[4:3]};
        p_23<={3'b0,line2[2:0]};
        
        p_31<={3'b0,line3[7:5]};
        p_32<={4'b0,line3[4:3]};
        p_33<={3'b0,line3[2:0]};
    end
    
    always@(posedge clk )begin
         p_x_data <= p_13 + (p_23<<1) + p_33 ;
         n_x_data <= p_11 + (p_12<<1 )+ p_13 ;
         gx_data   <= (p_x_data >=n_x_data)? p_x_data - n_x_data : n_x_data - p_x_data ; 
    end
    
    always  @(posedge clk)begin
        p_y_data <= p_11 + (p_12<<1) + p_13 ;
        n_y_data <= p_31 + (p_32<<1) + p_33 ;
        gy_data  <= (p_y_data >=n_y_data)? p_y_data - n_y_data : n_y_data - p_y_data ; 
    end
    
    
    reg [15:0] gxy; // Gx 与 Gy 的平方和
    always  @(posedge clk)begin
        gxy<= gy_data*gy_data + gx_data*gx_data;
    end
    
    wire [15:0] squart_out;
    wire d;
    sqrt dd(clk_out,1'b1,gxy,d,squart_out);
    
    //与阈值进行比较
    always  @(posedge clk)
    begin
    //if(count==3)
       // begin
        if(squart_out>=16'd8)
             out<=16'h00;
        else
             out<=16'hffff; 
        //end  
    end
endmodule

module quart(clk_in,clk_out);
    input clk_in;
    output clk_out;
    reg reg_clk_out;
    reg counter;
    initial
    begin
        counter=0;
        reg_clk_out=0;
    end
    always@(posedge clk_in)
    begin
        if(counter == 1) 
        begin
            reg_clk_out <= ~reg_clk_out;
            counter <= 0;
        end
    else 
        begin
        reg_clk_out <= reg_clk_out;
        counter <= counter + 1'b1;
        end
    end

    assign clk_out=reg_clk_out;
endmodule
