# Net::SMTP 모듈

use Net::SMTP;

my $from      = 'YOUR_ADDRESS_GOES_HERE';   # 예를 들어, fred@bedrock.edu
my $site      = 'YOUR_SITE_NAME_GOES_HERE'; # 예를 들어, bedrock.edu
my $smtp_host = 'YOUR_SMTP_HOST_GOES_HERE'; # mail이나 mailhost
my $to        = 'president@whitehouse.gov';

my $smtp = Net::SMTP->new($smtp_host, Hello => $site);

$smtp->mail($from);
$smtp->to($to);
$smtp->data();

$smtp->datasend("To: $to\n");
$smtp->datasend("Subject: A message from my Perl program.\n");
$smtp->datasend("\n");
$smtp->datasend("This is just to let you know.\n");
$smtp->datasend("I don't care what those other people say about you.\n");
$smtp->datasend("I still think you're doing a great job.\n");
$smtp->datasend("\n");
$smtp->datasend("Have you considered enacting a law naming Perl\n");
$smtp->datasend("the national programming language?\n");

$smtp->dataend( );		            # datasend가 아닙니다!
$smtp-quit;
