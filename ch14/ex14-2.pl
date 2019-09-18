# substr로 부분 문자열 다루기

$part = substr($string, $initial_position, $length);


my $mineral = substr("Fred J. Flintstone", 8, 5);  # "Flint"를 얻음
my $rock = substr "Fred J. Flintstone", 13, 1000;  # "stone"을 얻음


my $pebble = substr "Fred J. Flintstone", 13; # "stone"을 얻음


my $out = substr("some very long string", -3, 2); # $out은 "in"을 얻음


my $long = "some very very long string";
my $right = substr($long, index($long, "l"));


my $string = "Hello, world!";
substr($string, 0, 5) = "Goodbye";  # $string은 이제 "Goodbye, world!"입니다.


substr($string, -20) =~ s/fred/barney/g;


my $previous_value = substr($string, 0, 5, "Goodbye");
