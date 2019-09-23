# Text::Wrap 모듈

use Text::Wrap;

my $message = "This is some sample text which may be longer "
            . "than the width of your output device, so it needs to "
            . "be wrapped to fit properly as a paragraph.   ";
$message x= 5;
print wrap("\t", "", "$message\n");
