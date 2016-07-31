#!/usr/bin/perl
#array references
use 5.18.0;
use warnings;
my @array = qw(one two three four five);
#scalar ref now contains the reference of the array
my $ref = \@array;  #standard way to do it
say foreach @$ref;

#reference to an anonymous array
my $ref2 = [1,2,3,4,5];
say foreach @$ref2;

#references cannot be used for a list like this:
#my $ref2 = (1,2,3);

#de-referencing the array using arrow operator:
$ref2->[0] = 'one';
say foreach @$ref2;