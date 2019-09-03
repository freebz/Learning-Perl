# join 함수

my $result = join $glue, @pieces;


my $x = join ":", 4, 6, 8, 10, 12; # $x 는 "4:6:8:10:12"입니다.


my $y = join "foo", "bar";	   # foo 접착 문자열이 필요 없으므로
				   # "bar"만 반환합니다.
my @empty;			   # 빈 배열
my $empty = join "baz", @empty;    # 요소가 없으므로 빈 문자열을 반환합니다.


my @values = split /:/, $x; # @values는 (4, 6, 8, 10, 12)입니다.
my $z = join "-", @values;  # $z 는 "4-6-8-10-12"입니다.
