#!/usr/bin/perl
#numeric functions:

use 5.18.0;
use warnings;
my $a = 25;
my $x = sqrt($a) ** 2;  #sqrt and then power function - gives back 4 again
say $x;
say int $x/3;
say 'randomly generating 25 numbers:';
while($x>0)
{
my $y = int rand 100;
say $y;
$x = $x-1;
}