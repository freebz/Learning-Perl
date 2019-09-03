# s///로 치환하기

$_ = "He's out bowling with Barney tonight.";
s/Barney/Fred/; # Barney를 Fred로 바꿉니다.
print "$_\n";


# 앞의 예제에 이어지는 부분입니다.
# $_ 에는 "He's out bowling with Fred tonight."가 들어 있습니다.
s/Wilma/Betty/; # Wilma를 Betty로 바꿉니다.(실패)


s/with (\w+)/against $1's team/;
print "$_\n"; # He's out bowling against Fred's team tonight."을 출력합니다.


$_ = "green scaly dinosaur";
s/(\w+) (\w+)/$2, $1/; # "scaly, green dinosaur"가 됩니다.
s/^/huge, /;	       # "huge, scaly, green dinosaur"가 됩니다.
s/..*een//;	       # 빈 것으로 치환 : "huge dinosaur"가 됩니다.
s/green/red/;	       # 일치 실패 : 여전히 "huge dinosaur" 입니다.
s/\w+$/($`!)$&/;       # "huge(huge !)dinosaur"가 됩니다.
s/\s+(!\W+)/$1 /;      # "huge(huge!) dinosaur"가 됩니다.
s/huge/gigantic/;      # "gigantic(huge!) dinosaur"가 됩니다.


$_ = "fred flintstone";
if (s/fred/wilma/) {
  print "Successfully replaced fred with wilma!\n";
}
