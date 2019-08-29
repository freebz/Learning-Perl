# 배열과 printf

my @items = qw( wilma dino pebbles );
my $format = "The items are:\n" . ("%10s\n" x @items);
## print "the format is >>$format<<\n"; # 디버깅용
printf $format, @items;


printf "The items are:\n".("%10s\n" x @items), @items;
