#!/usr/bin/perl
#use of split function
use 5.18.0;
use warnings;

my $IPA_ADDRESS = "192.168.0.34";
say foreach split(/\./,$IPA_ADDRESS);

my $data = "Cisco Systems, Computer Networking: 2;Juniper Networks, Data Center Networking: 2";
#accomodate spaces using \s*, making a class of characters to split
say foreach split(/[,:;]\s*/, $data);
say foreach split(/[;]\s*/, $data);