# 표현식 변경자

print "$n is a negative number.\n" if $n < 0;


if ($n < 0) {
    print "$n is a negative number.\n";
}


&error("Invalid input") unless &valid($input);
$i *= 2 until $i > $j;
print " ", ($n += 2) while $n < 10;
&greet($_) foreach @person;


while ($n < 10) {
    print " ", ($n += 2);
}


print "fred is '$fred', barney is '$barney'\n" if $I_am_curious;


print "fred is '$fred', barney is '$barney'\n"
    if $I_am_curious;
