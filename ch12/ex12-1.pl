# 파일 테스트 연산자

die "Oops! A file called '$filename' already exists.\n"
    if -e $filename;


warn "Config file is looking pretty old!\n"
    if -M CONFIG > 28;


my @original_files = qw/ fred barney betty wilma pebbles dino bamm-bamm /;
my @big_old_files; # 백업 테이프에 넣을 파일
foreach my $filename (@original_files) {
    push @big_old_files, $filename
        if -s $filename > 100_000 and -A $filename > 90;
}


foreach (@lots_of_filenames) {
    print "$_ is readable\n" if -r; # -r $_과 같음
}


# The filename is in $_
my $size_in_K = -s / 1000; # 이런!


my $size_in_k = (-s) / 1024; # 기본으로 $_를 사용함
