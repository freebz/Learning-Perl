# /i를 사용한 대소문자 구분없는 일치

print "Would you like to play a game? ";
chomp($_ = <STDIN>);
if (/yes/i) { # 알파벳 대소문자 구분 없는 일치
  print "In that case, I recommend that you go bowling.\n";
}
