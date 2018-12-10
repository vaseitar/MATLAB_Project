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
hold
histogram(r,'facecolor','r')
histogram(g,'facecolor','g')
histogram(b,'facecolor','b')
set(gca,'fontsize',12)
title('Green')

figure
imshow(green)
title('Green');



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

figure
imshow(red)
title('red');



orange=m(734:782,174:225,:);
r=orange(:,:,1);
g=orange(:,:,2);
b=orange(:,:,3);

figure
hold
histogram(r,'facecolor','r')
histogram(g,'facecolor','g')
histogram(b,'facecolor','b')
set(gca,'fontsize',12)
title('Orange')

figure
imshow(orange)
title('orange');



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

figure
imshow(yellow)
title('yellow');



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

figure
imshow(blue)
title('blue');



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

figure
imshow(brown)
title('brown');

%% Part 3
r = m(:,:,1);
g = m(:,:,2);
b = m(:,:,3);
[x y] = size(m);

% find and remove what isn't green
notgreen = find(not(g>b & g>r & g-r>b));
temp = m;
temp(notgreen) = 252;
temp(notgreen+x*y/3) = 252;
temp(notgreen+2*x*y/3) = 252;
figure
imshow(temp);
title('Green Bear');

% find and remove what isn't red
notred = find(not(r>b & r>g & g-b<r-g));
temp = m;
temp(notred) = 252;
temp(notred+x*y/3) = 252;
temp(notred+2*x*y/3) = 252;
figure
imshow(temp);
title('Red Bear');

% find and remove what isn't orange
notorange = find(not(r>b & r>g & g-b<r-g));
temp = m;
temp(notorange) = 252;
temp(notorange+x*y/3) = 252;
temp(notorange+2*x*y/3) = 252;
figure
imshow(temp);
title('Orange Bear');

% find and remove what isn't yellow
notyellow = find(not(r>b & g>b & g-b>=r-g & r-g<r & g-b<r & r-b>b));
temp = m;
temp(notyellow) = 252;
temp(notyellow+x*y/3) = 252;
temp(notyellow+2*x*y/3) = 252;
figure
imshow(temp);
title('Yellow Bear');

% find and remove what isn't blue
notblue = find(not(g>r & b>r & abs(b-r) > abs(g-r)));
temp = m;
temp(notblue) = 252;
temp(notblue+x*y/3) = 252;
temp(notblue+2*x*y/3) = 252;
figure
imshow(temp);
title('Blue Bear');

% find and remove what isn't brown
notbrown = find(not(r>b & r>g & g-b>r-g));
temp = m;
temp(notbrown) = 252;
temp(notbrown+x*y/3) = 252;
temp(notbrown+2*x*y/3) = 252;
figure
imshow(temp);
title('Brown Bear');