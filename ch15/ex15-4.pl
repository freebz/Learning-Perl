# 우둔한 일치

use 5.010;

given ( $ARGV[0] ) {
    when ( $_ =~ /fred/i ) { say 'Name has fred in it'; continue }
    when ( $_ =~ /^Fred/ ) { say 'Name starts with Fred'; continue }
    when ( $_ eq 'Fred'  ) { say 'Name is Fred' }
    default                { say "I don't see a Fred" }
}


use 5.010;

given ( $ARGV[0] ) {
    when ( /fred/i )       { # 똑똑한 일치
	say 'Name has fred in it'; continue }
    when ( $_ =~ /^Fred/ ) { # 우둔한 일치
	say 'Name starts with Fred'; continue }
    when ( 'Fred' )        { # 똑똑한 일치
	say 'Name is Fred' }
    default                { say "I don't see a Fred" }
}


use 5.010;

given ( $ARGV[0] ) {
    when (!/^-?\d+\.\d+$/ ) { # 우둔한 일치
	say 'Not a number!' }
    when ( $_ > 10 )        { # 우둔한 일치
	say 'Number is greater than 10' }
    when ( $_ < 10 )        { # 우둔한 일치
	say 'Number is less than 10' }
    default                 { say 'Number is 10' }
}


use 5.010;

given ( $ARGV[0] ) {
    when ( name_has_fred( $_ ) ) { # 우둔한 일치
	say 'Name has fred in it'; continue }
}


use 5.010;

given ( $ARGV[0] ) {
    when ( ! $boolean ) { # 우둔한 일치
	say 'Name has fred in it' }
    when ( ! /fred/i  ) { # 우둔한 일치
	say 'Does not match Fred' }
}
