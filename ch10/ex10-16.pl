# 논리 연산자

if ($dessert{'cake'} && $dessert{'ice cream'}) {
    # 둘 다 참인 경우
    print "Hooray! Cake and ice cream!\n";
} elsif ($dessert{'cake'} || $dessert{'ice cream'}) {
    # 적어도 하나가 참인 경우
    print "That's still good...\n";
} else {
    # 모두 참이 아닌 경우 - 아무 것도 하지 않습니다(슬픈 일이군요).
}


if ( (9 <= $hour) && ($hour < 17) ) {
    print "Aren't you supposed to be at work...?\n";
}


if ( ($name eq 'fred') || ($name eq 'barney') ) {
    print "You're my kind of guy!\n";
}


if ( ($n != 0) && ($total/$n < 5) ) {
    print "The average is below five.\n";
}
