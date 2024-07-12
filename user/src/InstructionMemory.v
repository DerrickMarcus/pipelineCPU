// ./src/InstructionMemory.v

module InstructionMemory(
        input [32-1:0] Address,
        output reg [32-1:0] Instruction
    );

    always @(*)
    case (Address[9:2])
        // -------- Set Binary Instruction Below

        8'd0:
            Instruction <= 32'h241d0100;
        8'd1:
            Instruction <= 32'h24040000;
        8'd2:
            Instruction <= 32'h8c850000;
        8'd3:
            Instruction <= 32'h20840004;
        8'd4:
            Instruction <= 32'h20100000;
        8'd5:
            Instruction <= 32'h0c100065;
        8'd6:
            Instruction <= 32'h8c040000;
        8'd7:
            Instruction <= 32'hac100000;
        8'd8:
            Instruction <= 32'h08100009;
        8'd9:
            Instruction <= 32'h24080190;
        8'd10:
            Instruction <= 32'h2409003f;
        8'd11:
            Instruction <= 32'had090000;
        8'd12:
            Instruction <= 32'h24090006;
        8'd13:
            Instruction <= 32'had090004;
        8'd14:
            Instruction <= 32'h2409005b;
        8'd15:
            Instruction <= 32'had090008;
        8'd16:
            Instruction <= 32'h2409004f;
        8'd17:
            Instruction <= 32'had09000c;
        8'd18:
            Instruction <= 32'h24090066;
        8'd19:
            Instruction <= 32'had090010;
        8'd20:
            Instruction <= 32'h2409006d;
        8'd21:
            Instruction <= 32'had090014;
        8'd22:
            Instruction <= 32'h2409007d;
        8'd23:
            Instruction <= 32'had090018;
        8'd24:
            Instruction <= 32'h24090007;
        8'd25:
            Instruction <= 32'had09001c;
        8'd26:
            Instruction <= 32'h2409007f;
        8'd27:
            Instruction <= 32'had090020;
        8'd28:
            Instruction <= 32'h2409006f;
        8'd29:
            Instruction <= 32'had090024;
        8'd30:
            Instruction <= 32'h24090077;
        8'd31:
            Instruction <= 32'had090028;
        8'd32:
            Instruction <= 32'h2409007c;
        8'd33:
            Instruction <= 32'had09002c;
        8'd34:
            Instruction <= 32'h24090039;
        8'd35:
            Instruction <= 32'had090030;
        8'd36:
            Instruction <= 32'h2409005e;
        8'd37:
            Instruction <= 32'had090034;
        8'd38:
            Instruction <= 32'h24090079;
        8'd39:
            Instruction <= 32'had090038;
        8'd40:
            Instruction <= 32'h24090071;
        8'd41:
            Instruction <= 32'had09003c;
        8'd42:
            Instruction <= 32'h24100000;
        8'd43:
            Instruction <= 32'h24110190;
        8'd44:
            Instruction <= 32'h3c014000;
        8'd45:
            Instruction <= 32'h34320010;
        8'd46:
            Instruction <= 32'h24080000;
        8'd47:
            Instruction <= 32'h3c010098;
        8'd48:
            Instruction <= 32'h34299680;
        8'd49:
            Instruction <= 32'h0088082a;
        8'd50:
            Instruction <= 32'h14200030;
        8'd51:
            Instruction <= 32'h00085080;
        8'd52:
            Instruction <= 32'h020a5020;
        8'd53:
            Instruction <= 32'h8d4a0000;
        8'd54:
            Instruction <= 32'h240b0000;
        8'd55:
            Instruction <= 32'h3153f000;
        8'd56:
            Instruction <= 32'h00139b02;
        8'd57:
            Instruction <= 32'h00139880;
        8'd58:
            Instruction <= 32'h02339820;
        8'd59:
            Instruction <= 32'h8e730000;
        8'd60:
            Instruction <= 32'h22730800;
        8'd61:
            Instruction <= 32'h31540f00;
        8'd62:
            Instruction <= 32'h0014a202;
        8'd63:
            Instruction <= 32'h0014a080;
        8'd64:
            Instruction <= 32'h0234a020;
        8'd65:
            Instruction <= 32'h8e940000;
        8'd66:
            Instruction <= 32'h22940400;
        8'd67:
            Instruction <= 32'h315500f0;
        8'd68:
            Instruction <= 32'h0015a902;
        8'd69:
            Instruction <= 32'h0015a880;
        8'd70:
            Instruction <= 32'h0235a820;
        8'd71:
            Instruction <= 32'h8eb50000;
        8'd72:
            Instruction <= 32'h22b50200;
        8'd73:
            Instruction <= 32'h3156000f;
        8'd74:
            Instruction <= 32'h0016b080;
        8'd75:
            Instruction <= 32'h0236b020;
        8'd76:
            Instruction <= 32'h8ed60000;
        8'd77:
            Instruction <= 32'h22d60100;
        8'd78:
            Instruction <= 32'hae530000;
        8'd79:
            Instruction <= 32'h216b0001;
        8'd80:
            Instruction <= 32'h00000000;
        8'd81:
            Instruction <= 32'h00000000;
        8'd82:
            Instruction <= 32'h00000000;
        8'd83:
            Instruction <= 32'hae540000;
        8'd84:
            Instruction <= 32'h216b0001;
        8'd85:
            Instruction <= 32'h00000000;
        8'd86:
            Instruction <= 32'h00000000;
        8'd87:
            Instruction <= 32'h00000000;
        8'd88:
            Instruction <= 32'hae550000;
        8'd89:
            Instruction <= 32'h216b0001;
        8'd90:
            Instruction <= 32'h00000000;
        8'd91:
            Instruction <= 32'h00000000;
        8'd92:
            Instruction <= 32'h00000000;
        8'd93:
            Instruction <= 32'hae560000;
        8'd94:
            Instruction <= 32'h216b0001;
        8'd95:
            Instruction <= 32'h012b082a;
        8'd96:
            Instruction <= 32'h1020ffed;
        8'd97:
            Instruction <= 32'h21080001;
        8'd98:
            Instruction <= 32'h08100031;
        8'd99:
            Instruction <= 32'h08100064;
        8'd100:
            Instruction <= 32'h08100064;
        8'd101:
            Instruction <= 32'h23bdfff4;
        8'd102:
            Instruction <= 32'hafbf0008;
        8'd103:
            Instruction <= 32'hafa40004;
        8'd104:
            Instruction <= 32'hafa50000;
        8'd105:
            Instruction <= 32'h20110001;
        8'd106:
            Instruction <= 32'h0225482a;
        8'd107:
            Instruction <= 32'h11200006;
        8'd108:
            Instruction <= 32'h22260000;
        8'd109:
            Instruction <= 32'h0c100077;
        8'd110:
            Instruction <= 32'h20470000;
        8'd111:
            Instruction <= 32'h0c100087;
        8'd112:
            Instruction <= 32'h22310001;
        8'd113:
            Instruction <= 32'h0810006a;
        8'd114:
            Instruction <= 32'h8fa50000;
        8'd115:
            Instruction <= 32'h8fa40004;
        8'd116:
            Instruction <= 32'h8fbf0008;
        8'd117:
            Instruction <= 32'h23bd000c;
        8'd118:
            Instruction <= 32'h03e00008;
        8'd119:
            Instruction <= 32'h00064880;
        8'd120:
            Instruction <= 32'h00894820;
        8'd121:
            Instruction <= 32'h8d290000;
        8'd122:
            Instruction <= 32'h20caffff;
        8'd123:
            Instruction <= 32'h0140582a;
        8'd124:
            Instruction <= 32'h15600008;
        8'd125:
            Instruction <= 32'h22100001;
        8'd126:
            Instruction <= 32'h000a5880;
        8'd127:
            Instruction <= 32'h008b5820;
        8'd128:
            Instruction <= 32'h8d6b0000;
        8'd129:
            Instruction <= 32'h012b602a;
        8'd130:
            Instruction <= 32'h11800002;
        8'd131:
            Instruction <= 32'h214affff;
        8'd132:
            Instruction <= 32'h0810007b;
        8'd133:
            Instruction <= 32'h21420001;
        8'd134:
            Instruction <= 32'h03e00008;
        8'd135:
            Instruction <= 32'h00064880;
        8'd136:
            Instruction <= 32'h00894820;
        8'd137:
            Instruction <= 32'h8d290000;
        8'd138:
            Instruction <= 32'h20caffff;
        8'd139:
            Instruction <= 32'h0147582a;
        8'd140:
            Instruction <= 32'h15600006;
        8'd141:
            Instruction <= 32'h000a5880;
        8'd142:
            Instruction <= 32'h008b5820;
        8'd143:
            Instruction <= 32'h8d6c0000;
        8'd144:
            Instruction <= 32'had6c0004;
        8'd145:
            Instruction <= 32'h214affff;
        8'd146:
            Instruction <= 32'h0810008b;
        8'd147:
            Instruction <= 32'h00075080;
        8'd148:
            Instruction <= 32'h008a5020;
        8'd149:
            Instruction <= 32'had490000;
        8'd150:
            Instruction <= 32'h03e00008;




        // -------- Set Binary Instruction Above
        default:
            Instruction <= 32'h00000000;
    endcase

endmodule // InstructionMemory
