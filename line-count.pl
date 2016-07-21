#!/usr/bin/perl
#perl script to count the number of lines in a text file

use 5.18.0;
use warnings;
use IO::File;

main(@ARGV);

sub main
{
    my $fileName = shift || "/Users/Gautam/Desktop/TODO.txt";
    my $lineCount = countlines($fileName);
    say "There are $lineCount lines in this file.";
}

sub countlines
{
    my $fileName = shift;
    error("missing filename") unless $fileName;
    #attempt to open file
    my $fileHandle = IO::File->new($fileName, "r") or
    error("Cannot open $fileName. File does not exist.\n");
    
    #attempt to count lines
    my $count = 0;
    $count++ while($fileHandle->getline);
    $fileHandle->close;
    return $count;  
}

sub error
{
    my $e = shift || "unknown error";
    say "$e";
    exit 0;
}
