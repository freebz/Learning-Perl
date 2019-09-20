# 역인용 부호로 출력물 저장하기

my $now = `date`;	      # date의 출력 결과를 낚아챕니다.
print "The time is now $now"; # 줄바꿈이 이미 들어가 있습니다.


chomp(my $no_newline_now = `date`);
print "A moment ago, it was $no_newline_now, I think.\n";


my @functions = qw{ int rand sleep length hex eof not exit sqrt umask };
my %about;

foreach (@functions) {
    $about{$_} = `perldoc -t -f $_`;
}


print "Starting the frobnitzigator:\n";
`frobnitz -enable`; # 이런 식으로 사용하지 마세요!
print "Done!\n";


my $output_with_errors = `frobnitz -enable 2>&1`;


my $result = `some_questionable_command arg arg argh </dev/null`;
