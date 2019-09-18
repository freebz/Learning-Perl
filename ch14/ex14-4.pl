# sprintf로 '금액' 표현하기

my $money = sprintf "%.2f", 2.49997;


sub big_money {
    my $number = sprintf "%.2f", shift @_;

    # 아무 것도 수행하지 않는 반복문을 수행하는 동안
    # 매번 하나의 쉼표를 넣습니다.
    1 while $number =~ s/^(-?\d+)(\d\d\d)/$1,$2/;

    # 적절한 위치에 달러 기호를 넣습니다.
    $number =~ s/^(-?)/$1\$/;
    $number;
}


while ($number =~ s/^(-?\d+)(\d\d\d)/$1,$2/) {
    1;
}


'keep looping' while $number =~ s/^(-?\d+)(\d\d\d)/$1,$2/;
