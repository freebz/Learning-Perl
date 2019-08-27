# 특별한 배열 첨자

$rocks[0]  = 'bedrock';		# 하나의 요소...
$rocks[1]  = 'slate';		# 다음 요소...
$rocks[2]  = 'lava';		# 또 다음 요소...
$rocks[3]  = 'crushed rock';	# 또 다음 요소...
$rocks[99] = 'schist';		# 이제 95개의 undef 요소가 있습니다.


$end = $#rocks;			    # 99, 마지막 요소의 첨자입니다.
$number_of_rocks = $end + 1;	    # 록 음악의 개수입니다.
                                    # 배열의 개수를 표현하는 더 나은 방법은
                                    # 이후에 소개합니다.
$rocks[ $#rocks ] = 'hard rock';    # 마지막 록입니다.


$rocks[ -1 ]   = 'hard rock';	# 마지막 록에 접근하는 더 쉬운 방법
                                # $rocks[ $#rocks ]와 동일합니다.
$dead_rock     = $rocks[-100];	# 첫 번째 록인 'bedrock'을 얻습니다.
$rocks[ -200 ] = 'crystal';	# 치명적 에러!
