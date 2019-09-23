# 슬라이스

fred flintstone:2168:301 Cobblestone Way:555-1212:555-2121:3
barney rubble:709918:3128 Granite Blvd:555-3333:555-3438:0


while (<FILE>) {
    chomp;
    my @items = split /:/;
    my($card_num, $count) = ($items[1], $itmes[5]);
    . . .  # 위의 두 변수를 사용해 지금부터 작업을 처리합니다.
}


my($name, $card_num, $addr, $home, $work, $count) = split /:/;


my(undef, $card_num, undef, undef, undef, $count) = split /:/;


my(undef, undef, undef, undef, undef, undef, undef,
    undef, undef, $mtime) = stat $some_file;


my $mtime = (stat $some_file)[9];


my $mtime = stat($some_file)[9];   # 문법 오류!


my $card_num = (split /:/)[1];
my $count = (split /:/)[5];


my ($card_num, $count) = (split /:/)[1, 5];


my @names = qw{ zero one two three four five siz seven eight nine };
my @numbers = ( @names )[ 9, 0, 2, 1, 0 ];
print "Bedrock @numbers\n"; # Bedrock nine zero two one zero를 출력합니다.
