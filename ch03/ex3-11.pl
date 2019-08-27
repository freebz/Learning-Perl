# reverse 연산자

@fred   = 6..10;
@barney = reverse(@fred);	# 10, 9, 8, 7, 6을 가집니다.
@wilma  = reverse 6..10;	# 위와 동일합니다.
			        # 별도의 배열 없이 바로 결과를 생성합니다.
@fred   = reverse @fred;	# 기존의 배열에 결과 값을 다시 집어넣습니다.


reverse @fred;			# 틀렸습니다! - @fred를 변경하지는 않습니다.
@fred = reverse @fred;		# 훨씬 낫네요.
