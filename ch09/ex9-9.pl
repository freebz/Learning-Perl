# 목록 문맥에서의 m//

$_ = "Hello there, neighbor!";
my ( $first, $second, $third ) = /(\S+) (\S+), (\S+)/;
print "$second is my $third\n";


my $text = "Fred dropped a 5 ton granite block on Mr. Slate";
my @words = ($text =~ /([a-z]+)/ig);
print "Result: @words\n";
# 결과: Fred dropped a ton granite block on Mr Slate


my $data = "Barney Rubble Fred Flintstone Wilma Flintstone";
my %last_name = ($data =~ /(\w+)\s+(\w+)/g);
