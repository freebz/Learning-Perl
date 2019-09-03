# 기억 공간의 영속성

$wilma =~ /(\w+)/; # 틀림! 일치의 성공 여부를 검사하지 않음
print "Wilma's word was $1... or was it?\n";


if ($wilma =~ /(\w+)/) {
    print "Wilma's word was $1.\n";
} else {
    print "Wilma doesn't have a word.\n";
}


if ($wilma =~ /(\w+)/) {
    my $wilma_word = $1;
    ...
}
