%PIKA Pika is a function that converts the nyanCat image into a Pikachu
%   NyanCat. It converts all of gray pixels to yellow and all of nyancat
%   Cheek pixels to red

%Chu Shao

function [ image ] = Pika( image )
yellow = image;
red = image;
tempImage = image;

%Creates a yellow palette
for i = 1:size(yellow,1)
    for j = 1:size(yellow,2)
        yellow(i,j,1) = 255;
        yellow(i,j,2) = 212;
        yellow(i,j,3) = 74;
    end
end

%Creates a red palette
i = 1;
while i <= size(red,1)
    for j = 1:size(red,2)
        red(i,j,1) = 255;
        red(i,j,2) = 0;
        red(i,j,3) = 0;
    end
    i = i + 1;
end

%Finds the grey or pinkish pixels and converts them to yellow and red
%respectively. 
filter = tempImage(:,:,1) == 135 & tempImage(:,:,2) == 135 & tempImage(:,:,3) == 135;
filter = cat(3,filter,filter,filter);
mashup = tempImage;
mashup(filter) = yellow(filter);
tempImage = mashup;
filter = tempImage(:,:,1) == 235 & tempImage(:,:,2) == 140 & tempImage(:,:,3) == 140;
filter = cat(3,filter,filter,filter);
mashup(filter) = red(filter);


image = mashup;






end

