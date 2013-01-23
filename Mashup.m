%MASHUP Mashup is a function that combines two different image and combines
%them together. 

%Chu Shao

function [ image ] = Mashup(image)

tempImage = image;
tiedye = imread('rainbow.jpg');

%Make sure white RGB layers are to be replaced. 
filter = tempImage(:,:,1) > 240 & tempImage(:,:,2) > 240 & tempImage(:,:,3) > 240;
filter = cat(3,filter,filter,filter);
mashup = tempImage;
mashup(filter) = tiedye(filter); 

image = mashup;

end

