# 선택 변경자 혼합해서 사용하기

if (/barney.*fred/is) { # /i와 /s 모두
    print "That string mentions Fred after Barney!\n";
}

if (m{
    barney # 목소리가 작은 사람
    .*     # 사이에 있는 모든 것
    fred   # 목소리가 큰 사람
}six) {    # /s 와 /i, /x 모두
    print "That string mentions Fred after Barney!\n";
}
