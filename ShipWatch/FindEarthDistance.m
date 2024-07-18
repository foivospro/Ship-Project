#!/usr/bin/octave
% FindEarthDistance(P1,P2)  calculate the distance in meters between two points P1 P2 on earth
% P1=[lat1,lon1]
% P2=[lat2,lon2] All coordinates should be given in decimal degrees.
% This function works with P1 and P2 containing ONE line
function D=FindEarthDistance(P1,P2)
R=6371e3;
df=P2(:,1)-P1(:,1);
dl=P2(:,2)-P1(:,2);
a=(sind(df/2)).^2+cosd(P1(:,1)).*cosd(P2(:,1)).*(sind(dl/2)).^2;
c=2* atan2(sqrt(a),sqrt(1-a));
D=sum(R*c);
endfunction

