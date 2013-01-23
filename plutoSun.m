%PLUTOSUN plutoSun is a function that takes into account the equation of
%   luminosity and converts the image to darker blue or lighter red.


%Chu Shao

function [ image ] = plutoSun( image, change )
newImage = image;


%Make image warmer
if change == 's'
    for i = 1:size(newImage,1)
        for j = 1:size(newImage,2)
            %Equation for luminance, R should be R * .33, G should be G *
            %.5 and B should be B * .16
            tempR = ((newImage(i,j,1) * 0.33) + (10 * .33));
            tempR = tempR/.33;
            tempG = ((newImage(i,j,2) * 0.5) + (10 * .5));
            tempG = tempG/.5;
            tempB = ((newImage(i,j,3) * 0.16) + (10 * .16));
            tempB = tempB/.16;
            newImage(i,j) = tempR + tempG + tempB;
            
        end
    end
end


%Make image cooler
if change == 'p'
    for i = 1:size(newImage,1)
        for j = 1:size(newImage,2)
            tempR = (-(newImage(i,j,1) * 0.33) - (10 * .33));
            tempR = tempR/.33;
            tempG = (-(newImage(i,j,2) * 0.5) - (10 * .5));
            tempG = tempG/.5;
            tempB = (-(newImage(i,j,3) * 0.16) - (10 * .16));
            tempB = tempB/.16;
            newImage(i,j) = tempR + tempG + tempB;
            
        end
    end
end
image = newImage;


end

