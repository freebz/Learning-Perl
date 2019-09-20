# 파일 핸들에 프로세스 연결하기

open DATE, "date|" or die "cannot pipe from date: $!";
open MAIL, "|mail merlyn" or die "cannot pipe to mail: $!";


my $now = <DATE>;


print MAIL "The time is now $now"; # $now가 줄바꿈 문자로
				   # 끝나리라고 예상합니다.


close MAIL;
die "mail: non-zero exit of $?" if $?;


open F, "find / -atime +90 -size +1000 -print|" or die "fork: $!";
while (<F>) {
    chomp;
    printf "%s size %dK last accessed on %s\n",
        $_, (1023 + -s $_)/1024, -A $_;
}
