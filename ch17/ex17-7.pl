# 해시 슬라이스

my @three_scores = ($score{"barney"}, $score{"fred"}, $score{"dino"});
my @three_scores = @score{ qw/ barney fred dino/ };


my @players = qw/ barney fred dino /;
my @bowling_scores = (195, 205, 30);
@score{ @players } = @bowling_scores;


print "Tonight's players were: @players\n";
print "Their socres were: @score{@players}\n";
