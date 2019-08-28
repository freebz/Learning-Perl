# 더 나은 &max 루틴

$maximum = &max(3, 5, 10, 4, 6);

sub max {
    my($max_so_far) = shift @_;  # 일단 아직까지는 첫 번째 요소가 가장 큽니다.
    foreach (@_) {		 # 남은 인자를 하나씩 확인합니다.
	if ($_ > $max_so_far) {	 # 아직도 이 값이 제일 큰가요?
	    $max_so_far = $_;
	}
    }
    $max_so_far;
}
