# 표준 입력으로부터의 입력

$line = <STDIN>;		# 다음 줄을 읽습니다.
chomp($line);			# 받은 줄에 chomp 연산을 수행합니다.

chomp($line = <STDIN>);		# 좀 더 관용적인 표현일 뿐 동일합니다.


while (defined($line = <STDIN>)) {
    print "I saw $line";
}


while (<STDIN>) {
    print "I saw $_";
}


while (defined($_ = <STDIN>)) {
    print "I saw $_";
}


foreach (<STDIN>) {
    print "I saw $_";
}
