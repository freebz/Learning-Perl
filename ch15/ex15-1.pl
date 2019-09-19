# 똑똑한 일치 연산자

print "I found Fred in the name!\n" if $name =~ /Fred/;


use 5.010;

say "I found Fred in the name!" if $name ~~ /Fred/;


my $flag = 0;
foreach my $key ( keys %names ) {
    next unless $key =~ /Fred/;
    $flag = $key;
    last;
}

print "I found a key matching 'Fred'. It was $flat\n" if $flag;


use 5.010;

say "I found a key matching 'Fred'" if %names ~~ /Fred/;


my $equal = 0;
foreach my $index ( 0 .. $#names1 ) {
    last unless $names1[$index] eq $names2[$index];
    $equal++;
}

print "The arrays have the same elements!\n"
    if $equal == @names1;


use 5.010;

say "The arrays have the same elements!"
    if @names1 ~~ @names2;


my @nums   = qw( 1 2 3 27 42 );
my $result = max( @nums );

my $flag = 0;
foreach my $num ( @nums ) {
    next unless $result == $num;
    $flag = 1;
    last;
}

print "The result is one of the input values\n" if $flag;


use 5.010;

my @nums = qw( 1 2 3 27 42 );
my $result = max( @nums );

say "The result [$result] is one of the input values (@nums)"
    if @nums ~~ $result;


use 5.010;

my @nums = qw( 1 2 3 27 42 );
my $result = max( @nums );

say "The result [$result] is one of the input values (@nums)"
    if $result ~~ @nums;


use 5.010;

say "I found a name matching 'Fred'" if $name ~~ /Fred/;
say "I found a name matching 'Fred'" if /Fred/ ~~ $name;
