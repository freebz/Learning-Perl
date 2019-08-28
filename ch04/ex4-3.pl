# 반환 값

sub sum_of_fred_and_barney {
    print "Hey, you called the sum_of_fred_and_barney subroutine!\n";
    $fred + $barney; # 이 연산의 결과가 반환 값입니다.
}


$fred = 3;
$barney = 4;
$wilma = &sum_of_fred_and_barney;     # $wilma는 7
print "$\wilma is $wilma.\n";
$betty = 3 * &sum_of_fred_and_barney; # $betty는 21
print "\$betty is $betty.\n";


# Hey, you called the sum_of_fred_and_barney subroutine!
# $wilma is 7.
# Hey, you called the sum_of_fred_and_barney subroutine!
# $betty is 21.


sub sum_of_fred_and_barney {
    print "Hey, you called the sum_of_fred_and_barney subroutine!\n";
    $fred + $barney;                           # 이제 더 이상 반환값이 아닙니다!
    print "Hey, I'm returning a value now!\n"; # 어이쿠!
}
    

sub large_of_fred_or_barney {
    if ($fred > $barney) {
	$fred;
    } else {
	$barney;
    }
}
