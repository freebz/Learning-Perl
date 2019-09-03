# 여러 줄의 문자열 일치시키기

$_ = "I'm much better\nthan Barney is\nat bowling,\nWilma.\n";


print "Found 'wilma' at start of line\n" if /^wilma\b/im;


open FILE, $filename
    or die "Can't open '$filename': $!";
my $line = join '', <FILE>;
$lines =~ s/^/$filename: /gm;
