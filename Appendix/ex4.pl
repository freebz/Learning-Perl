# File::Copy 모듈

use File::Copy;

copy("source", "destination")
    or die "Can't copy 'source' to 'destination': $!";
