%RGBLAYER RGBLayer is similar to the original RGBLayer we worked on as an
%   assignment. It extracts either R G or B of each image.


%Chu Shao

function [ image ] = RGBLayer( image, num )
newImage = image;
%RGB in that order
if num == 1
    newImage(:,:,2:3) = 0;
elseif num == 2
    newImage(:,:,1) = 0;
    newImage(:,:,3) = 0;
elseif num == 3
    newImage(:,:,1:2) = 0;
end
image = newImage;
end

