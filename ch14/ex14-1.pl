# index로 부분 문자열 찾기

$where = index($big, $small);


my $stuff = "Howdy world!";
my $where = index($stuff, "wor");


my $stuff   = "Howdy world!";
my $where1  = index($stuff, "w");              # $where1는 2입니다.
my $where2  = index($stuff, "w", $where1 + 1); # $where2는 6입니다.
my $where3  = index($stuff, "w", $where2 + 1); # $where3은 -1입니다(찾지 못함).


my $last_slash = rindex("/etc/passwd", "/"); # 값은 4입니다.


my $fred =  "Yabba dabba doo!";
my $where1  = rindex($fred, "abba");                # $where1은 7입니다.
my $where2  = rindex($fred, "abba", $where1 - 1);   # $where2는 1입니다.
my $where3  = rindex($fred, "abba", $where2 - 1);   # $where3은 -1입니다.
