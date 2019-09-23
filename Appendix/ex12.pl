# 프래그마

# constant 프래그마

use constant DEBUGGING => 0;
use constant ONE_YEAR => 365. 2425 * 24 * 60 * 60;

if (DEBUGGING) {
    # 이 코드는 DEBUGGING 값이 켜저 있지 않는 한 실행되지 않습니다.
    . . .
}


# diagnostics 프래그마

use diagnostics;


# lib 프래그마

use lib '/home/rootbeer/experimental';


# strict 프래그마


# vars 프래그마

use strict;
use vars qw/ $fred $barney /;

$fred = "This is a global variable, but that's all right. \n";
