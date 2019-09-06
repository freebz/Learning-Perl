# redo 연산자

# 입력 검사
my @words = qw{ fred barney pebbles dino wilma betty };
my $errors = 0;

foreach (@words) {
    ## redo 는 이곳으로 옵니다. ##
    print "Type the word '$_': ";
    chomp(my $try = <STDIN>);
    if ($try ne $_) {
	print "Sorry - That's not right.\n\n";
	$errors++;
	redo; # 반복문의 가장 곡대기로 뜁니다.
    }
}
print "You've completed the test, with $errors errors.\n";


foreach (1..10) {
    print "Iteration number $_.\n\n";
    print "Please choose: last, next, redo, or none of the above? ";
    chomp(my $choice = <STDIN>);
    print "\n";
    last if $choice =~ /last/i;
    next if $choice =~ /next/i;
    redo if $choice =~ /redo/i;
    print "That wasn't any of the choices... onward!\n\n";
}
print "That's all folks!\n";
