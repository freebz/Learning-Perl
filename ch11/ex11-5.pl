# 모듈 안에서 몇 개의 함수만 사용하기

use File::Basename qw/ basename /;


use File::Basename qw/ /;


use File::Basename ();


use File::Basename qw/ /;	             # 어떤 함수 이름도 들여오지 않음

my $betty = &dirname($wilma);	             # 우리가 만든 &dirname 사용자 함수를 사용

my $name = "/usr/local/bin/perl";
my $dirname = File::Basename::dirname $name; # 모듈이 제공하는 dirname
