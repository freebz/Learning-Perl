# 패턴 묶기

$_ = "abba";
if (/(.)\1/) { # 'bb'와 일치합니다.
    print "It matched same character next to itself!\n";
}


$_ = "yabba dabba doo";
if (/y(....) d\1/) {
    print "It matched the same after y and d!\n";
}


$_ = "yabba dabba doo";
if (/y(.)(.)\2\1/) { # 'abba'와 일치합니다.
    print "It matched a after y \n";
}


$_ = "yabba dabba doo";
if (/y((.)(.)\3\2) d\1/) {
    print "It matched!\n";
}


(        # 첫 번째 열린 괄호
    (.)  # 두 번째 열린 괄호
    (.)  # 세 번째 열린 괄호
    \3
    \2
)


$_ = "aa11bb";
if (/(.)\111/) {
    print "It matched!\n";
}


use 5.010;

$_ = "aa11bb";
if (/(.)\g{1}11/) {
    print "It matched!\n";
}


use 5.010;

$_ = "aa11bb";
if (/(.)\g{-1}11/) {
    print "It matched!\n";
}


use 5.010;

$_ = "xx11bb";
if (/(.)(.)\g{-1}11/) {
    print "It matched!\n";
}
