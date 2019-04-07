function dt=fun(x1,y1,x2,y2)
dt=(6378137*2*asin(sqrt(sum((sin((y1*pi/180 - y2*pi/180)/2)).^2)+ cos(y1*pi/180)*cos(y2*pi/180)*sum(sin((x1*pi/180-x2*pi/180)/2).^2))))/1000 ;