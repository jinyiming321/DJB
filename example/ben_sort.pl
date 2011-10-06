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
use Benchmark;
use AnyEvent::HTTP;

my %hash = map { $_,int(rand(100)) } (1..10000);
use Data::Dumper;
use LWP::Simple;

my @num = (1..1000);
my $url = "http://apk.gfan.com/Product/App171911.html";

my $w;
$w = AnyEvent->condvar;
timethese(
    -5,
    {
        'lwp'       => sub {
            get($url) 
        },
        'anyevent'  => sub {
            http_get  
                $url,
                sub {
                    my ( $body,$header) = @_;
                    print Dumper $header;
                    $w->send;
                }

                ;
            $w->recv;
        },
        'coro-lwp' => sub{
        	use AnyEvent::HTTP::LWP::UserAgent;
        	use Coro;
            my $ua = AnyEvent::HTTP::LWP::UserAgent->new;
            my @urls = ($url);
            my @coro = map{
                my $url = $_;
                async{
                    my $r = get($url);
                    #print "url $url, content " . $r->content . "\n";

                } @urls;
            }
            $_->join for @coro;
        }
    }
);
=pod
  use AnyEvent::HTTP::LWP::UserAgent;
    use Coro;

      my $ua = AnyEvent::HTTP::LWP::UserAgent->new;
        my @urls = (...);
          my @coro = map {
          	        my $url = $_;
          	              async {
                          	            my $r = $ua->get($url);
                          	                      print "url $url, content " . $r->content . "\n";
                          	                            }
                          	                              } @urls;
                          	                                $_->join for @coro;
=cut


 




