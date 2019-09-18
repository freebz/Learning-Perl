# 여러 개의 키로 정렬하기

my %score = (
     "barney"    => 195,  "fred"      => 205,
     "dino"      => 30,   "bamm-bamm" => 195,
);


my @winners = sort by_score_and_name keys %score;

sub by_score_and_name {
    $score{$b} <=> $score{$a}    # 점수를 내림차순 숫자 정렬
        or
    $a cmp $b			 # 이름을 오름차순 알파벳 순서로 정렬
}


@patron_IDs = sort {
    $fines($b) <=> &fines($a) or
    $items{$b} <=> $items{$a} or
    $family_name{$a} cmp $family_name{$b} or
    $personal_name{$a} cmp $personal_name{$b} or
    $a <=> $b
} @patron_IDs;
