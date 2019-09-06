# 자동 증가와 자동 감소

my $bedrock = 42;
$bedrock++; # $bedrock에 1을 더해서 43이 됩니다.


my @people = qw{ fred barney fred wilma dino barney fred pebbles };
my %count;		      # 비어 있는새로운 해시
$count{$_}++ foreach @people; # 필요하다면 새로운 키와 값을 생성합니다.


$bedrock--; # $bedrock에 1을 빼서 다시 42가 됩니다.
