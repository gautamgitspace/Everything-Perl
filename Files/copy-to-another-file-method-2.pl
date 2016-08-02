#!/usr/bin/perl
use 5.18.0;
use warnings;

my $source = shift @ARGV;
my $destination = shift @ARGV;
#capital file handles - IN and OUT
open IN, $source or die "CAN'T READ FROM FILE $source:  $!\n";
open OUT, ">$destination" or die "CAN'T WRITE TO FILE $destination: $!\n";
say "COPYING FROM $source to $destination";
sleep(1);
say 'DONE';
while(<IN>)
{
    print OUT $_;
}
