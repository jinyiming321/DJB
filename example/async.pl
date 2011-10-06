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
use lib '/root/KingCrawler/lib';

use Crawler::HTTP::Async;

my $http = Crawler::HTTP::Async->new(
);
$http->request(
    cb => sub {}
);





