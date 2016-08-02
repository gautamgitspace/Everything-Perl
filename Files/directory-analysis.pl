#!/usr/bin/perl
use 5.18.0;
use warnings;

use warnings;
use strict;
print "Contents of the current directory:\n";
opendir DH, "." or die "Couldn't open the current directory: $!";
while ($_ = readdir(DH))
{
next if $_ eq "." or $_ eq "..";
print $_, " " x (40-length($_));
print "d" if -d $_;
print "r" if -r _;
print "w" if -w _;
print "x" if -x _;
print "o" if -o _;
print "\t";
print "\n";
}