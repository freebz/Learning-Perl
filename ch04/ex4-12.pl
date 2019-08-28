# 앰퍼샌드(&) 생략하기

my @cards = shuffle(@deck_of_cards);    # &shuffle을 호출할 때 &가 없어도 됩니다.


sub division {
    $_[0] / $_[1];	             # 첫 번째 인자를 두 번째 인자로 나눕니다.
}

my $quotient = division 335, 113;    # &division을 사용합니다.


sub chomp {
    print "Munch. munch!\n";
}

&chomp;    # 여기의 앰퍼샌드는 옵션이 아닙니다!
