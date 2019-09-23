# Image::Size 모듈

use Image::Size;

# fred.png의 크기를 구합니다.
my($fred_height, $fred_width) = imgsize("fred.png");
dir "Couldn't get size of the image"
    unless defined $fred_height;
