#!/usr/bin/perl
#flavors of foreach/for, use of next
use 5.18.0;
use warnings;

my @array = qw(one two three four five);
my $pass = "three";
say "flavor 1 using next:";
foreach my $item (@array)
{
    next if $item eq $pass;
    say $item;
}
say "\nflavor 2 using last:";
foreach my $item (@array)
{
    last if $item eq $pass;
    say $item;
}
say "\nflavor" 3;
#uses special default variable
foreach (@array)
{say $_}

say "\nflavor 4:";
#uses special default variable
foreach (@array)
{say;}

say "\nflavor 5:";
#uses special default variable
say foreach @array;

say "\nflavor 6:";
#standard for loop
for(my $i = 0; $array[$i]; ++$i)
{say $array[$i];}

say "\nflavor 7:";
for(my $i = 0; $array[$i]; ++$i)
{say "[$i] " . $array[$i];}

say "\nconcating to array elements:";
foreach my $i (@array)
{
    $i.=" pac";
}
say foreach @array;


