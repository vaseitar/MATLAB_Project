%% ECE 2409-002
%% Final Project
%% Mark Willis & Vasilios Seitaridis

Published = datestr(now, 21)
clc; clear; close all;
%% Part 1
m=imread('FinalProjectPicture.jpg');
imshow(m)

green=m(383:429,81:135,:);
r=green(:,:,1);
g=green(:,:,2);
b=green(:,:,3);

figure
histogram(r,'facecolor','r')
hold
histogram(g,'facecolor','g')
histogram(b,'facecolor','b')
set(gca,'fontsize',12)
title('Green')

hold
red=m(501:543,1065:1108,:);
r=red(:,:,1);
g=red(:,:,2);
b=red(:,:,3);

figure
histogram(r,'facecolor','r')
hold
histogram(g,'facecolor','g')
histogram(b,'facecolor','b')
set(gca,'fontsize',12)
title('Red')

hold
orange=m(734:782,174:225,:);
r=orange(:,:,1);
g=orange(:,:,2);
b=orange(:,:,3);

figure
histogram(r,'facecolor','r')
hold
histogram(g,'facecolor','g')
histogram(b,'facecolor','b')
set(gca,'fontsize',12)
title('Orange')

hold
yellow=m(633:678,939:991,:);
r=yellow(:,:,1);
g=yellow(:,:,2);
b=yellow(:,:,3);

figure
histogram(r,'facecolor','r')
hold
histogram(g,'facecolor','g')
histogram(b,'facecolor','b')
set(gca,'fontsize',12)
title('Yellow')

hold
blue=m(809:861,927:978,:);
r=blue(:,:,1);
g=blue(:,:,2);
b=blue(:,:,3);

figure
histogram(r,'facecolor','r')
hold
histogram(g,'facecolor','g')
histogram(b,'facecolor','b')
set(gca,'fontsize',12)
title('Blue')

hold
brown=m(573:615,346:390,:);
r=brown(:,:,1);
g=brown(:,:,2);
b=brown(:,:,3);

figure
histogram(r,'facecolor','r')
hold
histogram(g,'facecolor','g')
histogram(b,'facecolor','b')
set(gca,'fontsize',12)
title('Brown')
