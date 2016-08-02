#!/usr/bin/perl
#Perl provides a special filehandle called ARGV. it reads from standard input. Actually, the @ARGV array holds any text after the program's
#name on the command line, and <ARGV> takes each file in turn. Now Perl expects us to give the name of the file on the command line:
use 5.18.0;
use warnings;
my $lineCount=1;
while(<>)
{
    print $lineCount++;
    print ": $_";
}