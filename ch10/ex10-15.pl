# ?: 삼항 연산자

expression ? if_true_expr : if_false_expr

  
my $location = &is_weekend($day) ? "home" : "work";


my $average = $n ? ($total/$n) : "-----";
print "Average: $average\n";


my $average;
if ($n) {
    $average = $total / $n;
} else {
    $average = "-----";
}
print "Average: $average\n";


my $size =
   ($width < 10) ?  "small"  :
   ($width < 20) ?  "medium" :
   ($width < 50) ?  "large"  :
                    "extra-large"; # 기본 값
