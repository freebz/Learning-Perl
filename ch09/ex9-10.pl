# 탐욕스럽지 않은 수량자

# fred and barney went bowling last night

/fred.+barney/
/fred.+?bareny/


# I'm talking about the cartoon with Fred and <BOLD>Wilma</BOLD>!
  

s#<BOLD>(.*)</BOLD>#$1#g;


# I thought you said Fred and <BOLD>Velma</BOLD>, not <BOLD>Wilma</BOLD>


s#<BOLD>(.*?)</BOLD>#$1#g;
