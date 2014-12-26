function [freqo]=fc(datain,sr,tc),
% FC Frequency Counter to determine tach signal content
% 
% [freqency]=fc(input,samplerate,timeconstant)
% If no timeconstant is given, 1 second is assumed
% Output is frequency in Hertz (s^-1)

%D. Galvin 30 November 2001

error(nargchk(2,3,nargin));
if nargin==2,
    tc=1;
end;


%main
x=max(datain)-min(datain);  %normalize data to cross zero and run +/-1
x=x/2;
x2=max(datain)-x;
datain=datain-x2;
datain=datain/x;

a=datain(2:1:length(datain)); %1-step shift of data
b=datain(1:1:length(datain)-1);

ab=a.*b;
a=sign(a);
b=sign(b);
c=zeros(size(ab));
k=find(ab<=0);
c(k)=1;

%-----------------------------------------------------------------------------------
%  old way: ignore this
%a=round(a);  %round to nearest integer, if all zeros multiply input by constant
%b=round(b);
%c=abs(b-a);  %difference to look for zero crossing
%c=not(not(c));   %force to zeros and ones
%
%-----------------------------------------------------------------------------------

m=1;  %counter for while loop
while m*sr*tc < length(c),  %while loop that counts ones
    i1=floor(((m-1)*sr*tc)+1); %lower index
    i2=floor(m*sr*tc); %upper index
    rawsum(m)=sum(c(i1:i2));
    m=m+1;
end;
freqo=rawsum'/(2*tc);  %convert to hertz and eliminate double count ( rising AND falling edge count)

