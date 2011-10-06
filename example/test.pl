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
use lib '/root/KingCrawler/lib';

use strict;
use warnings;
use Crawler::DBIs::Schema;

my $dbh = Crawler::DBIs::Schema->connect(
    "dbi:mysql:database=AMMS;host=localhost;port=3306",
    "root",
    "root",
) or die "can't connect MySQL";
use Data::Dumper;
my $rs = $dbh->resultset('Market')->search(
    undef,
    {
    	rows => 10,
    }
);
#print Dumper $rs;
#
while( my $row = $rs->next ){
	print "market id -> ".$row->id." name is ".$row->name."\n";
}
