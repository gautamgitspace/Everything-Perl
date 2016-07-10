#!/usr/bin/perl
# dayarray.plx
#The variable storage we use for lists is called an array.
#Whereas the name of a scalar variable started with a dollar sign, arrays start with an at sign (@)
use warnings;
my @abc, @xyz, $key = '',$scalar=0;
@abc = qw(Knicks Bulls Hornets Celtics Lakers);
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
print "value of scalar is: $scalar\n";
@xyz = qw(Steelers Dodgers Yankees Mets);
#adding elements to array
@abc = (@xyz, @abc);
foreach $key(@abc)
{
  print "element is: $key \n";
}
#accessing array element
print @abc[5];
