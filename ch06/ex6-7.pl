# 해시의 전형적인 사용법

$books{"fred"}  = 3;
$books{"wilma"} = 1;


if ($books{$someone}) {
    print "$someone has at least one book checked out.\n";
}


$books{"barney"} = 0;      # 현재는 대여한 책이 없습니다.
$books{"pebbles"} = undef; # 책을 대여한 기록이 없습니다. - 새로 발급한 도서관 카드
