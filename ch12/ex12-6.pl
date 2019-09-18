# 비트 연산자

# $mode는 CONFIG을 stat해서 얻은 mode의 값입니다.
warn "Hey, the configuration file is world-writable!\n"
  if $mode & 0002;		              # 설정 파일의 보안 문제
my $classical_mode = 0777 & $mode;            # 상위에 있는 추가 비트들을 버립니다.
my $u_plus_x = $classical_mode | 0100;        # 하나의 비트를 켭니다.
my $go_minus_r = $classical_mode & (~ 0044);  # 두 개의 비트를 끕니다.
