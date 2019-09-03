# 대소문자 변경

$_ = "I saw Barney with Fred.";
s/(fred|barney)/\U$1/gi; # 이제 $_는 "I saw BARNEY with FRED."입니다.


s/(fred|barney)/\L$1/gi; # 이제 $_는 "I saw barney with fred."입니다.


s/(\w+) with (\w+)/\U$2\E with $1/i; # 이제 $_는 "I saw FRED with barney."입니다.


s/(fred|barney)/\u$1/ig; # 이제 $_는 "I saw FRED with Barney."입니다.


s/(fred|barney)/\u\L$1/ig; # 이제 $_는 "I saw Fred with Barney."입니다.


print "Hello, \L\u$name\E, would you like to play a game?\n";
