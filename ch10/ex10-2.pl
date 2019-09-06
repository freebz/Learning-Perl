# unless에서 else절 사용하기

unless ($mon =~ /^Feb/) {
    print "This month has at least thirty days.\n";
} else {
    print "Do you see what's going on here?\n";
}


if ($mon =~ /^Feb/) {
    print "Do you see what's going on here?\n";
} else {
    print "This month has at least thirty days.\n";
}
