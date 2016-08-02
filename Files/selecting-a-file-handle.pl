#!/usr/bin/perl
#selecting a file handle to output the result:

use 5.18.0;
use warnings;
$| = 1;

my $log_method = "screen";
if($log_method eq 'file')
{
    open LOG, "> /Users/Gautam/Desktop/output.log" or die $!;
    select LOG;
}
say 'Execution Started';
sleep(3);
say 'Execution Complete';