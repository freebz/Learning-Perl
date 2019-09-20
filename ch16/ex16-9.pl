# 시그널 보내고 받기

kill 2, 4201 or die "Cannot signal 4201 with SIGINT: $!";


unless (kill 0, $pid) {
    warn "$pid has gone away!";
}


my $temp_directory = "/tmp/myprog.$$"; # 이 위치에 파일을 생성합니다.
mkdir $temp_directory, 0700 or die "Cannot create $temp_directory: $!";

sub clean_up {
    unlink glob "$temp_directory/*";
    rmdir $temp_directory;
}

sub my_int_handler {
    &clean_up;
    dir "interrupted, exiting...\n";
}

$SIG{'INT'} = 'my_int_handler';
.
.   # 프로그램을 실행하고 시간이 흐른 후
.   # 임시 디렉터리에 몇 개의 임시 파일을 만듭니다.
.   # 그리고 누군가 컨트롤-C를 누를지도 모릅니다.
.
# 평범하게 실행했을 경우 이곳이 마지막 부분입니다.
&clean_up;


my $int_count;
sub my_int_handler { $int_count++ }
$SIG{'INT'} = 'my_int_handler';
...
  $int_count = 0;

while (<SOMEFILE>) {
    ... 수초가 걸리는 몇몇 처리 작업 ...
        if ($int_count) {
	    # 인터럽트가 발생했었습니다!
	    print "[processing interrupted...]\n";
	    last;
	}
}
