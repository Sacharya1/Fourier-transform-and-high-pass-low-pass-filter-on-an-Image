% This sample project include three functions:				
%   1. Add intensity for gray-level image.					
%      Input: source image, output image name, value			
%  															
%   2. Image thresholding: pixels will become black if the intensity is below the threshold, and white if above or equal the threhold.								
%      Input: source image, output image name, threshold		
%  															
%   3. Image scaling: reduction/expansion of 2 for the width and length. This project uses averaging technique for reduction and pixel replication technique for expansion.								
%      Input: source image, output image name, scale factor

fid=fopen('parameters.txt');
str=fgets(fid);
while str~=-1
    str=strsplit(str,' ');
    filename=str{1};
    output=str{2};
    operation=str{3};
  
   
    if strcmp(operation,'LPF')
        M = str2double(str([4,5,6,7,8]));
        X = M(1); Y = M(2); Sx = M(3); Sy = M(4);R1 = M(5);
        img=imread(filename);
        imgout=LPF(img,X,Y,Sx,Sy,R1);
        imwrite(imgout,output);
        
    elseif strcmp(operation,'LPF1')
        M = str2double(str([4,5,6,7,8]));
        X1 = M(1); Y1 = M(2); Sx1 = M(3); Sy1 = M(4);R2 = M(5);
        img=imread(filename);
        imgout=LPF(img,X1,Y1,Sx1,Sy1,R2);
        imwrite(imgout,output);
        if ((X1>=X && X<=X1<=X+Sx)&&(Y1>=Y && Y1<=Y+Sy)) 
        elseif((X1<0 && X1>rows) && (Y1<0 && Y1>cols))
            error('Change the input values')
        end
    elseif strcmp(operation,'LPF2')
        M = str2double(str([4,5,6,7,8]));
        X2 = M(1); Y2 = M(2); Sx2 = M(3); Sy2 = M(4);R3 = M(5);
        img=imread(filename);
        imgout=LPF(img,X2,Y2,Sx2,Sy2,R3);
        imwrite(imgout,output);
        if ((X2>=X1 && X1<=X2<=X1+Sx1)&&(Y2>=Y1 && Y2<=Y1+Sy1)) or((X2<0 && X2>rows) && (Y2<0 && Y2>cols))
            error('Change the input values')
        elseif(X2>=X1 && X1<=X2<=X1+Sx1)&&(Y2>=Y1 && Y2<=Y1+Sy1)
            error('Change the input values')
        end
    elseif strcmp(operation,'HPF')
        M = str2double(str([4,5,6,7,8]));
        X = M(1); Y = M(2); Sx = M(3); Sy = M(4);R1 = M(5);
        img=imread(filename);
        imgout=HPF(img,X,Y,Sx,Sy,R1);
        imwrite(imgout,output);
        
    elseif strcmp(operation,'HPF1')
        M = str2double(str([4,5,6,7,8]));
        X1 = M(1); Y1 = M(2); Sx1 = M(3); Sy1 = M(4);R2 = M(5);
        img=imread(filename);
        imgout=HPF(img,X1,Y1,Sx1,Sy1,R2);
        imwrite(imgout,output);
        if ((X1>=X && X<=X1<=X+Sx)&&(Y1>=Y && Y1<=Y+Sy)) 
        elseif((X1<0 && X1>rows) && (Y1<0 && Y1>cols))
            error('Change the input values')
        end
    elseif strcmp(operation,'HPF2')
        M = str2double(str([4,5,6,7,8]));
        X2 = M(1); Y2 = M(2); Sx2 = M(3); Sy2 = M(4);R3 = M(5);
        img=imread(filename);
        imgout=HPF(img,X2,Y2,Sx2,Sy2,R3);
        imwrite(imgout,output);
        if ((X2>=X1 && X1<=X2<=X1+Sx1)&&(Y2>=Y1 && Y2<=Y1+Sy1)) or((X2<0 && X2>rows) && (Y2<0 && Y2>cols))
            error('Change the input values')
        elseif(X2>=X1 && X1<=X2<=X1+Sx1)&&(Y2>=Y1 && Y2<=Y1+Sy1)
            error('Change the input values')
        end
 elseif strcmp(operation,'BSF')
        M = str2double(str([4,5,6,7,8,9]));
        X = M(1); Y = M(2); Sx = M(3); Sy = M(4);R1 = M(5);RR1=M(6);
        img=imread(filename);
        imgout=BSF(img,X,Y,Sx,Sy,R1,RR1);
        imwrite(imgout,output);
    elseif strcmp(operation,'BSF1')
        M = str2double(str([4,5,6,7,8,9]));
        X1 = M(1); Y1 = M(2); Sx1 = M(3); Sy1 = M(4);R2 = M(5);RR2=M(6);
        img=imread(filename);
        imgout=BSF(img,X1,Y1,Sx1,Sy1,R2,RR2);
        imwrite(imgout,output);
        if ((X1>=X && X<=X1<=X+Sx)&&(Y1>=Y && Y1<=Y+Sy)) 
        elseif((X1<0 && X1>rows) && (Y1<0 && Y1>cols))
            error('Change the input values')
        end
    elseif strcmp(operation,'BSF2')
        M = str2double(str([4,5,6,7,8,9]));
        X2 = M(1); Y2 = M(2); Sx2 = M(3); Sy2 = M(4);R3 = M(5);RR3=M(6);
        img=imread(filename);
        imgout=BSF(img,X2,Y2,Sx2,Sy2,R3,RR3);
        imwrite(imgout,output);
        if ((X2>=X1 && X1<=X2<=X1+Sx1)&&(Y2>=Y1 && Y2<=Y1+Sy1)) or((X2<0 && X2>rows) && (Y2<0 && Y2>cols))
            error('Change the input values')
        elseif(X2>=X1 && X1<=X2<=X1+Sx1)&&(Y2>=Y1 && Y2<=Y1+Sy1)
            error('Change the input values')
        end
        else
        fprintf('No function: %s\n', operation);
    end
    
    str=fgets(fid);
end