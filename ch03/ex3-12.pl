# sort 연산자

@rocks   = qw/ bedrock slate rubble granite /;
@sorted  = sort(@rocks);            # bedrock, granite, rubble, slate가 들어갑니다.
@back    = reverse sort @rocks;     # slate부터 bedrock까지 역순으로 들어갑니다.
@rocks   = sort @rocks;		    # @rocks를 정렬해서 다시 @rocks에 넣습니다.
@numbers = sort 97..102;	    # 100, 101, 102, 97, 98, 99가 들어갑니다.


sort @rocks;			# 틀렸습니다! - @rocks는 그대로입니다.
@rocks = sort @rocks;		# 이제야 락 컬렉션이 순서를 갖췄습니다.
