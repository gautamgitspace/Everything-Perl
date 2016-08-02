#!/usr/bin/perl
#Perl provides a special filehandle called ARGV. it reads from standard input. Actually, the @ARGV array holds any text after the program's
#name on the command line, and <ARGV> takes each file in turn. Now Perl expects us to give the name of the file on the command line:
use 5.18.0;
use warnings;
my $lineCount=1;
my $fileName = shift @ARGV || "GeoData.csv";
open FH, $fileName or die $!;
my @chunks;
while(my $line = <FH>)
{
    print $lineCount++;
    #split csv
    @chunks =  split/,/, $line;
    #print 3 column
    print ": $chunks[2]\n";
}