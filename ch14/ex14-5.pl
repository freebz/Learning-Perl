# 고급 정렬

sub any_sort_sub {   # 실제로 이렇게 동작하지는 않습니다.
    my($a, $b) = @_; # 두 개의 매개변수를 받고 이름을 지어줍니다.
    # $a와 $b를 여기서부터 비교합니다.
    ...
}


sub by_number {
    # 정렬 사용자 함수는 $a와 $b를 인자로 받았다고 생각합니다.
    if ($a < $b) { -1 } elsif ($a > $b) { 1 } else { 0 }
}


my @result = sort by_number @same_numbers;


sub by_number { $a <=> $b }


sub ASCIIbetically { $a cmp $b }
my @strings = sort ASCIIbetically @any_strings;


sub case_insensitive { "\L$a" cmp "\L$b" }


my @numbers = sort { $a <=> $b } @some_numbers;


my @descending = reverse sort { $a <=> $b } @some_numbers;


my @descending = sort { $b <=> $a } @some_numbers;
