# Fatal 모듈

use Fatal qw/ open chdir /;

chdir '/home/merlyn';      # 이제 "or die"가 자동으로 제공됩니다.
