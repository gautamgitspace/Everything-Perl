#!/usr/bin/perl
#use of array operations like: reverse, shift and unshift
use warnings;
my @count = (1..5);
print "array contains: @count\n";
for (reverse(@count))
{
print "$_...\n";
sleep 1;
}
print "BLAST OFF!\n";
sleep 1;
print "adding 100 to beginning of the array\n";
sleep 1;
unshift @count, 100;
print "adding 200 to beginning of the array\n";
sleep 1;
unshift @count, 200;
sleep 1;
print "Now array contains: @count\n";
sleep 1;
print "shifting array. shifting items to the right\n";
sleep 1;
shift @count;
print "Now array contains: @count\n";
sleep 1;
print "that's all folks!";
