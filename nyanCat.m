%NYANCAT NyanCat is a program that loops through the nyanCat gif while it
%   plays the music. There are many functions that you can press once the
%   animation starts!
%   Controls: (press these keys anytime while it's looping
%       r - reset nyancat, set it back to it's original glorious self
%       q - quit. 
%       1 - see the Red Layer of NyanCat
%       2 - see the Green Layer of NyanCat
%       3 - see the Blue Layer of NyanCat
%       e - apply edge detection on NyanCat
%       i - flips and invert NyanCat
%       f - Creates Fireworks around NyanCat
%       h - Make NyanCat Fly more and more to the sun and making him HOT!
%       c - Make NyanCat Fly more and more to Pluto and make him COLD!
%       p - Make NyanCat into NyanPikachu

%Chu Shao
function nyanCat


%Load ALL the pictures!
nyanCat00 = imread('NyanCat-00.png');
nyanCat01 = imread('NyanCat-01.png');
nyanCat02 = imread('NyanCat-02.png');
nyanCat03 = imread('NyanCat-03.png');
nyanCat04 = imread('NyanCat-04.png');
nyanCat1 = imread('NyanCat-1.png');
nyanCat2 = imread('NyanCat-2.png');
nyanCat3 = imread('NyanCat-3.png');
nyanCat4 = imread('NyanCat-4.png');
nyanCat5 = imread('NyanCat-5.png');
nyanCat6 = imread('NyanCat-6.png');
nyanCat7 = imread('NyanCat-7.png');
nyanCat8 = imread('NyanCat-8.png');
nyanCat9 = imread('NyanCat-9.png');
nyanCat10 = imread('NyanCat-10.png');
nyanCat11 = imread('NyanCat-11.png');
nyanCat12 = imread('NyanCat-12.png');

%Load and play music!
[nyaa, Fz] = wavread('Nyan.wav');
nyaaPlayer = audioplayer(nyaa, Fz);
play(nyaaPlayer);


i = 1;
%Set a UI layer so that keys can be pressed
f = figure('KeyPressFcn', @key);

%Initialize NyanCat Build! Match the beat to the song
imshow(nyanCat00);
drawnow;
pause(1.1);
imshow(nyanCat01);
drawnow;
pause(1);
imshow(nyanCat02);
drawnow;
pause(1);
imshow(nyanCat03);
drawnow;
pause(1);
imshow(nyanCat04);
drawnow;
pause(1);

%Check if handle exists
while ishandle(f) && i ~= 0 
    
    imshow(nyanCat1);
    drawnow;
    imshow(nyanCat2);
    drawnow;
    imshow(nyanCat3);
    drawnow;
    imshow(nyanCat4);
    drawnow;
    imshow(nyanCat5);
    drawnow;
    imshow(nyanCat6);
    drawnow;
    imshow(nyanCat7);
    drawnow;
    imshow(nyanCat8);
    drawnow;
    imshow(nyanCat9);
    drawnow;
    imshow(nyanCat10);
    drawnow;
    imshow(nyanCat11);
    drawnow;
    imshow(nyanCat12);
    drawnow;
end

%Closes handle if it ends
if ishandle(f)
    close(f);
end

%Nested Functions! YAYYYYYYYY!
    %Function that checks for keypressfcn keystrokes
    function key(~, event)
        
        switch event.Key
            case 'q' %quit
                i = 0;
                stop(nyaaPlayer);
                return;
            case 'r' %reset
                nyanCat1 = imread('NyanCat-1.png');
                nyanCat2 = imread('NyanCat-2.png');
                nyanCat3 = imread('NyanCat-3.png');
                nyanCat4 = imread('NyanCat-4.png');
                nyanCat5 = imread('NyanCat-5.png');
                nyanCat6 = imread('NyanCat-6.png');
                nyanCat7 = imread('NyanCat-7.png');
                nyanCat8 = imread('NyanCat-8.png');
                nyanCat9 = imread('NyanCat-9.png');
                nyanCat10 = imread('NyanCat-10.png');
                nyanCat11 = imread('NyanCat-11.png');
                nyanCat12 = imread('NyanCat-12.png');
            case 'e' %edge detect
                nyanCat1 = edgeDetect(nyanCat1);
                nyanCat2 = edgeDetect(nyanCat2);
                nyanCat3 = edgeDetect(nyanCat3);
                nyanCat4 = edgeDetect(nyanCat4);
                nyanCat5 = edgeDetect(nyanCat5);
                nyanCat6 = edgeDetect(nyanCat6);
                nyanCat7 = edgeDetect(nyanCat7);
                nyanCat8 = edgeDetect(nyanCat8);
                nyanCat9 = edgeDetect(nyanCat9);
                nyanCat10 = edgeDetect(nyanCat10);
                nyanCat11 = edgeDetect(nyanCat11);
                nyanCat12 = edgeDetect(nyanCat12);
            case 'i' %flips and inverts nyanCat
                nyanCat1 = flipImage(nyanCat1);
                nyanCat2 = flipImage(nyanCat2);
                nyanCat3 = flipImage(nyanCat3);
                nyanCat4 = flipImage(nyanCat4);
                nyanCat5 = flipImage(nyanCat5);
                nyanCat6 = flipImage(nyanCat6);
                nyanCat7 = flipImage(nyanCat7);
                nyanCat8 = flipImage(nyanCat8);
                nyanCat9 = flipImage(nyanCat9);
                nyanCat10 = flipImage(nyanCat10);
                nyanCat11 = flipImage(nyanCat11);
                nyanCat12 = flipImage(nyanCat12);
            case '1' %Makes image red!
                nyanCat1 = RGBLayer(nyanCat1,1);
                nyanCat2 = RGBLayer(nyanCat2,1);
                nyanCat3 = RGBLayer(nyanCat3,1);
                nyanCat4 = RGBLayer(nyanCat4,1);
                nyanCat5 = RGBLayer(nyanCat5,1);
                nyanCat6 = RGBLayer(nyanCat6,1);
                nyanCat7 = RGBLayer(nyanCat7,1);
                nyanCat8 = RGBLayer(nyanCat8,1);
                nyanCat9 = RGBLayer(nyanCat9,1);
                nyanCat10 = RGBLayer(nyanCat10,1);
                nyanCat11 = RGBLayer(nyanCat11,1);
                nyanCat12 = RGBLayer(nyanCat12,1);
            case '2' %Makes image green!
                nyanCat1 = RGBLayer(nyanCat1,2);
                nyanCat2 = RGBLayer(nyanCat2,2);
                nyanCat3 = RGBLayer(nyanCat3,2);
                nyanCat4 = RGBLayer(nyanCat4,2);
                nyanCat5 = RGBLayer(nyanCat5,2);
                nyanCat6 = RGBLayer(nyanCat6,2);
                nyanCat7 = RGBLayer(nyanCat7,2);
                nyanCat8 = RGBLayer(nyanCat8,2);
                nyanCat9 = RGBLayer(nyanCat9,2);
                nyanCat10 = RGBLayer(nyanCat10,2);
                nyanCat11 = RGBLayer(nyanCat11,2);
                nyanCat12 = RGBLayer(nyanCat12,2);
            case '3' %Makes image blue!
                nyanCat1 = RGBLayer(nyanCat1,3);
                nyanCat2 = RGBLayer(nyanCat2,3);
                nyanCat3 = RGBLayer(nyanCat3,3);
                nyanCat4 = RGBLayer(nyanCat4,3);
                nyanCat5 = RGBLayer(nyanCat5,3);
                nyanCat6 = RGBLayer(nyanCat6,3);
                nyanCat7 = RGBLayer(nyanCat7,3);
                nyanCat8 = RGBLayer(nyanCat8,3);
                nyanCat9 = RGBLayer(nyanCat9,3);
                nyanCat10 = RGBLayer(nyanCat10,3);
                nyanCat11 = RGBLayer(nyanCat11,3);
                nyanCat12 = RGBLayer(nyanCat12,3);
            case 'f' %Fireworks around Nyancat!
                nyanCat1 = Mashup(nyanCat1);
                nyanCat2 = Mashup(nyanCat2);
                nyanCat3 = Mashup(nyanCat3);
                nyanCat4 = Mashup(nyanCat4);
                nyanCat5 = Mashup(nyanCat5);
                nyanCat6 = Mashup(nyanCat6);
                nyanCat7 = Mashup(nyanCat7);
                nyanCat8 = Mashup(nyanCat8);
                nyanCat9 = Mashup(nyanCat9);
                nyanCat10 = Mashup(nyanCat10);
                nyanCat11 = Mashup(nyanCat11);
                nyanCat12 = Mashup(nyanCat12);
            case 'p' %Pikachu Nyan!
                nyanCat1 = Pika(nyanCat1);
                nyanCat2 = Pika(nyanCat2);
                nyanCat3 = Pika(nyanCat3);
                nyanCat4 = Pika(nyanCat4);
                nyanCat5 = Pika(nyanCat5);
                nyanCat6 = Pika(nyanCat6);
                nyanCat7 = Pika(nyanCat7);
                nyanCat8 = Pika(nyanCat8);
                nyanCat9 = Pika(nyanCat9);
                nyanCat10 = Pika(nyanCat10);
                nyanCat11 = Pika(nyanCat11);
                nyanCat12 = Pika(nyanCat12);
            case 'h' %make nyanCat hotter He's going towards the sun!
                nyanCat1 = plutoSun(nyanCat1, 's');
                nyanCat2 = plutoSun(nyanCat2, 's');
                nyanCat3 = plutoSun(nyanCat3, 's');
                nyanCat4 = plutoSun(nyanCat4, 's');
                nyanCat5 = plutoSun(nyanCat5, 's');
                nyanCat6 = plutoSun(nyanCat6, 's');
                nyanCat7 = plutoSun(nyanCat7, 's');
                nyanCat8 = plutoSun(nyanCat8, 's');
                nyanCat9 = plutoSun(nyanCat9, 's');
                nyanCat10 = plutoSun(nyanCat10, 's');
                nyanCat11 = plutoSun(nyanCat11, 's');
                nyanCat12 = plutoSun(nyanCat12, 's');
            case 'c' %make nyanCat colder. He's going to pluto!
                nyanCat1 = plutoSun(nyanCat1, 'p');
                nyanCat2 = plutoSun(nyanCat2, 'p');
                nyanCat3 = plutoSun(nyanCat3, 'p');
                nyanCat4 = plutoSun(nyanCat4, 'p');
                nyanCat5 = plutoSun(nyanCat5, 'p');
                nyanCat6 = plutoSun(nyanCat6, 'p');
                nyanCat7 = plutoSun(nyanCat7, 'p');
                nyanCat8 = plutoSun(nyanCat8, 'p');
                nyanCat9 = plutoSun(nyanCat9, 'p');
                nyanCat10 = plutoSun(nyanCat10, 'p');
                nyanCat11 = plutoSun(nyanCat11, 'p');
                nyanCat12 = plutoSun(nyanCat12, 'p');
                
                                
        end
        
    end




end

