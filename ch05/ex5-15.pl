# say로 출력하기

use 5.010;

print "Hello!\n";
print "Hello!", "\n";
say "Hello!";


use 5.010;

my $name = 'Fred';
print "$name\n";
print $name, "\n";
say $name;


use 5.010;

my @array = qw( a b c d );

say @array;    # "abcd\n"

say "@array";  # "a b c d\n";


use 5.010;

say BEDROCK "Hello!";
