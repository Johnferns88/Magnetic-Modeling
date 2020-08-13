v2=0;r=0;mx=0;my=0;mz=0;bx=0;by=0;bz=0;
d=0;mx2=0;my2=0;mz2=0;b1=0;b2=0;b3=0;sd=0;x2=0;y2=0;z2=0;x1=0;y1=0;z1=0;
x=0;y=0;z=0;m=0;b=0;br=0;

for rr=1:1:141
for j=1:1:11
  
    rrr= 41-rr;
x1= rrr+j-1;
for k=1:1:11
z1=-k;
for l=1:1:11
y1= -5+l-1;
r1=sqrt(x1^2+y1^2+z1^2);
c=(4*pi*10^-7)/(4*pi*r1^5);
mx(k,l,j)=10;
my(k,l,j)=10;
mz(k,l,j)=10;

       
x(k,l,j)=x1; %2(q,s,t)
y(k,l,j)=y1; %2(q,s,t);
z(k,l,j)=z1; %2(q,s,t);
r(k,l,j)=r1;
     
d(1,1,j)=3*x(k,l,j)^2-r(k,l,j)^2;
d(1,2,j)=3*x(k,l,j)*y(k,l,j);
d(1,3,j)=3*x(k,l,j)*z(k,l,j);
d(2,1,j)=3*x(k,l,j)*y(k,l,j);
d(2,2,j)=3*y(k,l,j)^2-r(k,l,j)^2;
d(2,3,j)=3*y(k,l,j)*z(k,l,j);
d(3,1,j)=3*x(k,l,j)*z(k,l,j);
d(3,2,j)=3*y(k,l,j)*z(k,l,j);
d(3,3,j)=3*z(k,l,j)^2-r(k,l,j)^2;

m(1,1,j)=mx(k,l,j);
m(2,1,j)=my(k,l,j);
m(3,1,j)=mz(k,l,j);
%sd(a,b,j)=d(a,b);
end
end

for e=1:1:3;
for f=1:1:3;
 b(f,1,j)= c*d(e,f,j)*m(f,1,j);
end
end
bx(rr)=b(1,1,j);
by(rr)=b(2,1,j);
bz(rr)=b(3,1,j);
br(rr)=sqrt(bx(rr)^2+by(rr)^2+bz(rr)^2);
end
end
%x1,y1,z1
plot(bx)
hold on
plot (by,'-r')
hold on;
plot (bz,'g')

