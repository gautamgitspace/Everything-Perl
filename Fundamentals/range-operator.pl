#!/usr/bin/perl
#range operator
use 5.18.0;
use warnings;

my $lower = 'a';
my $upper = 'z';
foreach ($lower..$upper)
{
    say $_
}
my $lower_num = '01';
my $upper_num = '10';
my @array = ($lower_num..$upper_num);
say foreach @array;