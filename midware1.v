module midware1(
	input wr,
	input rd,
	output reg key_out
);

always@(negedge wr or posedge rd)
	begin
		if(!wr)
			begin
				if(rd) key_out<=0;
			end
		if(rd)
			if(!wr) key_out<=0;
			
	end
endmodule
