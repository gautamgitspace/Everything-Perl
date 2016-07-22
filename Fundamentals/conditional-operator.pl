#!/usr/bin/perl
use 5.18.0;
use warnings;

say "Enter first Number";
my $x=<STDIN>;
say "Enter second Number";
my $y=<STDIN>;

say $x==$y ? 'Numbers are equal' : $x>$y ? 'First is greater' : 'Second is greater'