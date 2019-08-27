# 목록 문맥에서의 <STDIN>

@lines = <STDIN>; # 목록 문맥에서 표준 입력을 읽습니다.


@lines = <STDIN>;    # 모든 줄을 읽어 들입니다.
chomp(@lines);	     # 모든 줄바꿈 문자를 제거합니다.


chomp(@lines = <STDIN>); # 줄바꿈 문자를 빼고 줄을 읽어 들입니다.
