# foreach 와 for 사이의 비밀스런 관계

for (1..10) { # 1부터 10까지 반복하는 진짜 foreach 반복문
    print "I can count to $_!\n";
}


for ($i = 1; $i < 10; $i++) { # 어이쿠! 여기에 잘못된 부분이 있습니다!
    print "I can count to $_!\n";
}
