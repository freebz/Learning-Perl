# 스칼라 문맥에서 목록을 생성하는 표현식 사용하기

@backwards = reverse qw/ yabba dabba doo /;
    # doo, dabba, yabba를 반환합니다.
$backwards = reverse qw/ yabba dabba doo /;
    # oodabbadabbay를 반환합니다.


$fred = something;		# 스칼라 문맥
@pebbles = something;		# 목록 문맥
($wilma, @betty) = something;	# 목록 문맥
($dino) = something;		# 아직도 목록 문맥!


$fred = something;
$fred[3] = something;
123 + something
something + 654
if (something) { ... }
while (something) { ... }
$fred[something] = something;


@fred = something;
($fred, $barney) = something;
($fred) = something;
push @fred, something;
foreach $fred (something) { ... }
sort something
reverse something
print something
