# 목록 할당

($fred, $barney, $dino) = ("flintstone", "rubble", undef);


($fred, $barney) = ($barney, $fred); # 두 값을 바꿉니다.
($betty[0], $betty[1]) = ($betty[1], $betty[0]);


($fred, $barney) = qw< flintstone rubble granite >; # 마지막 두 개의 요소를 무시
($wilma, $dino) = qw[flintstone];		    # $dino는 undef 값을 가짐


($rocks[0], $rocks[1], $rocks[2], $rocks[3]) = qw/talc mica feldspar quartz/;


@rocks  = qw/ bedrock slate lava /;
@tiny   = ( );			      # 빈 목록
@giant  = 1..1e5;		      # 100,000개의 요소를 가진 목록
@stuff  = (@giant, undef, @giant);    # 200,001개의 요소를 가진 목록
$dino   = "granite";
@quarry = (@rocks, "crushed rock", @tiny, $dino);


@copy = @quarry; # 배열에서 다른 배열로 목록을 복사합니다.
