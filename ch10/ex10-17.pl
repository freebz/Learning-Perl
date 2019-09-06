# 단락 연산자의 값

my $last_name = $last_name{$someone} || '(No last name)';


my $last_name = defined $last_name{$someone} ?
    $last_name{$someone} : '(No last name)';
