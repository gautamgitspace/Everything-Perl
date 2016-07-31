#!/usr/bin/perl
#function references
use 5.18.0;
use warnings;

my $ref1 = \&func;
$ref1->();

my $ref = func2();
$ref->();
sub func
{
    say 'This is some sample function';
}
sub func2
{
    my $s = "this is local here";
    return sub {say "$s"};
}