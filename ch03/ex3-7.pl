# shift와 unshift 연산자

@array = qw# dino fred barney #;
$m = shift(@array);		# $m은 "dino", @array는 ( "fred", "barney" )
$n = shift @array;		# $n은 "fred", @array는 ( "barney" )
shift @array;			# @array는 비어있음
$o = shift @array;		# $o는 undef, @array는 여전히 비어있음
unshift(@array, 5);		# @array는 하나의 요소를 가진 목록 ( 5 )
unshift @array, 4;		# @array는 (4, 5)
@others = 1..3;
unshift @array, @others;	# @array는 ( 1, 2, 3, 4, 5 )
