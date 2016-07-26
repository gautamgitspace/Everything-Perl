#!/usr/bin/perl
#text matching using regex operations, common modifiers
use 5.18.0;
use warnings;
my $s = q(This is a LINE of text);
if ($s=~ /line/)
{say 'Found';}
else
{say 'Not Found'}

#ignore case modifier - slash i
if ($s=~ /line/i)
{say 'Found';}
else
{say 'Not Found'}

#global modifier - slash g
say "testing for occurence of character i: ";
say foreach $s =~ /i/;
say "using slash g modifier now to search globally and list all the i's:";
say foreach $s =~ /i/g;

#string modifier - slash s (treats a string with newline characters as an entire single string)
my $string_with_newline_character = "Hello this string has\nmany many many\n many breaks";
if ($string_with_newline_character =~/g.h/)
{say 'YEAH';}
else
{say 'NAH';}

if ($string_with_newline_character=~/s.m/s)
{say 'YEAH';}
else
{say 'NAH';}

#multiple lines modifier - slash m (treats a string as multiple strings)
if($string_with_newline_character=~/^m/m)
{say 'YES';}
else
{say 'NO';}

my $re = qr/text/;
$s =~ $re ? say "True" : say "False";

#extracting text
if ($s=~/(^T...).*(L...).(..)/)
{
    say "match #1 is: $1";
    say "match #2 is: $2";
    say "match #3 is: $3";
 }
else
{say 'NO MATCH';}

#getting a list of matches. WE DO NOT KNOW HOW MANY TO EXPECT!
my @array =  $s=~/i(.)/g;
say foreach @array;