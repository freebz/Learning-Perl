# 목록 문맥에서 역인용 부호 사용하기

my $who_text = `who`;


my @who_lines = `who`;


foreach (`who`) {
    my($user, $tty, $date) = /(\S+)\s+(\S+)\s+(.*)/;
    $ttys{$user} .= "$tty at $date\n";
}
