# 쉘의 실행 피하기

my $tarfile = "something*wicked.tar";
my @dirs = qw(fred|flintstone<barney&rubble> betty );
system "tar", "cvf", $tarfile, @dirs;


system "tar cvf $tarfile @dirs"; # 어이쿠!


system $command_line;
system "/bin/sh", "-c", $command_line;


system "/bin/csh", "-fc", $command_line;


unless (system "date") {
    # 반환 값이 0이면 명령 실행이 성공적이었다는 뜻입니다.
    print "We gave you a date. OK!\n";
}

!system "rm -rf files_to_delete" or die "something went wrong";
