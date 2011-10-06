#!/usr/bin/perl 
#===============================================================================
#
#         file: 
#
#        usage: ./  
#
#  description: 
#
#      options: ---
# requirements: ---
#         bugs: ---
#        notes: ---
#       author:  (), 
#      company: 
#      version: 1.0
#      created:  
#     revision: ---
#===============================================================================

use strict;
use warnings;

my %hash = (
    a => 2,
    b => 3,
    c => 4,
    d => 1,
    e => 8,
);


my @sorted_keys = 
    map{ $_->[0] } 
    sort { $a->[1] <=> $b->[1] } 
    map{ [$_,$hash{$_}] } keys %hash;

foreach ( @sorted_keys ){
	print "key : $_ => $hash{$_}\n";
}




