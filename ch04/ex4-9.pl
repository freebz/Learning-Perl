# 렉시컬(my) 변수에 대한 노트

foreach (1..10) {
    my($square) = $_ * $_; # 현재 반복문 안의 사설 변수
    print "$_ squared is $square.\n";
}


my($num) = @_;  # 목록 문맥으로 ($num) = @_;와 동일합니다.
my $num  = @_;  # 스칼라 문맥으로 $num = @_;와 동일합니다.


my $fred, $barney;  # 틀렸습니다!
		    # $barney 변수를 정의하는 데 실패했습니다.
my($fred, $barney); #  $fred 와 $barney 양쪽 모두 선언합니다.


my @phone_number;
