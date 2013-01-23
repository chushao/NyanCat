%EDGEDETECT EdgeDetect is a file that takes in an image and converts it to
%   black and white, then applies a basic edge detection algorithm. This utilizes 
%   a function that we used for an assignment, but modified. 

%Chu Shao

function [ image ] = edgeDetect(image)

%Sets up the image for edge detection
bw = rgb2gray(image); 
newim = uint8(zeros(size(image))); 
newim = newim(:,:,1); 

for row = 1:size(image,1) 
    for col = 1:size(image,2) 
        try %Check for out of bounds and returns false if MATLAB catches an error
            bw(row,col);
        catch err
            if (strcmp(err.identifier, 'MATLAB:badsubscript')) 
                bool = false; 
                return;
            else
                throw(err);
            end
        end
        
        %Checks pixel. If it exists then return true if the pixel at
        %(row,col) is darker than the pixel by 30. Utilizes same statement
        %except for top down left right 
        if (row+1 <= size(bw,1)) && ((bw(row+1,col) - bw(row,col)) > 30)
            bool = true;
        elseif (row-1 ~= 0) && ((bw(row-1,col) - bw(row,col)) > 30)
            bool = true;
        elseif (col+1  <= size(bw,2)) && ((bw(row,col+1) - bw(row,col)) > 30)
            bool = true;
        elseif (col-1 ~= 0) && ((bw(row,col-1) - bw(row,col)) > 30)
            bool = true;
        else
            bool = false;
        end
        
        %If True then is Edge, else, not edge
        if bool == true  
            newim(row,col) = 0; 
        elseif bool == false  
            newim(row,col) = 255; 
        end
    end
end
image = newim;

end

