# foreach 제어 구조

foreach $rock (qw/ bedrock slate lava /)  {
    print "One rock is $rock.\n"; # 세 개의 돌 이름을 출력합니다.
}


@rocks = qw/ bedrock slate lava /;
foreach $rock (@rocks) {
    $rock = "\t$rock";		     # @rocks에 존재하는 각 요소 앞에 탭 문자를 넣습니다.
    $rock .= "\n";		     # 각 요소 뒤에 줄바꿈 문자를 넣습니다.
}
print "The rocks are:\n", @rocks;    # 각각의 요소는 들여쓰기한 상태입니다.
