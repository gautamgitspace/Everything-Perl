#!/usr/bin/perl
use 5.18.0;
use warnings;


my $x = 'x';
my $y = 'y';
my $z = 'z';
my $v = 'x';

my %hash = ($x=>'x', $y=>'y', $z='z');
#switch on $v
say $hash{$v} . " exists"  if $hash{$v};