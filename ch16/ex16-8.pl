# 포크를 이용한 속임수

system "date";


defined(my $pid = fork) or die "Cannot fork: $!";
unless ($pid) {
    # 여기서부터 자식 프로세스입니다.
    exec "date";
    die "cannot exec date: $!";
}
# 여기서부터 부모 프로세스입니다.
waitpid($pid, 0);
