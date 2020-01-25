clear;clc;


	N=4096*1024;
	fname1=sprintf('%s','mulevel.dat');
	fout=fopen(fname1, 'w+');  
	fprintf(fout,'std_u[m/s]\r\n');

		fin=fopen('0814_2.V0001','r');    
		u=fread(fin,N,'float',4);
		su=std(u);
        mu=mean(u);
       v(1)=1;
        for i=2:4096
        if (u(i)-mu)<= -su
            v(i)=1;
         elseif (u(i)-mu)>= -0.25*su 
            v(i)=0;
         elseif (u(i)-mu)< -0.25*su && (u(i)-mu)>-su && v(i-1)==1
            v(i)=1;
         elseif (u(i)-mu)< -0.25*su && (u(i)-mu)>-su && v(i-1)==0
            v(i)=0;
        end
        a(i-1)=u(i)-mu;
    end
		fprintf(fout,'%g\t\r\n',v);
	plot(v,'r-')
     hold on
    plot(a,'b-')
   

	fclose(fin);
	fclose(fout);
	
    