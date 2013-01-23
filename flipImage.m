%FLIPIMAGE flipImage flips the image horizontally and then applies an
%   invert color filter on the image. Calls on the matlab function fliplr


%Chu Shao

function [ image ] = flipImage( image )

newImage = image;
%Checks through the row of the image and calls on fliplr to receive the
%array to flip
for row = 1:size(image,1)
    newImage(row,:) = fliplr(image(row,:));
end

image = newImage;

end

