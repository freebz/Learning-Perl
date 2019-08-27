# pop과 push 연산자

@array  = 5..9;
$fred   = pop(@array);		# $fred는 9, 그 후 @array는 (5, 6, 7, 8)
$barney = pop @array;		# $barney는 8, 그 후 @array는 (5, 6, 7)
pop @array;			# 이제 @array는 (5, 6). (7은 버려버립니다)


push(@array, 0);		# @array는 (5, 6, 0)
push @array, 8;			# @array는 (5, 6, 0, 8)
push @array, 1..10;		# @array는 10개의 새로운 요소를 가짐
@others = qw/ 9 0 2 1 0 /;
push @array, @others;		# @array는 5개의 새로운 요소를 가짐(총 19개)
