# 해시의 원소에 접근하기

$hash{$some_key}


$family_name{"fred"} = "flintstone";
$family_name{"barney"} = "rubble";


foreach $person (qw< barney fred >) {
    print "I've heard of $person $family_name{$person}.\n";
}


$foo = "bar";
print $family_name{ $foo . "ney" };  # "rubble"을 출력합니다.


$family_name{"fred"} = "astaire";    # 이미 있는 요소에 새로운 값을 할당합니다.
$bedrock = $family_name{"fred"};     # "astaire" 값을 돌려줍니다.
				     # 이전의 값을 잃어버립니다.


$family_name{"wilma"} = "flintstone";               # 새로운 키와 값을 추가합니다.
$family_name{"betty"} .= $family_name{"barney"};    # 필요하다면 요소를 생성합니다.


$granite = $family_name{"larry"};    # 이 해시에 래리는 없습니다. 값은 undef입니다.
