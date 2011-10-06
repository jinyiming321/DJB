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

use AnyEvent::HTTP;
use LWP::Simple;
use Benchmark;


my $file = '/root/KingCrawler/test.html';

timethese(
    -100,
    {
        'lwp'       => sub {
            get($file);

        },
        'anyevent'  => sub {
            my $w; 
            $w = AnyEvent->condvar;
            http_get  
                $file,
                sub {
                    my ( $body,$header) = @_;
                }
        }
    }
);
 



