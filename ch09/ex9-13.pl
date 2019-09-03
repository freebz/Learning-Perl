# 명령줄에서 즉석으로 파일 수정하기

# $ perl -p -i.bak -w -e 's/Randall/Randal/g' fred*.dat


while (<>) {
    print;
}


#!/usr/bin/perl -w

$^I = ".bak";

while (<>) {
    s/Randall/Randal/g;
    print;
}
