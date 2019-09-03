# /g를 사용한 전역 교체

$_ = "home, swet home!";
s/home/cave/g;
print "$_\n"; # "cave, sweet cave!"


$_ = "Input data\t may have extra whitespace.";
s/\s+/ /g; # 결과는 "Input data may have extra whitespace." 입니다.


s/^\s+//; # 앞부분의 공백을 제거합니다.
s/\s+$//; # 뒷부분의 공백을 제거합니다.


s/^\s+|\s+$//g; # 앞뒤의 공백을 제거합니다.
