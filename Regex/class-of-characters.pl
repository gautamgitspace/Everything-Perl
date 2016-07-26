#!/usr/bin/perl
#matching class of chracters
use 5.18.0;
use warnings;

my $s = "This string contains 3369 characters. Just kidding";
#anything that is digits back slash d
my @array = $s=~(/\d+/g);
print ("digits in the string: ".(@array)[0]);
#anything that is not digits back slash capital d
say "\nanything in string except the digits:";
my @array1 = $s=~/(\D+)/g;
say foreach @array1;
#anything that is not whitespace and be more than one (+) - back slash capital S => gives all words in the string
my @array2 = $s=~(/(\S+)/g);
say foreach @array2;
#matching all the words using slash w
say "\nall the words in the string using w+:";
my @array3 = $s=~/(\w+)/g;
say foreach @array3;
#custom classes
say "\ntrying custom class now";
my @array4 = $s=~(/[A-Za-z0-9]+/g);
say foreach @array4;
#negation using ^. now everything else except digits will come.
say "\nTrying custom class negation:";
my @array5 = $s=~(/([^0-9]+)/g);
say foreach @array5;
#metacharacters
say "\nbracket contains:";
my $t = "this is a string (line of text)";
my @array6 = $t=~/(\(.*\))/;
say foreach @array6;




