# 스칼라 이외의 반환 값

sub list_from_fred_to_barney {
    if ($fred < $barney) {
	# $fred에서 $barney까지 오름차순으로 숫자를 셉니다.
	$fred..$barney;
    } else {
	# $fred에서 $barney까지 내림차순으로 숫자를 셉니다.
	reverse $barney..$fred;
    }
}

$fred = 11;
$barney = 6;
@c = &list_from_fred_to_barney; # @c는 (11, 10, 9, 8, 7, 6) 값을 가집니다.
