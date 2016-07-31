#!/usr/bin/perl
use 5.18.0;
use warnings;
#making user defined functions behave like pre-defined ones (call without parenthesis)
use subs qw(func1);

say 'This is func1:';
func1;
func1;
func1;
func1;
func1;
func2(1,2,3,4,5);
sub func1
{
    state $num=5;
    say $num.' incremented to -> '. ++$num;
}

sub func2
{
    say 'This is func2:';
    say foreach @_;
}