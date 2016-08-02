#!/usr/bin/perl
#open one file in read mode, read contents and copy to another new file
use 5.18.0;
use warnings;

my $fileInput = "/Users/Gautam/Desktop/openapps.sh";    #input file
my $fileOutput = "/Users/Gautam/Desktop/newoutput.txt"; #output file

open(my $fhi, '<', $fileInput) or die 'Cannot open file: $!';
open(my $fho,'>', $fileOutput) or die 'Cannot open file: $!';

while(my $line = <$fhi>)
{
    print $fho $line;
}
close $fhi;
close $fho;
print '.';
print '.';
print '.';
sleep(1);
say 'Done';


