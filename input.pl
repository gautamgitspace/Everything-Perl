#!/usr/bin/perl
use warnings;
print "enter pay rate\n";
$pay_rate = <STDIN>;
print "enter hours of work\n";
$hours = <STDIN>;
print "Biweekly wage is: ", 2*$pay_rate*$hours , "\n";
