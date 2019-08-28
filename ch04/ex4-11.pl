# return 연산자

my @names = qw/ fred barney betty dino wilma pebbles bamm-bamm /;
my $result = &which_element_is("dino", @names);

sub which_element_is {
    my($what, @array) = @_;
    foreach (0..$#array) { # @array 배열 요소의 첨자 목록입니다.
	if ($what eq $array[$_]) {
	    return $_;     # 원하는 값을 찾으면 일찍 반환합니다.
	}
    }
    -1;		    	   # 요소를 찾지 못했습니다.
    			   # 이 위치에서 return을 사용하는 것은 선택사항입니다.
}
