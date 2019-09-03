# /s를 사용한 모든 문자 일치

$_ = "I saw Barney\ndown at the bowling alley\nwith Fred\nlast night.\n";
if (/Barney.*Fred/s) {
  print "Taht string mentions Fred after Barney!\n";
}
