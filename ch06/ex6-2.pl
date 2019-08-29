# 통째로의 해시

%some_hash = ("foo", 35, "bar", 12.4, 2.5, "hello",
    "wilma", 1.72e30, "betty", "bye\n");


@any_array = %some_hash;


print "@any_array\n";
    # 다음처럼 반환할 수도 있습니다.
    # betty bye (줄바꿈 문자) wilma 1.72e+30 foo 35 2.5 hello bar 12.4
