# File:Spec 모듈

use File::Basename;

print "Please enter a filename: ";
chomp(my $old_name = <>);

my $dirname = dirname $old_name;
my $basename = basename $old_name;

$basename =~ s/^/not/; # basename 팡에 접두어를 추가합니다.
my $new_name = "$dirname/$basename";
rename($old_name, $new_name)
    or warn "Can't rename '$old_name' to '$new_name': $!";


use File::Spec;

# 앞에서 살펴보았던 $dirname과 $basename의 값을 사용합니다.

my $new_name = File::Spec->catfile($dirname, $basename);

rename($old_name, $new_name)
  or warn "Can't rename '$old_name' to '$new_name': $!";
