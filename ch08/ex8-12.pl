# 패턴 테스트 프로그램

#!/usr/bin/perl
while (<>) {			          # 한 번에 한 줄씩 입력 받습니다.
    chomp;
    if (/YOUR_PATTERN_GOES_HERE/) {
	print "Matched: |$`<$&>$'|\n";    # 특수한 일치 변수들
    } else {
	print "No match: |$_|\n";
    }
}
