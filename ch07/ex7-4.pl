# 문자 집합

$_ = "The HAL-9000 requires authorization to continue.";
if (/HAL-[0-9]+/) {
    print "The string mentions some model of HAL computer.\n";
}
