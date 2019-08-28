# 영속적인 사설 변수

sub marine {
    $n += 1; # 전역 변수 $n
    print "Hello, sailor number $n!\n";
}


use 5.010;

sub marine {
    state $n = 0; # 사설적(private)이고 영속적(persistent)인 변수 $n
    $n += 1;
    print "Hello, sailor number $n!\n";
}


use 5.010;

running_sum( 5, 6 );
running_sum( 1..3 );
running_sum( 4 );

sub running_sum {
    state $sum = 0;
    state @numbers;

    foreach my $number ( @_ ) {
	push @numbers, $number;
	$sum += $number;
    }

    say "The sum of (@numbers) is $sum";
}


# The sum of (5 6) is 11
# The sum of (5 6 1 2 3) is 17
# The sum of (5 6 1 2 3 4) is 21


state @array = qw(a b c); # 오류!


# Initialization of state variables in list context currently forbidden ...
