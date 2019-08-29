# 잘못된 파일 핸들

my $success = open LOG, ">>logfile";    # open의 반환 값을 저장합니다.
if ( ! $success ) {
    # The open failed
    ...
}
