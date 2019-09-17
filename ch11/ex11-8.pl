# 데이터페이스와 DBI

use DBI;

$dbh = DBI->connect($data_source, $username, $password);


my $data_source = "dbi:Pg:dbname=name_of_database";


$sth = $dbh->prepare("SELECT * FROM foo WHERE bla");
$sth->execute();
@row_ary = $sth->fetchrow_array;
$sth->finish;


$dbh->disconnect();
