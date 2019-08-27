# 강제로 스칼라 문맥 사용하기

@rocks = qw( talc quartz jade obsidian );
print "How many rocks do you have?\n";
print "I have ", @rocks, " rocks!\n";        # 틀림! 락 이름 목록을 출력합니다.
print "I have ", scalar @rocks, " rocks!\n"; # 맞음! 락의 개수를 돌려줍니다.
