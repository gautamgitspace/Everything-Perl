#!/usr/bin/perl
use warnings;
my @unsortednum = (10, 7, 3, 17, 4, 9);
print "Before sort: @unsortednum\n";
my @numberSort = sort {$a <=> $b} @unsortednum;
print "After sort: @numberSort\n";
my @unsortedalpha = qw(NY, MA, ME, MI, CT, KS, MO, IL, CA);
my @stringSort = sort @unsortedalpha;
print "before sort: @unsortedalpha\n";
print "after sort: @stringSort\n";
