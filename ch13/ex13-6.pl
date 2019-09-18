# 파일 이름 바꾸기

rename "old", "new";


rename "over_there/some/place/some_file", "some_file";


foreach my $file (glob "*.old") {
    my $newfile = $file;
    $newfile =~ s/\.old$/.new/;
    if (-e $newfile) {
	warn "Can't rename $file to $newfile: $newfile exists\n";
    } elsif (rename $file, $newfile) {
	## 성공! 아무것도 하지 않음
    } else {
	warn "rename $file to $newfile failed: $!\n";
    }
}


(my $newfile = $file) =~ s/\.old$/.new/;
