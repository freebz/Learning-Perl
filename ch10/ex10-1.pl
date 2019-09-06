# unless 제어 구조

unless ($fred =~ /^[A-Z_]\w*$/i) {
    print "The value of \$fred doesn't look like a Perl identifier name.\n";
}


if ($fred =~ /^[A-Z_]\w*$/i) {
    # Do nothing
} else {
    print "The value of \$fred doesn't look like a Perl identifier name.\n";
}


if ( ! ($fred =~ /^[A-Z_]\w*$/i) ) {
    print "The value of \$fred doesn't look like a Perl identifier name.\n";
}
