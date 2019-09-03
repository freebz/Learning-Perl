# 패턴에서의 보간

#!/usr/bin/perl -w
my $what = "larry";

while (<>) {
    if (/^($what)/) { # 문자열의 시작 부분에 패턴을 고정시킵니다.
	print "We saw $what in beginning of $_";
    }
}


my $what = shift @ARGV;
