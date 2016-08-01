#!/usr/bin/perl
use 5.18.0;
use warnings;

#array of hash entries
my @artists = ({name => 'Jimi Hendrix', instrument => 'Guitar', genre => 'Rock'},
               {name => 'Miles Davis', instrument => 'Trumpet', genre => 'Jazz'},
               {name => 'Yo-Yo Ma', instrument => 'Cello', genre => 'Classical'},
               {name => 'Frank Zappa', instrument => 'Guitar', genre => 'Fusion'});
#push another entry
push @artists, {name => 'Biggie Smalls', instrument => 'None', genre => 'East Coast Rap'};

#to print all, take a scalar reference
for my $ref ( @artists )
{
    for my $role ( keys %{$ref} )
    {
         print "$role:$ref->{$role} ";
    }
    print "\n";
}
say "--------------------------------------";
#now lets take an anonymous array and a ref (legends) to it.
my $legends = [{name => 'Biggie Smalls', instrument => 'None', genre => 'East Coast Rap'},
               {name => 'Mobb Deep', instrument => 'None', genre => 'East Coast Rap'},
               {name => 'Snoop Dogg', instrument => 'None', genre => 'West Coast Rap'},
               {name => 'Wiz Khalifa', instrument => 'None', genre => ['East Coast Rap', 'West Coast Rap']}];

#dereferencing
foreach my $m ( @{$legends} )
{
    my $genre_split = ref($m->{genre}) eq 'ARRAY' ? join('/ ', @{$m->{genre}}): $m->{genre};
    say "$m->{name}: $genre_split";
}

