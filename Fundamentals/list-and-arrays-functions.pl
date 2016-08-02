#!/usr/bin/perl
#list and arrays functions: grep, map, join, split, reverse

use 5.18.0;
use warnings;

my @a = qw(one two three four five);
say foreach reverse @a;
say foreach grep /t/, @a;
my @b = (1,2,3,4,5);
say foreach map {$_ * 2} @b;
say join ':', @a;
START:
say 'Enter a string. Let me split it into a list for you? (Y/N)';
my $user_response = <STDIN>;
chomp($user_response);
if ($user_response eq 'Y')
{
say 'Enter your String';
my $string = <STDIN>;
chomp($string);
say $string;
my @c = split/\s+/, $string;
say 'Here you go:';
sleep(1);
foreach (@c)
{say $_;}
}
elsif ($user_response eq 'N')
{exit;}
else
{
    say 'please enter a valid input';
    goto START;
 }