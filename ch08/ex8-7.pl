# 일치 변수

$_ = "Hello there, neighbor";
if (/\s(\w+),/) {	       # 공백과 콤마 사이의 단어를 기억합니다.
    print "the word was $1\n"; # the word was there
}


$_ = "Hello there, neighbor";
if (/(\S+) (\S+), (\S+)/) {
    print "words were $1 $2 $3\n";
}


my $dino = "I fear that I'll be extinct after 1000 years.";
if ($dino =~ /(\d*) years/) {
    print "That said '$1' years.\n"; # 1000
}

$dino = "I fear that I'll be extinct after a few million years.";
if ($dino =~ /(\d*) years/) {
    print "That said '$1' years.\n"; # 빈 문자열
}
