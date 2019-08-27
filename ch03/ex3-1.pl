# 배열의 원소에 접근하기

$fred[0] = "yabba";
$fred[1] = "dabba";
$fred[2] = "doo";


print $fred[0];
$fred[2]  = "diddley";
$fred[1] .= "whatsis";


$number = 2.71828;
print $fred[$number - 1]; # $fred[1]을 출력하는 것과 같습니다.


$blank = $fred[ 142_857 ];  # 사용한 적 없는 배열 원소는 undef를 반환합니다.
$blanc = $eml;		    # 사용한 적 없는 스칼라 $mel 또한 undef를 반환합니다.
