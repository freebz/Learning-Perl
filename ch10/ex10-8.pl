# 자동 증가 값

my $m = 5;
my $n = ++$m; # $m을 6으로 증가시키고 그 값을 $n에 넣습니다.


my $n = --$m; # $m을 5로 감소시키고 그 값ㅇ르 $n에 넣습니다.


my $d = $m++; # $d는 옛날 값(5)을 가지고 $m은 6이 됩니다.
my $e = $m--; # $e는 옛날 값(6)을 가지고 $m은 5가 됩니다.


$bedrock++; # $bedrock에 1을 더합니다.
++$bedrock; # 위와 동일합니다. $bedrock에 1을 더합니다.


my @people = qw{ fred barney bamm-bamm wilma dino barney betty pebbles };
my %seen;

foreach (@people) {
    print "I've seen you somewhere before, $_!\n"
        if $seen{$_}++;
}
