# system 함수

system "date";


system 'ls -l $HOME';


system "ls -l \$HOME";


system "long_running_command with parameters &";


system 'for i in *; do echo == $i ==; cat $i; done';
