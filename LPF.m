function output=LPF(img,X,Y,Sx,Sy,R)

% img=imread('lena.pgm');
% img=double(img);

% R=10;
% RR=10;
% [i,j]=size(img);


F=fft2(img(X:X+Sx,Y:Y+Sy));
[rows,cols]=size(F);
for r=1:rows
    for c=1:cols
%         H=zeros(r,c);
        if (r-rows/2)^2+(c-cols/2)^2 <R^2
            H(r,c)=1;
        else H(r,c)=0;
        end
    end
end
H=ifftshift(H);


Fsh=fftshift(F);
M=log(1+abs(Fsh));

figure,imshow(M,[]);
% imshow(F,[]);
G=H.*F;
GFsh=fftshift(G);
N=log(1+abs(GFsh));
figure,imshow(N,[]);
g=real(ifft2(G));
% disp(G);
figure,imshow(g,[]);
img(X:X+Sx,Y:Y+Sy)= g;
output=img;
imshow(img);
end