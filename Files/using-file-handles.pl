#!/usr/bin/perl
#using a file handle to read a file from disk.
# < - read mode, > - write mode (truncates or creates new), +< - read plus right mode, >> append mode,
#+> open a new file for read and write and overwrite if it already exists

use 5.18.0;
use warnings;

my $fileName = "/Users/Gautam/Desktop/openapps.sh";
open(my $fh, '<', $fileName) or die "Cannot open file: $!";
while(my $line = <$fh>)
{
    #remove new lines
    chomp($line);
    say $line;
}
close $fh;




