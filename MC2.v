module MC2(CLK, RESET, in, in_valid, out, out_valid);

input [7:0] in;
input in_valid, CLK, RESET;
output signed [8:0] out;
output out_valid;
reg [7:0]m11,m12,m13,m14,m15,m16,m21,m22,m23,m24,m25,m26,m31,m32,m33,m34,m35,m36;
reg [7:0]m41,m42,m43,m44,m45,m46,m51,m52,m53,m54,m55,m56,m61,m62,m63,m64,m65,m66;
reg [7:0]c11,c12,c21,c22;
reg [7:0]max11,max12,max21,max22;
reg [7:0]now11,now12,now21,now22;
reg [7:0]mode,outmode;
reg [7:0]node;
reg [1:0]start;
reg [15:0]tmax,tnow;
reg finish;
reg	[7:0]t11,t12,t21,t22;
reg s1,s2,s3,s4,st1,st2,st3,st4;
reg signed [8:0] out,a1,a2,a3,a4,a5,a6,a7;
reg out_valid;
always @(posedge CLK)
begin
	if(RESET || finish)	mode=0;
	else if(in_valid)mode=mode+1;
	else if(mode)mode=mode+1;
	else mode=0;
end



always @(posedge CLK)
begin
	if(RESET || finish)	start=0;
	else if(mode>67)start=2;
	else if(mode>40)start=1;
	
	else if(out_valid)start=3;
	else start=0;
end

/////INPUT
always @(posedge CLK)
begin
	if(RESET || finish)
	begin
		c11=0;
		c12=0;
		c21=0;
		c22=0;
		m11=0;
		m12=0;
		m13=0;
		m14=0;
		m15=0;
		m16=0;
		m21=0;
		m22=0;
		m23=0;
		m24=0;
		m25=0;
		m26=0;
		m31=0;
		m32=0;
		m33=0;
		m34=0;
		m35=0;
		m36=0;
		m41=0;
		m42=0;
		m43=0;
		m44=0;
		m45=0;
		m46=0;
		m51=0;
		m52=0;
		m53=0;
		m54=0;
		m55=0;
		m56=0;
		m61=0;
		m62=0;
		m63=0;
		m64=0;
		m65=0;
		m66=0;
	end
	else if(in_valid)
	begin
		case(mode)
		1:c11=in;
		2:c12=in;
		3:c21=in;
		4:c22=in;
		5:m11=in;
		6:m12=in;
		7:m13=in;
		8:m14=in;
		9:m15=in;
		10:m16=in;
		11:m21=in;
		12:m22=in;
		13:m23=in;
		14:m24=in;
		15:m25=in;
		16:m26=in;
		17:m31=in;
		18:m32=in;
		19:m33=in;
		20:m34=in;
		21:m35=in;
		22:m36=in;
		23:m41=in;
		24:m42=in;
		25:m43=in;
		26:m44=in;
		27:m45=in;
		28:m46=in;
		29:m51=in;
		30:m52=in;
		31:m53=in;
		32:m54=in;
		33:m55=in;
		34:m56=in;
		35:m61=in;
		36:m62=in;
		37:m63=in;
		38:m64=in;
		39:m65=in;
		40:m66=in;
		default:c11=c11;
		endcase
	end
	else c11=c11;
	
	
end
/////ºâ¥L¶ıªº
always @(posedge CLK)
begin
	if(RESET || finish)	
	begin
		t11=0;
		t21=0;
		t12=0;
		t22=0;
	end
	else if(start==1)
	begin
		case(mode)
		41:
		begin
			t11=m11;
			t12=m12;
			t21=m21;
			t22=m22;
		end
		42:
		begin
			t11=m12;
			t12=m13;
			t21=m22;
			t22=m23;
		end
		43:
		begin
			t11=m13;
			t12=m14;
			t21=m23;
			t22=m24;
		end
		44:
		begin
			t11=m14;
			t12=m15;
			t21=m24;
			t22=m25;
		end
		45:
		begin
			t11=m15;
			t12=m16;
			t21=m25;
			t22=m26;
		end
		46:
		begin
			t11=m21;
			t12=m22;
			t21=m31;
			t22=m32;
		end
		47:
		begin
			t11=m22;
			t12=m23;
			t21=m32;
			t22=m33;
		end
		48:
		begin
			t11=m23;
			t12=m24;
			t21=m33;
			t22=m34;
		end
		49:
		begin
			t11=m24;
			t12=m25;
			t21=m34;
			t22=m35;
		end
		50:
		begin
			t11=m25;
			t12=m26;
			t21=m35;
			t22=m36;
		end
		51:
		begin
			t11=m31;
			t12=m32;
			t21=m41;
			t22=m42;
		end
		52:
		begin
			t11=m32;
			t12=m33;
			t21=m42;
			t22=m43;
		end
		53:
		begin
			t11=m33;
			t12=m34;
			t21=m43;
			t22=m44;
		end
		54:
		begin
			t11=m34;
			t12=m35;
			t21=m44;
			t22=m45;
		end
		55:
		begin
			t11=m35;
			t12=m36;
			t21=m45;
			t22=m46;
		end
		56:
		begin
			t11=m41;
			t12=m42;
			t21=m51;
			t22=m52;
		end
		57:
		begin
			t11=m42;
			t12=m43;
			t21=m52;
			t22=m53;
		end
		58:
		begin
			t11=m43;
			t12=m44;
			t21=m53;
			t22=m54;
		end
		59:
		begin
			t11=m44;
			t12=m45;
			t21=m54;
			t22=m55;
		end
		60:
		begin
			t11=m45;
			t12=m46;
			t21=m55;
			t22=m56;
		end
		61:
		begin
			t11=m51;
			t12=m52;
			t21=m61;
			t22=m62;
		end
		62:
		begin
			t11=m52;
			t12=m53;
			t21=m62;
			t22=m63;
		end
		63:
		begin
			t11=m53;
			t12=m54;
			t21=m63;
			t22=m64;
		end
		64:
		begin
			t11=m54;
			t12=m55;
			t21=m64;
			t22=m65;
		end
		65:
		begin
			t11=m55;
			t12=m56;
			t21=m65;
			t22=m66;
		end
		default: t11=t11;
		endcase
	end
	else t11=t11;
