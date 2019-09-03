# split 연산자

@fields = split /separator/, $string;


@fields = split /:/, "abc:def:g:h"; # ("abc", "def", "g", "h")를 반환


@fields = split /:/, "abc:def::g:h"; #("abc", "def", "", "g", "h")를 반환


@fields = split /:/, ":::a:b:c:::"; # ("", "", "", "a", "b", "c")를 반환


my $some_input = "This is a \t test.\n";
my @args = split /\s+/, $some_input; #("This", "is", "a", "test.");


my @fields = split; # split /\s+/, $_; 와 같음
