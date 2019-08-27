# 스칼라 문맥과 목록 문맥

42 + something # something은 스칼라여야 합니다.
sort something # something은 목록이어야 합니다.


@people = qw( fred barney betty );
@sorted = sort @people; # 목록 문맥:   barney, betty, fred
$number = 42 + @people; # 스칼라 문맥: 42 + 3의 결과인 45


@list = @people; # 세 사람의 목록
$n    = @people; # 숫자 3
