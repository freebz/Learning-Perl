# defined 함수

$madonna = <STDIN>;
if ( defined($madonna) ) {
    print "The input was $madonna";
} else {
    print "No input available!\n";
}


$madonna = undef; # 한 번도 사용한 적이 없는 것처럼 만듭니다.
