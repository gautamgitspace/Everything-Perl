#!/usr/bin/perl
#file test operators

use 5.18.0;
use warnings;
use strict;

my $target;
while (1) {
   print "What file should I write on? ";
   $target = <STDIN>;
   chomp $target;
   #check if it is a directory
   if (-d $target)
   {
      print "No, $target is a directory.\n";
      next;
   }
   #check if it exists
   if (-e $target)
   {
      print "File already exists. What should I do?\n";
      print "(Enter 'r' to write to a different name, ";
      print "'o' to overwrite or\n";
      print "'b' to back up to $target.old)\n";
      my $choice = <STDIN>;
      chomp $choice;
      if ($choice eq "r")
      {
         #go back to top of the loop and ask for a different name
         next;
      }
      elsif ($choice eq "o")
      {
         unless (-o $target)
         {
            #unless owned, can't modify
            print "Can't overwrite $target, it's not yours.\n";
            next;
         }
         unless (-w $target)
         {
            #unless writable, can't write
            print "Can't overwrite $target: $!\n";
            next;
         }
      }
      elsif ($choice eq "b")
      {
         if ( rename($target,$target.".old") )
         {
            #if renaming was successful
            print "OK, moved $target to $target.old\n";
         }
         else
         {
            print "Couldn't rename file: $!\n";
            next;
         }
      }
      else
      {
         #to catch invalid input       
         print "I didn't understand that answer.\n";
         next;
      }
   }
   #exit using last. if able to open target file => exit the while loop
   last if open OUTPUT, "> $target";
   print "I couldn't write on $target: $!\n";
   # and round we go again.
}
print OUTPUT "Congratulations.\n";
print "Wrote to file $target\n";