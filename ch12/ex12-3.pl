# 파일 테스트 연산자 쌓기

if ( -r $file and -w _ ) {
    print "The file is both readable and writable!\n";
}


use 5.010;

if ( -w -r $file ) {
    print "The file is both readable and writable!\n";
}


use 5.010;

if ( -r -w -x -o -d $file ) {
    print "My directory is readable, writable, and executable!\n";
}


use 5.010;

if ( -s -d $file < 512) { # 틀렸습니다! 이렇게 하지 마세요.
    print "The directory is less than 512 bytes!\n";
}


if ( ( -d $file and -s _ ) < 512 ) {
    print "The directory is less than 512 bytes!\n";
}


if ( -d $file and -s _ < 512 ) {
    print "The directory is less than 512 bytes!\n";
}
