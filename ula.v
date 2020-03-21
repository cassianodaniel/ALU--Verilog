module ula(input [3:0]switchs, input [3:0] a, input [3:0] b, output reg[1:0]saida);
always@(*)begin

	case(switchs)
	
			4'b0000:
				saida <= {a[0],a[1],a[2],a[3]} + {b[0],b[1],b[2],b[3]};
			4'b0001:
				saida <= {a[0],a[1],a[2],a[3]} - {b[0],b[1],b[2],b[3]};
			4'b0010:
				saida <= {a[0],a[1],a[2],a[3]} * {b[0],b[1],b[2],b[3]};
			4'b0011:
				saida <= {a[0],a[1],a[2],a[3]} / {b[0],b[1],b[2],b[3]};
			4'b0100:
				saida <= {a[0],a[1],a[2],a[3]} << 1;
			4'b0101:
				saida <= {a[0],a[1],a[2],a[3]} >> 1;
			4'b0110:
				saida <= {a[1],a[2],a[3],a[0]};
			4'b0111:
				saida <= {a[3],a[0],a[1],a[2]};
			4'b1000:
				saida <= {a[0],a[1],a[2],a[3]} & {b[0],b[1],b[2],b[3]};
			4'b1001:
				saida <= {a[0],a[1],a[2],a[3]} | {b[0],b[1],b[2],b[3]};
			4'b1010:
				saida <= {a[0],a[1],a[2],a[3]} ^ {b[0],b[1],b[2],b[3]};
			4'b1011:	
				saida <= !({a[0],a[1],a[2],a[3]} | {b[0],b[1],b[2],b[3]}); 
			4'b1100:
				saida <= !({a[0],a[1],a[2],a[3]} & {b[0],b[1],b[2],b[3]});
			4'b1101:
				saida <= {a[0],a[1],a[2],a[3]} ^~ {b[0],b[1],b[2],b[3]};
			4'b1110:
				if({a[0],a[1],a[2],a[3]} > {b[0],b[1],b[2],b[3]})
					saida <=2'b01;
				else
					saida<=2'b00;
			4'b1111:
				if({a[0],a[1],a[2],a[3]} == {b[0],b[1],b[2],b[3]})
					saida<=2'b01;
				else 
					saida<=2'b00;
	endcase
end

endmodule
