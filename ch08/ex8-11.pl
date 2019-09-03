# 자동 일치 변수

if ("Hello there, neighbor" =~ /\s(\w+),/) {
    print "That actually matched '$&'.\n";
}


if ("Hello there, neighbor" =~ /\s(\w+),/) {
    print "That was ($`)($&)($').\n";
}


print "Matched: |$`<$&>$'|\n"; # 세 개의 자동 일치 변수
