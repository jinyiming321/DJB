package Crawler::HTTP::Async;

use strict;
use warnings;
use Data::Dumper;
use Try::Tiny;
use POE;
use AnyEvent::HTTP qw( http_request http_get );
use Carp;

use constant{
	USER_AGENT => 'FireFox',
	ACTION     => 'GET',
};

sub new{
    my $class = shift;
    my %param = @_;

    my $self = bless {},$class;
    $self->initialize( \%param ) ;
#    $self->{Watcher} = AnyEvent->condvar;

    return $self;
}

sub initialize{
    my ( $self,$config ) = @_;
    # save config to self
    @$self{keys %$config} = values %$config;

    unless( exists $config->{"User-Agent"} ){
    	$self->{"User-Agent"} = USER_AGENT;
    }
    unless( exists $config->{ACTION} ){
    	$self->{'ACTION'} = ACTION;
    }
}

sub request{
	my ( $self,%args ) = @_;

	Carp::croak(
	    "not defined a callback for this request"
	) unless exists $args{cb} && ref($args{cb}) eq 'CODE' ;

    # anyevent request 
    use Data::Dumper;
    print Dumper ref $args{cb};
    my $w; 
    $w = AnyEvent->condvar;
    http_get 'http://www.pcpop.com/doc/0/716/716600.shtml',sub{
       my $header = $_[1];
       print Dumper $header;
       print "get args url \n" };
    $w->recv;
=pod
    my $w = $self->{Watcher};
    $w->begin;
    http_request 
#        $args{action} || ACTION 
#        GET           => $args{url},
        GET           => 'http://www.pcpop.com/doc/0/716/716600.shtml',
        # define http headers
        headers       => {
        	'User-Agent'    => $self->{'User-Agent'},
#        	'Content-Type'  => $self->{'Content-Type'},
#        	'Referer'       => $self->{Referer},
#        	'keepalive'     => $self->{keepalive},
        	'timeout'       => $self->{Timeout},
            # cookie todo 
        },
        sub {
            my ( $body,$header ) = ( shift,pop );
            print "get url is $args{url}\n";
            use Data::Dumper;
            print Dumper $header;
            $w->end;
        }
    ;
    $w->recv;
=cut

}

sub get{

}

sub post{

}

sub call{

}

sub async{

}

sub coro{

}


1;
__END__
