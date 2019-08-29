# 호출 인자

@ARGV = qw# larry moe curly #;  # 이 세 개의 파일에서 강제로 읽어 들입니다.
while (<>) {
    chomp;
    print "It was $_ that I saw in some stooge-like file!\n";
}
