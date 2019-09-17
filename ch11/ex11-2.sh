# 모듈 설치하기

perl Makefile.PL
make install


perl Makefile.PL PREFIX=/Users/fred/lib


perl Build.PL
./Build install


perl -MCPAN -e shell


cpan Module::CoreList LWP CGI::Prototype
