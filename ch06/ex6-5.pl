# 해시 함수

# keys와 values 함수

my %hash = ("a" => 1, "b" => 2, "c" => 3);
my @k = keys %hash;
my @v = values %hash;


my $count = keys %hash;   # 세 개의 키-값 쌍을 가진다는 뜻으로 3을 반환합니다.


if (%hash) {
    print "That was a true value!\n";
}
