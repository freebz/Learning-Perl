# 글로빙

# $ echo *.pm
# barney.pm dino.pm fred.pm wilma.pm


# cat >show-args
# foreach $arg (@ARGV) {
#     print "one arg is $arg\n";
# }
# ^D
# $ perl show-args *.pm
# one arg is barney.pm
# one arg is dino.pm
# one arg is fred.pm
# one arg is wilma.pm


my @all_files = glob "*";
my @pm_files = glob "*.pm";


my @all_files_including_got = glob ".* *";
