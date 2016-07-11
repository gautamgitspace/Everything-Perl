#!/usr/bin/perl
use warnings;
my $i=0, $size=0, @stack = (10,20,30,40,50);
print "Stack contains: @stack\n";
while (@stack)
{
  $catch = pop @stack;
  print "$catch popped\n";
  sleep 1;
}
$size = @stack;
print "Stack contains: $size elements\n";
while ($i<4)
{
  push @stack, $i;
  print "$i pushed\n";
  $i++;
  sleep 1;
}
$size = @stack;
print "Stack contains: $size elements\n";
