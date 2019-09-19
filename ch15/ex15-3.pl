# given 명령문

use 5.010;

given ( $ARGV[0] ) {
    when (   /fred/i   ) { say 'Name has fred in it' }
    when (   /^Fred/   ) { say 'Name starts with Fred' }
    when (    'Fred'   ) { say 'Name is Fred' }
    default              { say "I don't see a Fred" }
}


use 5.010;

given ( $ARGV[0] ) {
    when (  $_ ~~ /fred/i   ) { say 'Name has fred in it' }
    when (  $_ ~~ /^Fred/   ) { say 'Name starts with Fred' }
    when (  $_ ~~ 'Fred'    ) { say 'Name is Fred' }
    default                   { say "I don't see a Fred" }
}


# $ perl5.10.0 switch.pl Fred
# Name has fred in it
# $ perl5.10.0 switch.pl Frederick
# Name has fred in it
# $ perl5.10.0 switch.pl Barney
# I don't see a Fred
# $ perl5.10.0 switch.pl Alfred
# Name has fred in it


use 5.010;

{
my $_ = $ARGV[0]; # 펄 5.10에서 $_ 변수는 렉시컬 범위를 가집니다.

   if ( $_ ~~ /fred/i ) { say 'Name has fred in it' }
elsif ( $_ ~~ /^Fred/ ) { say 'Name starts with Fred' }
elsif ( $_ ~~ 'Fred'  ) { say 'Name is Fred' }
else                    { say "I don't see a Fred" }
}


use 5.010;

given ( $ARGV[0] ) {
    when (  $_ ~~ /fred/i   ) { say 'Name has fred in it'; break }
    when (  $_ ~~ /^Fred/   ) { say 'Name starts with Fred'; break }
    when (  $_ ~~ 'Fred'    ) { say 'Name is Fred'; break }
    default                   { say "I don't see a Fred"; break }
}


use 5.010;

given ( $ARGV[0] ) {
    when (  $_ ~~ /fred/i   ) { say 'Name has fred in it'; continue }
    when (  $_ ~~ /^Fred/   ) { say 'Name starts with Fred'; continue }
    when (  $_ ~~ 'Fred'    ) { say 'Name is Fred'; continue } # 어이쿠!
    default                   { say "I don't see a Fred" }
}


# $ perl5.10.0 switch.pl Alfred
# Name has fred in it
# I don't see a Fred


use 5.010;

given ( $ARGV[0] ) {
    when (  $_ ~~ /fred/i   ) { say 'Name has fred in it'; continue }
    when (  $_ ~~ /^Fred/   ) { say 'Name starts with Fred'; continue }
    when (  $_ ~~ 'Fred'    ) { say 'Name is Fred'; continue }   # 어이쿠!
    when ( 1 == 1           ) { say "I don't see a Fred" }       # default 구문
}


use 5.010;

given ( $ARGV[0] ) {
    when (  $_ ~~ /fred/i   ) { say 'Name has fred in it'; continue }
    when (  $_ ~~ /^Fred/   ) { say 'Name starts with Fred'; continue }
    when (  $_ ~~ 'Fred'    ) { say 'Name is Fred'; break } # 이제 괜찮습니다!
    when ( 1 == 1           ) { say "I don't see a Fred" }
}


use 5.010;

given ( $ARGV[0] ) {
    when (  $_ ~~ /fred/i   ) { say 'Name has fred in it'; continue }
    when (  $_ ~~ /^Fred/   ) { say 'Name starts with Fred'; continue }
    when (  $_ ~~ 'Fred'    ) { say 'Name is Fred'; }
    default                   { say "I don't see a Fred" }
}
