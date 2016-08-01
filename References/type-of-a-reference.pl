#!/usr/bin/perl
use 5.18.0;
use warnings;
use Data::Dumper;

#make some anonymous references:

my $ref1 = [1,2,3,4,5];

my $ref2 = {
    one => 1,
    two => 2,
    three => 3
};

display_ref($ref1);
display_ref($ref2);
display_ref();

sub display_ref
{
    my $disp_ref = shift || '';
    if(ref($disp_ref) eq 'ARRAY')
    {
        say 'HELLO '.ref($disp_ref);
        say foreach @{$disp_ref};
        say 'Changing your last element to 50';
        sleep(2);
        say '......';
        $disp_ref->[4] = 50;
        say foreach @{$disp_ref};
    }
    elsif(ref($disp_ref) eq 'HASH')
    {
        say 'HELLO '. ref($disp_ref);
        #print using Data Dumper
        print Dumper($disp_ref);
        say "Changing your 2nd and 3rd element to 'dos' and 'tres'";
        sleep(2);
        say '......';
        $disp_ref->{two} = 'dos';
        $disp_ref->{three} = 'tres';
        foreach my $k (keys%{$disp_ref})
        {
            say "$k: $disp_ref->{$k}";
        }
    }
    else{say 'HELLO OTHER';}
}