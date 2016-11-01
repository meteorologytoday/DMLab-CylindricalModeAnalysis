use v6;
use Test;

use lib 'lib';

plan 4;

use Sciarray;

my ($rows, $cols) = 2, 5;
my $type = (Int);


say "Initialize a $rows by $cols array.";

my $a = Sciarray.new($rows, $cols);

is $a.rows, $rows, "If rows is $rows";
is $a.cols, $cols, "If cols is $cols";
is $a.type.^name, Num.^name, "If type is {Num.^name}";

say "Initialize same matrix but with type {$type.^name}";
my $b = Sciarray.new($rows, $cols, :$type);
is $b.type.^name, $type.^name, "If type is {$type.^name}";
