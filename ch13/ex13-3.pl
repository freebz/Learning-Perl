# 또 다른 글로빙 문법

my @all_files = <*>; ## my @all_files = glob "*"; 과 정확히 똑같습니다.


my $dir = "/etc";
my @dir_files = <$dir/* $dir/.*>;


my $files = <FRED/*>;    ## glob 연산입니다.
my @lines = <FRED>;	 ## 파일 핸들 읽기 연산입니다.
my $name = "FRED";
my @files = <$name/*>;   ## glob 연산입니다.


my $name = "FRED";
my @lines = <$name>; ## FRED 핸들에 대한 간접 파일 핸들 읽기 연산


my $name = "FRED";
my @lines = readline FRED;  ## FRED에서 읽어들입니다.
my @lines = readline $name; ## FRED에서 읽어들입니다.
