#!/usr/bin/perl
use 5.18.0;
use warnings;

my $x=42;
undef $x;

if (defined $x)
{say "x is $x";}
else
{say "x is not defined";}