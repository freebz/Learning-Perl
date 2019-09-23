# eval로 오류 낚아채기

$barney = $fred / $dino;	    # 0으로 나누기 오류?

print "match\n" if /^($wilma)/;	    # 잘못된 정규표현식 오류?

open CAVEMAN, $fred		    # die를 이용해 사용자가 생성한 오류?
    or die "Can't open file '$fred' for input: $!";


eval { $barney = $fred / $dino } ;


print "An error occurred: $@" if $@;


foreach my $person (qw/ fred wilma betty barney dino pebbles /) {
    eval {
	open FILE, "<$person"
	or die "Can't open file '$person': $!";

	my($total, $count);

	while (<FILE>) {
	    $total += $_;
	    $count++;
	}

	my $average = $total/$count;
	print "Average for file $person was $average\n";

	&do_something($person, $average);
    };

    if ($@) {
	print "An error occurred ($@), continuing\n";
    }
}


my $barney = eval { $fred / $dino };
