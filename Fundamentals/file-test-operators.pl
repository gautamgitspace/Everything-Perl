#!/usr/bin/perl
#file test operators: -s(non-zero), -z(zero), -r(readable), -e(exists)
use 5.18.0;
use warnings;
my $fileName = "/Users/Gautam/Desktop/try.pl";
if(-e $fileName)
{say 'FOUND';}
else
{say "$!";}

if(-z $fileName)
{say 'File Size: Zero Bytes';}
else
{say "File Size: Non Zero";}

if(-s $fileName)
{say 'File Size: Non zero';}
else
{say "File Size: Zero";}

if(-r $fileName)
{say 'True, readable';}
else
{say "False, Not Readable, Check Permissions";}

if(-w $fileName)
{say 'True, writable';}
else
{say "False, Not Writable, Check Permissions";}

if(-x $fileName)
{say 'True, Executable';}
else
{say "False, Not Executable. Check Permissions";}

if(-d $fileName)
{say 'True, This is a Directory';}
else
{say "False, Not a Directory. This is a regular file";}


