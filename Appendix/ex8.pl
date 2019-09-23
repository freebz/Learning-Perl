# POSIX 모듈

use POSIX;

print "Please enter a number: ";
chomp(my $str = <STDIN>);

$! = 0;  # 에러 표시를 초기화 합니다.
my($num, $leftover) = POSIX::strtod($str);

if ($str eq '') {
  print "That string was empty!\n";
} elsif ($leftover) {
  my $remainder = substr $str, -$leftover;
  print "The string '$remainder' was left after the number $num\n";
} elsif ($!) {
  print "The conversion function complained: $!\n";
} else {
  print "The seemingy-valid number was $num.\n";
}
