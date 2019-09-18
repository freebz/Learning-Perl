# 링크와 파일

link "chicken", "egg"
    or warn "can't link chicken to egg: $!";


symlink "dodgson", "carroll"
    or warn "can't symlink dodgson to carroll: $!";


my $where = readlink "carroll";	           # "dodgson"을 반환합니다.

my $perl = readlink "/usr/local/bin/perl"; # 아마도 펄이 어디에 있는지 알려줄 것입니다.
