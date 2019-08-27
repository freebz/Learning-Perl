# 문자열 내에서 배열의 보간

@rocks = qw{ flintstone slate rubble };
print "quartz @rocks limestone\n"; # 5개의 돌(rock) 사이사이에 빈칸을 넣어서 출력


print "Three rocks are: @rocks.\n";
print "There's nothing in the parens (@empty) here.\n";


$email = "fred@bedrock.edu"; # 틀림! @bedrock을 보간하려 할 것입니다.


$email = "fred\@bedrock.edu";    # 옳음
$email = 'fred@bedrock.edu';	 # 또 다른 옳은 방법


@fred = qw(hello dolly);
$y = 2;
$x = "This is $fred[1]'s place";      # "This is dolly's place"
$x = "This is $fred[$y-1]'s place";   # 위와 같음


@fred = qw(eating rocks is wrong);
$fred = "right";		  # "this is ringt[3]"을 출력할 것입니다.
print "this is $fred[3]\n";	  # $fred[3]을 사용해서 "wrong"을 출력
print "this is ${fred}[3]\n";	  # "right"를 출력(중괄호로 보호)
print "this is $fred"."[3]\n";    # 역시 right를 출력(서로 다른 문자열)
print "this is $fred\[3]\n";	  # 역시 right를 출력(역슬래시가 대괄호를 회피)
