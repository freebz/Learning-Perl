# 반복문 제어

# last 연산자

# 입력한 줄에서 __END__ 표식이 나올 때까지 fred가 나오는 모든 줄을 출력합니다.
while (<STDIN>) {
    if (/__END__/) {
	# No more input on or after this marker line
	last;
    } elsif (/fred/) {
	print;
    }
}
## last는 이곳으로 옵니다. #
