#!/usr/bin/perl

use warnings;
use strict;


open CIPHERS, "<", "ciphers.txt" or die $!;

my @cts_hex = <CIPHERS>;
print "@cts_hex\n";
#foreach my $ct (@cts_hex)
#{
#    print "$ct";
#}
print "======================================================================\n";
my @cts_char;
foreach my $string (@cts_hex)
{
    #$string =~ s/([a-fA-F0-9][a-fA-F0-9])/chr(hex($1))/eg;
    push(@cts_char, $string);
    @cts_char[$#_] =~ s/([a-fA-F0-9][a-fA-F0-9])/chr(hex($1))/eg;
    #push(@cts_char, $string);
    
    #print "$string";
}
print "@cts_char";

print "XORing 1 and 2\n";
print "\n";
printf "%s\n", (@cts_char[0] ^ @cts_char[2]);
print "END\n";