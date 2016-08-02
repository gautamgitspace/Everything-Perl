#!/usr/bin/perl
#copy-pasting file contents using File IO module
use 5.18.0;
use warnings;
use IO::File;
say 'enter name of the file to read:';
my $fileName = <STDIN>;
chomp($fileName);
say 'enter name of the file to write';
my $outFile = <STDIN>;
chomp($outFile);
#attempt to open file in read mode.
my $fileHandle = IO::File->new($fileName, '<') or die "Cannot open file: $!";
my $fileHandleOut = IO::File->new($outFile, '>') or die "Cannot open file: $!";

while(my $line = $fileHandle->getline())
{
    $fileHandleOut->print($line);
}
say "reading from file $fileName ...";
sleep(1);
say "writing to file $outFile ...";
sleep(1);
say 'done';
