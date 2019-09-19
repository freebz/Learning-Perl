# when으로 여러 항목 다루기

use 5.010;

foreach my $name ( @names ) {
    given ( $name ) {
	...
    }
}


foreach ( @names ) { # 현재 요소를 넣을 변수의 이름을 짓지 마세요!
    when ( /fred/i ) { say 'Name has fred in it'; continue }
    when ( /^Fred/ ) { say 'Name starts with Fred'; continue }
    when ( 'Fred'  ) { say 'Name is Fred'; }
    default          { say "I don't see a Fred" }
}


use 5.010;

foreach ( @names ) { # 현재 요소를 넣을 변수의 이름을 짓지 마세요!
    say "\nProcessing $_";

    when ( /fred/i ) { say 'Name has fred in it'; continue }
    when ( /^Fred/ ) { say 'Name starts with Fred'; continue }
    when ( 'Fred'  ) { say 'Name is Fred'; }
    default          { say "I don't see a Fred" }
}


use 5.010;

foreach ( @names ) { # 현재 요소를 넣을 변수의 이름을 짓지 마세요!
    say "\nProcessing $_";

    when ( /fred/i ) { say 'Name has fred in it'; continue }
    when ( /^Fred/ ) { say 'Name starts with Fred'; continue }
    when ( 'Fred'  ) { say 'Name is Fred'; }
    say "Moving on to default...";
    default          { say "I don't see a Fred" }
}
