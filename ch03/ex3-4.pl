# qw 단축 표현

qw( fred barney betty wilma dino) # 앞의 예제와 같습니다. 하지만 입력할 것은 훨씬 적죠.


qw(fred
  barney         betty
wilma dino)    # 위와 같은 목록이지만 매우 이상하게 공백 문자를 사용했습니다.


qw! fred barney betty wilma dino !
qw/ fred barney betty wilma dino /
qw# fred barney betty wilma dino #   # 주석과 같은 기호!
qw( fred barney betty wilma dino )
qw{ fred barney betty wilma dino }
qw[ fred barney betty wilma dino ]
qw< fred barney betty wilma dino >


qw! yahoo\! google ask msn ! # yahoo!를 원소로 포함


qw{
    /usr/dict/words
    /home/rootbeer/.ispell_english
}
