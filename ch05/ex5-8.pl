# 파일 핸들 열기

open CONFIG, "dino";
open CONFIG, "<dino";
open BEDROCK, ">fred";
open LOG, ">>logfile";


my $selected_output = "my_output";
open LOG, "> $selected_output";


open CONFIG, "<", "dino";
open BEDROCK, ">", $fine_name;
open LOG, ">>", &logfile_name();
