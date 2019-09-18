# 디렉터리 만들고 지우기

mkdir "fred", 0755 or warn "Cannot make fred directory: $!";


my $name = "fred";
my $permissions = "0755"; # 위험합니다... 이것은 제대로 동작하지 않습니다.
mkdir $name, $permissions;


mkdir $name, oct($permissions);


my ($name, $perm) = @ARGV; # 처음 두 인자는 이름과 허가 권한입니다.
mkdir $name, oct($perm) or die "cannot create $name: $!";


foreach my $dir (qw(fred barney betty)) {
    rmkir $dir or warn "cannot rmdir $dir: $!\n";
}


my $temp_dir = "/tmp/scratch_$$";             # 프로세스 아이디를 기반으로 합니다.
                                              # 설명을 참고하세요.
mkdir $temp_dir, 0700 or die "cannot create $temp_dir: $!";
...
# 모든 임시 파일을 저장할 경로로 $temp_dir을 사용합니다.
...
unlink glob "$temp_dir/* $temp_dir/.";        # $temp_dir의 모든 항목을 지웁니다.
rmdir $temp_dir;			      # 이제 빈 디렉터리를 지웁니다.
