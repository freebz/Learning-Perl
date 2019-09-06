# next 연산자

# 입력 받은 파일(들)에서 단어를 분석합니다.
while (<>) {
    foreach (split) { # $_를 단어로 쪼개서 각각을 매번 $_에 할당합니다.
	$total++;
	next if /\W/; # 이상한 단어가 있으면 반복문의 나머지 부분을 건너뜁니다.
	$valid++;
	$count{$_}++; # 구분한 각각의 단어를 셉니다.
	## next는 이곳으로 옵니다. ##
    }
}

print "total things = $total, valid words = $valid\n";
foreach $word (sort keys %count) {
    print "$word was seen $count{$word} times.\n";
}
