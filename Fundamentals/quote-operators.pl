#!/usr/bin/perl
#quote-operators
use 5.18.0;
use warnings;

say q(Hello World);
say q(Jello "World");
say qq(Hello\nWorld);
say q[Mello World];
say q -Pello World-;
say q|Bello World|;
my @array = qw (Straight outta Pittsburgh);
say foreach @array;