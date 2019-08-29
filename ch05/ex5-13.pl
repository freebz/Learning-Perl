# 기본 출력 파일 핸들의 변경

select BEDROCK;
print "I hope Mr. Slate doesn't find out about this.\n";
print "Wilma!\n";


select LOG;
$| = 1; # LOG 항목을 버퍼에서 대기하지 않도록 합니다.
select STDOUT;
# ...
# 시간이 흐로고, 아기가 걷는 것을 배우고,
# 지각이 변동되고, 그러고 나서...
# ...
print LOG "This gets written to the LOG at once!\n";
