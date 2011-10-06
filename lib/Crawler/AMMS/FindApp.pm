package Crawler::AMMS::FindApp;
#===============================================================================
#         file: FindApp.pm
#
#  description: 
#
#        files: ---
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
use Data::Dumper;
use Try::Tiny;
use FileHandle;
use POE;
use File::Spec;
use base qw( Crawler::AMMS );
use Crawler::HTTP::Async;

# here set a constact var for subclass ,and this sub class attr range is [10..20]
use constant ALIAS       => 0;
use constant PAGE_PARSER => 20;

sub HTTP () { 5 };

#===  Class Method  ======================================================
# * class       : Crawler::AMMS::FindApp
# * method      : new
# * parameters  : ????
# * returns     : ????
# * description : <cursor>
# * throws      : no exceptions
# * comments    : none
# * see also    : n/a
#=========================================================================
sub new{
    my $class = shift;
    my %param = @_;

    unless( exists $param{alias} and defined($param{alias}) ){
        Carp::croak(" not defined a poe alias for send event" )
    }


    my $self = $class->SUPER::new( %param );
    $self->[ALIAS] = delete $param{alias};
    $self->[PAGE_PARSER] = delete $param{parse_page_list};

    # create a poe session of find_app
    POE::Session->create(
        object_states => [
            $self => {
            	_start        => "_find_app_start",
            	_stop         => "_find_app_stop",
            	parse_page    => "_parse_page",
            	download_app  => "_download_app",
            	download_page => "_download_page",
            }
        ],
    );

    return $self;
}

sub _find_app_stop{
}

sub _download_page{

}
sub _download_app{

}

sub _find_app_start{
    my ( $self,$kernel ) = @_[OBJECT,KERNEL];
    $kernel->alias_set( $self->[ALIAS] );

    # if every_thing is ready now
=pod
    my $task_info = $self->[DBI]->get_task_info(
        'task_type' => 'find_app',
    );
=cut

    my %feeder_urls = (
        1   => 'http://www.pcpop.com/doc/0/716/716600.shtml',
    );
    # TODO alias for main session
    $kernel->call( 
        $self->[ALIAS],
        'parse_page' => ( $self->[PAGE_PARSER],$feeder_urls{$_} ),
    ) foreach ( keys %feeder_urls );
}

sub _find_app_default{
    print("Begin FindApp session ....\n");
}

#===  Class Method  ======================================================
# * class       : Crawler::AMMS::FindApp
# * method      : _parse_page
# * parameters  : ????
# * returns     : ????
# * description : <cursor>
# * throws      : no exceptions
# * comments    : none
# * see also    : n/a
#=========================================================================
sub _parse_page{
	my ( $self,$kernel,$session,$heap,$cb,$feeder_url ) 
	    = @_[OBJECT,KERNEL,SESSION,HEAP,ARG0,ARG1];
    $self->[HTTP] = new Crawler::HTTP::Async;
    print "begin parse_page\n";

    # from anyevent downloader get html
    $self->[HTTP]->request(
        url      => 'http://www.pcpop.com/doc/0/716/716600.shtml',
        cb       => $self->[PAGE_PARSER],
        timetout => 30,
        session  => $session,
        kernel   => $kernel,
        action   => 'GET'
    );
    die "can't parse page\n";
}

1;

__END__
