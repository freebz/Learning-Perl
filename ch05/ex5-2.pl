# 다이아몬드 연산자로부터의 입력

# $ ./my_program fred barney betty


while (defined($line = <>)) {
    chomp($line);
    print "It was $line that I saw!\n";
}


while (<>) {
    chomp;
    print "It was $_ that I saw!\n";
}
