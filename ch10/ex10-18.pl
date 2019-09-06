# defined-or 연산자

use 5.010;

my $last_name = $last_name{$someone} // '(No last name)';


use 5.010;

my $Verbose = $EVN{VERBOSE} // 1;
print "I can talk to you!\n" if $Verbose;


use 5.010;

foreach my $try ( 0, undef, '0', 1, 25 ) {
    print "Trying [$try] ---> ";
    my $value = $try // 'default';
    say "\tgot [$value]";
}


  # Trying [0] --->         got [0]
  # Trying [] --->          got [default]
  # Trying [0] --->         got [0]
  # Trying [1] --->         got [1]
  # Trying [25] --->        got [25]


use warnings;

my $name; # 값이 없으므로 정의되지 않은 값입니다!
printf "%s", $name; # "Use of uninitialized value in printf ... " 경고 발생!


use 5.010;
use warnings;

my $name; # 값이 없으므로 정의되지 않은 값입니다!
printf "%s", $name // '';
