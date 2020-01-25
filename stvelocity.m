	clear;clc;
	time0=clock;

	N=4096*1024;
	fname1=sprintf('%s','ÍÄÁ÷¶È.dat');
	fout=fopen(fname1, 'w+');  
	fprintf(fout,'std_u[m/s]\r\n');

	for i=1:117
		fname2=sprintf('%s%04d','0814_2.V',i);
		fin=fopen(fname2,'r');    
		u=fread(fin,N,'float',4);
		su=std(u);
		fprintf(fout,'%g\t\r\n',su);
		i
	end

	fclose(fin);
	fclose(fout);
	time=etime(time0,clock)