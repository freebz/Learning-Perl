# 파일 지우기

# $ rm slate bedrock lava


unlink "slate", "bedrock", "lava";


unlink glob "*.o";


my $successful = unlink "slate", "bedrock", "lava";
print "I deleted $successful file(s) just now\n";


foreach my $file (qw(slate bedrock lava)) {
    unlink $file or warn "failed on $file: $!\n";
}
