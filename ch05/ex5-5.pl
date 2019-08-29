# printf를 사용한 형식 출력

printf "Hello, %s: your password expires in %d days!\n",
    $user, $days_to_die;


# Hello, merlyn: your password expires in 3 days!


printf "%g %g %g\n", 5/2, 51/17, 51 ** 17;  # 2.5 3 1.0683e+29


printf "in %d days!\n", 17.85;  # in 17 days!


printf "%6d\n", 42;         # ````42처럼 출력합니다.
                            # (` 기호는 빈 칸을 나타냅니다.)
printf "%2d\n", 2e3 + 1.95; # 2001


printf "%10s\n", "wilma";  # `````wilma 처럼 출력합니다.


printf "%-15s\n", "flintstone";  # flintstone````` 처럼 출력합니다.


printf "%12f\n", 6 * 7 + 2/3;    # ```42.666667처럼 출력합니다.
printf "%12.3f\n", 6 * 7 + 2/3;  # ``````42.667처럼 출력합니다.
printf "%12.0f\n", 6 * 7 + 2/3;  # ``````````43처럼 출력합니다.


printf "Monthly interest rate: %.2f%%\n",
    5.25/12; # 값은 "0.44%"처럼 보입니다.
