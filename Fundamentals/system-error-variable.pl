#!/usr/bin/perl
use 5.18.0;
use warnings;

my $fileName = "/Users/Gautam/Desktop/openapps.shl";
if(-e $fileName)
{
    say 'FOUND';
}
else
{
    my $errorNumber = $! + 0;
    my $errorType = $!;
    say "ERROR($errorNumber) : $errorType";
}