# 부분 평가 연산자를 사용한 제어 구조

($m < $n) && ($m = $n);


if ($m < $n) { $m = $n }


($m > 10) || print "why is it not greater?\n";


($m < $n) ? ($m = $x) : ($n = $x);


$m < $n and $m = $n; # 하지만 동일하게 대응되는 if문을 사용하는 것이 더 나은 선택입니다.


open CHAPTER, $filename
    or die "Can't open '$filename': $!";
