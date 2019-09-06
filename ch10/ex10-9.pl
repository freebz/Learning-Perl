# for 제어 구조

for (initialization; test; increment) {
    body;
    body;
}


initialization;
while (test) {
    body;
    body;
    increment;
}


for ($i = 1; $i <= 10; $i++) { # 1부터 10까지 셉니다.
    print "I can count to $i!\n";
}


for ($i = 10; $i >= 1; $i--) {
    print "I can count down to $i\n";
}


for ($i = -150; $i <= 1000; $i += 3) {
    print "$i\n";
}


for ($_ = "bedrock"; s/(.)//; ) {    # s///가 참인 동안 반복합니다.
    print "One character is: $1\n";
}


for (;;) {
    print "It's an infinite loop!\n";
}


while (1) {
    print "It's an infinite loop!\n";
}
