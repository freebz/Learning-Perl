# 지정하지 않은 괄호

if (/(bronto)?saurus (steak|burger)/) {
    print "Fred wants a $2\n";
}


if (/(?:bronto)?saurus (steak|burger)/) {
    print "Fred wants a $1\n";
}


if (/(?:bronto)?saurus (?:BBQ )?(steak|burger)/) {
    print "Fred wants a $1\n";
}
