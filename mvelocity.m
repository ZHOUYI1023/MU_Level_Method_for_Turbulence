	clear;
	N=4096*1024;
	f1=sprintf('%s','平均速度.dat');
	fout=fopen(f1, 'w+');  

	for i=1:118
		f2=sprintf('%s%04d','0814_2.V',i);
		fin=fopen(f2,'r');    
		u=fread(fin,N,'float',4);
		mu=mean(u);
		fprintf(fout,'%g\t\r\n',mu);
	end

	fclose(fin);
	fclose(fout);

   