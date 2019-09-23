# File::Spec 모듈

use File::Spec;

my $current_directory = File::Spec->curdir;
opendir DOT, $current_directory
    or die "Can't open current directory '$current_directory': $!";
