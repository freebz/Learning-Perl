# grep으로 목록에서 항목 골라내기

my @odd_numbers;

foreach (1 .. 1000) {
    push @odd_numbers, $_ if $_ % 2;
}


my @odd_numbers = grep { $_ % 2 } 1 .. 1000;


my @matching_lines = grep { /\bfred\b/i } <FILE>;


my @matching_lines = grep /\bfred\b/i, <FILE>;
