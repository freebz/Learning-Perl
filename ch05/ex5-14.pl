# 표준 파일 핸들 다시 열기

# 오류를 자신의 고유 오류 로그로 보냅니다.
if ( ! open STDERR, ">>/home/barney/.error_log") {
    die "Can't open error log for append: $!";
}
