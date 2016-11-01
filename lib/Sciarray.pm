use v6;
use strict;

unit class Sciarray;

has @!arr;
has Int $.rows;
has Int $.cols;
has $.type;

method new(*@m, :$type?) {
	self.bless(:rows(@m[0]), :cols(@m[1]), :$type);
}

submethod BUILD(Int :$!rows, Int :$!cols, :$type?) {
	$!type = $type ~~ Numeric ?? $type !! Num;
}

method shape {
	return $!rows, $!cols;
}
