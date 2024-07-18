#!/usr/bin/octave
p=load('tmpship.csv');
d=FindEarthDistance(p(1:size(p,1)-1,:),p(2:size(p,1),:));
disp(d);

