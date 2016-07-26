#!/usr/bin/perl
#search and replace
use 5.18.0;
use warnings;
say "Enter a string:";
my $whole_string = <STDIN>;
chomp($whole_string);
say "you entered: ".$whole_string;
say "Enter what you would like to replace:";
my $to_replace = <STDIN>;
chomp($to_replace);
say "Enter what you would like to replace with:";
my $will_replace = <STDIN>;
chomp($will_replace);
$whole_string =~ s/$to_replace/$will_replace/;
say "Here you go: ".$whole_string;

