# 이름을 지정한 저장

use 5.010;

my $names = 'Fred or Barney';
if ( $names =~ m/(\w+) and (\w+)/ ) { # 일치하지 않을 것입니다.
    say "I saw $1 and $2";
}


use 5.010;

my $names = 'Fred or Barney';
if ( $names =~ m/(\w+) (and|or) (\w+)/ ) { # 이제 일치합니다.
    say "I saw $1 and $2";
}


# I saw Fred and or


use 5.010;

my $names = 'Fred or Barney';
if ( $names =~ m/(?<name1>\w+) (?:and|or) (?<name2>\w+)/ ) {
    say "I saw $+{name1} and $+{name2}";
}


# I saw Fred and Barney


use 5.010;

my $names = 'Fred or Barney';
if ( $names =~ m/((?<name2>\w+) (and|or) (?<name1>\w+))/ ) {
    say "I saw $+{name1} and $+{name2}";
}


use 5.010;

my $names = 'Fred Flinstone and Wilma Flinstone';

if ( $names =~ m/(?<last_name>\w+) and \w+ \g{last_name}/ ) {
    say "I saw $+{last_name}";
}


use 5.010;

my $names = 'Fred Flinstone and Wilma Flinstone';

if ( $names =~ m/(?<last_name>\w+) and \w+ \k<last_name>/ ) {
    say "I saw $+{last_name}";
}
