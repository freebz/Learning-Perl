# 디렉터리 핸들

my $dir_to_process = "/etc";
opendir DH, $dir_to_process or die "Cannot open $dir_to_process: $!";
foreach $file (readdir DH) {
    print "one file in $dir_to_process is $file\n";
}
closedir DH;


while ($name = readdir DIR) {
    next unless $name =~ /\.pm$/;
    ... 추가적인 처리 ...
}


next if $name =~ /^\./;


next if $name eq "." or $name eq "..";


opendir SOMEDIR, $dirname or die "Cannot open $dirname: $!";
while (my $name = readdir SOMEDIR) {
    next if $name =~ /^\./;	       # 점으로 시작하는 파일이면 건너 뜀
    $name = "$dirname/$name";	       # 경로와 이름을 합침
    next unless -f $name and -r $name; # 읽기 가능한 파일만 추려냄
    ...
}
