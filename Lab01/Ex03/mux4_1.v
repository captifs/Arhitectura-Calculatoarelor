module mux4_1(
	output out,
	input i1,i2,i3,i4, //intrari
	input s1,s2);      //biti de selectie

/*
	not(s11,s1);
	not(s22,s2);
	and(w1,s11,s22,i1);
	and(w2,s1,s22,i2);
	and(w3,s11,s2,i3);
	and(w4,s1,s2,i4);
	or(out,w1,w2,w3,w4);
*/

/*
	assign out =( i1 && (!s1) && (!s2) ) + ( i2 && (s1) && (!s2) ) + ( i3 && (!s1) && (s2) ) + ( i4 && (s1) && (s2) );
*/
	wire [1:0] sel;
	assign sel = {s2,s1};
	
	assign out = sel == 0 ? i1 : ( sel == 1 ? i2 : (sel == 2 ? i3 : i4));
endmodule
