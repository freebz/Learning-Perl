# 라벨을 단 블록

LINE: while (<>) {
    foreach (split) {
	last LINE if /__END__/; # LINE 반복문을 탈출합니다.
	...
    }
}
