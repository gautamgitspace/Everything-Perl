#!/usr/bin/perl
#hash-references
use 5.18.0;
use warnings;

#create reference to anonymous hash
my $ref = {
    one => 1,
    two => 2,
    three => "tres",
    four => 4,
    five => 5
};

#de-reference by specifying the key
say $ref->{one} = 'uno';

foreach my $k (sort keys %{$ref})
{
    say "$k: $ref->{$k}";
}

