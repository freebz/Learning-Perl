# 문자열 내에서 스칼라 변수의 보간

$meal   = "brontosaurus steak";
$barney = "fred ate a $meal";    # $barney는 이제 "fred ate a brontosaurus steak"입니다.
$barney = 'fred ate a ' . $meal; # 위와 같은 결과를 내는 다른 표현입니다.


$barney = "fred ate a $meat"; # $barney는 "fred ate a "입니다


print "$fred"; # 필요 없는 큰따옴표입니다.
print $fred;   # 이렇게 사용하는 것을 권장합니다.


$fred = 'hello';
print "The name is \$fred.\n";	     # 달러 기호를 출력합니다.
print 'The name is $fred' . "\n";    # 동일한 결과입니다.


$what = "brontosaurus steak";
$n = 3;
print "fred ate $n $whats.\n";	                # 스테이크가 아니라 $whats 변수의 값
print "fred ate $n ${what}s.\n";                # 이제야 $what을 사용
print "fred ate $n $what" . "s.\n";             # $what을 사용하는 또 다른 방법
print 'fred ate ' . $n . ' ' . $what . "s.\n";  # 특별히 더 어려운 방법
