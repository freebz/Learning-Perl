# 같은 파일에 대해 여러 속성 테스트하기

if ( -r $file and -w $file ) {
    ...
}


if ( -r $file and -w _ ) {
    ...
}


if ( -r $file ) {
    print "The file is readable!\n";
}

if ( -w _ ) {
    print "The file is writable!\n";
}


if ( -r $file ) {
    print "The file is readable!\n";
}

lookup( $other_file );

if ( -w _ ) {
    print "The file is writable!\n";
}

sub lookup {
    return -w $_[0];
}
