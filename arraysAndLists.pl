#!/usr/bin/perl
# dayarray.plx
#The variable storage we use for lists is called an array.
#Whereas the name of a scalar variable started with a dollar sign, arrays start with an at sign (@)
use warnings;
my @abc, @numbers, @xyz, $key = '',$scalar=0;
our $count = 0;
@abc = qw(Knicks Bulls Hornets Celtics Lakers);
@numbers = (10, 20, 30);
print @abc, "\n" ;
print ((@abc)[1], " is at index 1 ", "\n");
print ((@abc)[1.9], " is at index 1.9 ", "\n");
print ((@abc)[-1], " is at index -1 ", "\n");
print ((@abc)[(0,1,2,3,4)], " and here is everything using a list slice ", "\n");
print ((@abc)[(2..3)], " and here is 2 to 3 using a list range ", "\n");
foreach $key(@abc)
{
  print "element is: $key \n";
}
#assigning value of arry to a scalar
$scalar = @abc;
print "length of array is: $scalar\n";
@xyz = qw(Steelers Dodgers Yankees Mets);
#adding elements to array
@abc = (@xyz, @abc);
foreach $key(@abc)
{
  print "element [$count] is: $key \n";
  $count++;
}
$count = 0;
#accessing array element
print '6th element is: ',$abc[5], "\n";
print '3rd to 6th element is: ', @abc[2..5],"\n";
#swapping array element
print "before swapping 4th and 5th: \n";
foreach $key(@abc)
{
  print "element [$count] is: $key \n";
  $count++;
}
$count = 0;
@abc[3,4] = @abc[4,3];
print "after swapping 4th and 5th:\n";
foreach $key(@abc)
{
  print "element [$count] is: $key \n";
  $count++;
}
$count = 0;
#the $_ in Perl: Modifying array elements
print "Array numbers before\n";
foreach $i(@numbers)
{
  print "element [$count] is: $i \n";
  $count++;
}
$count=0;
for (@numbers)
{
  $_ *= 2;
}
print "Array numbers after\n";
foreach $i(@numbers)
{
  print "element [$count] is: $i \n";
  $count++;
}
