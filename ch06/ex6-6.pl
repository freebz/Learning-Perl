# each 함수

while ( ($key, $value) = each %hash ) {
    print "$key => $value\n";
}


foreach $key (sort keys %hash) {
    $value = $hash{$key};
    print "$key => $value\n";
    # 또는 따로 $value 변수를 사용하지 않을 수도 있습니다.
    # print "$key => $hash{$key}\n";
}
