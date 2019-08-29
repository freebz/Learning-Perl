# 해시 원소 보간

foreach $person (sort keys %books) {                  # 순서대로 정렬한 각각의 고객
    if ($books{$person}) {
	print "$person has $books{$person} items\n";  # fred has 3 items
    }
}
