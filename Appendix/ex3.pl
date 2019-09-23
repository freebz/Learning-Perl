# File::Basename 모듈

use File::Basename;

for (@ARGV) {
    my $basename = basename $_;
    my $dirname = dirname $_;
    print "That's file $basename in directory $dirname.\n";
}
