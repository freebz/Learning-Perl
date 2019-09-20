# exec 함수

chdir "/tmp" or die "Cannot chdir /tmp: $!";
exec "bedrock", "-o", "args1", @ARGV;


exec "date";
die "date couldn't run: $!";
