#!/usr/bin/perl
use 5.18.0;
use warnings;
use subs "errorreporting";

my $condition = 0;
if ($condition)
{say 'Yay';}
else
{errorreporting("CONDITION IS FALSE");}

#custom error reporting message
sub errorreporting
{
    my $m = shift || 'SOME ERROR OCCURED';
    say STDERR "FATAL: $m";
    exit;
}