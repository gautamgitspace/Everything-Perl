#!/usr/bin/perl
use warnings;
use strict;
my $team = "Golden State";
my %where=(
        Tim => "San Antonio",
        Kyrie => "Cleveland",
        Dwayne => "Chicago",
        'Andre Iguodala' => "Golden State"
);
my %who = reverse %where;
print "Kyrie Irving plays for ", $where{Kyrie}, "\n";
print "Dwayne Wade playes for $where{Dwayne}\n";
print "$who{Chicago} plays for the Bulls now\n";
print "$who{$team} lives in $team\n";
print "========adding, removing and iterating through hashes========\n";
$where{Steph} = "Golden State";
delete $where{Tim};
print "Only active players: \n";
for (keys %where)
{
  print "$_ plays for $where{$_}\n";
}
