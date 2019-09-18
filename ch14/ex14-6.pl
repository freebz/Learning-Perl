# 해시의 값으로 정렬하기

my %score = ("barnye" => 195, "fred" => 205, "dino" => 30);
my @winners = sort by_score keys %score;


sub by_score { $score{$b} <=> $score{$a} }
