# chomp 연산자

$text = "a line of text\n"; # 또는 <STDIN>에서 같은 문자열을 입력받습니다.
chomp($text);		    # 줄바꿈 문자를 제거합니다.


chomp($text = <STDIN>);	    # 줄바꿈 문자 없이, 텍스트를 읽습니다.

$text = <STDIN>;	    # 동일한 의미입니다.
chomp($text);		    # ...다만 두 줄이죠.


$food = <STDIN>;
@betty = chomp $food; # 1을 받습니다. - 아시다시피요!
