# localtime 함수

my $timestamp = 1180630098;
my $date = localtime $timestamp;


my($sec, $min, $hour, $day, $mon, $year, $wday, $yday, $isdst)
    = localtime $timestamp;


my $now = gmtime; # 현재의 유니버설 타임스탬프를 문자열로 변환합니다.
