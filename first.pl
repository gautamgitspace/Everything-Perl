#!/usr/bin/perl
#rudimentary perl
use warnings;
#use strict; (will require explicit global package name when this is uncommented)
print "Hello from perl.\n";
print "this"."is"."string"."concatanation"."in"."action"."\n";
print "this is also string concatanation. This time with numbers: four x seven is:" ." 4*7\n";
print "this is the 'repetition operator': "."GO!"x3 , "\n";
print "LET's TEST BOOLEANS.....\n";
print "-----------------------------------\n";
print "is six greater than eight?", 6 > 8, "\n";
print "is six greater than four? ", 6 > 4, "\n";
print "LET's SEE HOW STRINGS AND NUMBERS BEHAVE TOGETHER: \n";
print "---------------------------------------------------\n";
print "12 Monkeys" + 2, "\n";
print "LET's PLAY WITH ASCII\n";
print "ASCII value of '*' is: ", ord('*'), "\n";
print "ASCII value of 'a' is: ", ord('a'), "\n";
print "ASCII value of 'A' is: ", ord('A'), "\n";
print "LET's COMPARE STRINGS\n";
print "-----------------------------------\n";
$str1 = "hello";
$str2 = "bz";
$str3 = "hello";
$str4 = "jello";
print ($str1 eq $str3);
print "\n";
print ($str1 eq $str2);
print "\n";
print ($str1 gt $str2);
print "\n";
print ($str4 gt $str1);
print "\n";
print "LET's TEST INCREMENT DECREMENT OPERATORS ON STRINGS:\n";
print "----------------------------------------------------\n";
print ++$str2, "\n";
print ++$str4, "\n";
print "LET's TEST LEXICAL VARIABLES\n";
print "-----------------------------\n";
$count = 4;
print "Here count is: ", $count, "\n";
{
  my $count;
  $count = 65_000;
  print "Here count becomes: ", $count, "\n"
}
print "Here count again becomes: ", $count, "\n"
