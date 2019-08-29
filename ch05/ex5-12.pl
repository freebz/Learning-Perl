# 파일 핸들 사용

if ( ! open PASSWD, "/etc/passwd") {
    die "How did you get logged in? ($!)";
}

while (<PASSWD>) {
    chomp;
    ...
}


print LOG "Captain's log. stardate 3.14159\n"; # LOG 파일 핸들에 출력합니다.
printf STDERR "%d percent complet.\n", $done/$total * 100;


printf (STDERR "%d percent complete.\n", $done/$total * 100);
printf STDERR ("%d percent complete.\n", $done/$total * 100);
