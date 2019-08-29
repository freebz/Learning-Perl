# %ENV 해시

print "PATH is $ENV{PATH}\n";


# PATH is /usr/local/bin:/usr/bin:/sbin:/usr/sbin


# Bourne 쉘

#   $ CHARACTER=Fred; export CHARACTER
#   $ export CHARACTER=Fred

# csh

#   % setenv CHARACTER=Fred

# DOS나 Windows 명령

#   C:> set CHARACTER=Fred


print "CHARACTER is $ENV{CHARACTER}\n";