end

always @(posedge CLK)
begin
	if(RESET || finish)	
	begin
		tmax=0;
		tnow=0;
		node<=0;
		now11=0;
		now12=0;
		now21=0;
		now22=0;
		max11=255;
		max12=255;
		max21=255;
		max22=255;
		s1=0;
		s2=0;
		s3=0;
		s4=0;
		st1=0;
		st2=0;
		st3=0;
		st4=0;
	end
	else if(start==1)
	begin
		if(c11>t11)
		begin
			now11=c11-t11;
			st1=0;
		end
		else 
		begin 
			now11=t11-c11;
			st1=1;
		end
		
		if(c12>t12)
		begin
			now12=c12-t12;
			st2=0;
		end
		else 
		begin 
			now12=t12-c12;
			st2=1;
		end
		
		if(c21>t21)
		begin
			now21=c21-t21;
			st3=0;
		end
		else 
		begin 
			now21=t21-c21;
			st3=1;
		end
		
		if(c22>t22)
		begin
			now22=c22-t22;
			st4=0;
		end
		else 
		begin 
			now22=t22-c22;
			st4=1;
		end
		tnow=now11+now12+now21+now22;
		tmax=max11+max12+max21+max22;
		if(tmax>tnow)
		begin
			node<=mode-41;
			max11=now11;
			max12=now12;
			max21=now21;
			max22=now22;
			s1=st1;
			s2=st2;
			s3=st3;
			s4=st4;
			tmax=max11+max12+max21+max22;
		end
		else node<=node;
	end
end


always @(posedge CLK)
begin
	if(RESET || finish)	
	begin
		finish=0;
		out=0;
		out_valid<=0;
		a1=0;
		a2=0;
		a3=0;
		a4=0;
		a5=0;
		a6=0;
		a7=0;
		outmode=0;
	end
	else if(finish==1)finish=0;
	else if(out_valid)
	begin
		outmode=outmode+1;
		case(outmode)
		1:out=a2;
		2:out=a3;
		3:out=a4;
		4:out=a5;
		5:out=a6;
		6:out=a7;
		7:
		begin
			out=0;
			out_valid<=0;
			finish=1;
		end
		default:a1=a1;
		endcase
	end
	else if(start==2)
	begin
		case(node)
		1:a1=-2;
		2:a1=-1;
		3:a1=0;
		4:a1=1;
		5:a1=2;
		6:a1=-2;
		7:a1=-1;
		8:a1=0;
		9:a1=1;
		10:a1=2;
		11:a1=-2;
		12:a1=-1;
		13:a1=0;
		14:a1=1;
		15:a1=2;
		16:a1=-2;
		17:a1=-1;
		18:a1=0;
		19:a1=1;
		20:a1=2;
		21:a1=-2;
		22:a1=-1;
		23:a1=0;
		24:a1=1;
		25:a1=2;
		default: a1=a1;
		endcase
		
		case(node)
		1:a2=-2;
		2:a2=-2;
		3:a2=-2;
		4:a2=-2;
		5:a2=-2;
		6:a2=-1;
		7:a2=-1;
		8:a2=-1;
		9:a2=-1;
		10:a2=-1;
		11:a2=0;
		12:a2=0;
		13:a2=0;
		14:a2=0;
		15:a2=0;
		16:a2=1;
		17:a2=1;
		18:a2=1;
		19:a2=1;
		20:a2=1;
		21:a2=2;
		22:a2=2;
		23:a2=2;
		24:a2=2;
		25:a2=2;
		default: a2=a2;
		endcase
		
		if(s1)a3=0-max11;
		else a3=max11;
		if(s2)a4=0-max12;
		else a4=max12;
		if(s3)a5=0-max21;
		else a5=max21;
		if(s4)a6=0-max22;
		else a6=max22;
		if((max11+max12+max21+max22)%4>1)a7=(max11+max12+max21+max22)/4+1;
		else a7=(max11+max12+max21+max22)/4;
		out=a1;
		out_valid<=1;
	end
	else a1=a1;
end
	

endmodule
