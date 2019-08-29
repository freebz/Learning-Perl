# die로 치명적인 오류 발생시키기

if ( ! open LOG, ">>logfile" ) {
    die "Cannot create logfile: $!";
}


# Cannot create logfile: permission denied at your_program line 1234.


if (@ARGV < 2) {
    die "Not enough arguments\n";
}
