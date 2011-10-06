package Crawler::AMMS;
#=========================================================================
# * Module      : AMMS.pm 
# * Description : 
#  
# * Files       : AMMS.pm
# * Bugs        : ''
# * Notes       : ''
# * Author      : King James
# * CopyRight   : 
# * Version     : 1.0
# * Created     :  
#=========================================================================
#
use strict;
use warnings;
use Data::Dumper;
use Cwd qw( abs_path );
BEGIN{
    unshift @INC,$1 if abs_path($0) =~ m!(.+?lib/)!;
}
use Carp;
use FileHandle;
use File::Spec;
use POE;
use Try::Tiny;
use Crawler::HTTP::Async;
use Crawler::DBIs;

BEGIN{
    require YAML::Syck;
    YAML::Syck->import;
    $YAML::Syck::ImplicitTyping = 1;
}

# init constant var
use constant{
    DEFAULT_TASK_MAX        => 20,
    DEFAULT_LOG_CONFIG      => {

    },
    DEFAULT_YAML_DIR        => {

    },
    LOGGER                  => {
        
    },
    CONFIG_YAML             => {

    },
    DEFAULT_DBI_CONFIG      => {
        user        => 'root',
        passwd      => 'root',
        host        => 'localhost',
        data_base   => 'AMMS',
 
    },
    ALIAS                   => 0,
    DBI                     => 1,
    TIME_OUT                => 30,
    PARSE_PAGE_LIST         => 5,
    PARSE_APP_LIST          => 6,
    PARSE_APP_INFO          => 7,
    TASK_CUSTOM             => 11,
};


sub HTTP () { 5 };

#===  Class Method  ======================================================
# * class       : AMMS
# * method      : new
# * parameters  : 
#       -%param  config_file => 'xxx.config',
#
# * returns     : $self
# * description : 
#       create a amms poe session and init conifig
# * throws      : no exceptions
# * comments    : none
# * see also    : n/a
#=========================================================================
sub new{
    my $class = shift;
    my %param = @_;

    my $self = bless [],$class;
    # init dbi config
    $self->initialize( $param{config_file} );
    $self->[ALIAS] = delete $param{alias};

    return $self;
}

sub _import_feeder{

}

sub _add_market{

}


sub _generate_task{
    my ( $self,$kernel,$heap,$session ) = @_;
    
    if( my $task_type =  $self->[TASK_CUSTOM] ){
        my @task_type = split(",",$task_type);
        for( @task_type ){
            if( $_ eq 'find_app' ){
                
            }
            elsif( $_ eq 'new_app' ){
               
            }
            else{
              
            }
        }
    }else{

    }
}

#===  Class Method  ======================================================
# * class       : AMMS
# * method      : _amms_start
# * parameters  : ????
# * returns     : ????
# * description : 
#      set a alias name for this amms session
# * throws      : no exceptions
# * comments    : none
# * see also    : n/a
#=========================================================================
sub _amms_start{
    my ( $self,$kernel ) = @_[OBJECT,KERNEL];
    $kernel->alias_set( $self->[ALIAS] );
}

#===  Class Method  ======================================================
# * class       : AMMS
# * method      : initialize
# * parameters  : ????
# * returns     : ????
# * description : <cursor>
# * throws      : no exceptions
# * comments    : none
# * see also    : n/a
#=========================================================================
sub initialize{
    my ( $self,$config_file ) = ( shift ,pop );
    
    # check config file whether exists
    unless( -e $config_file ){
        warn(" not exist this file $config_file ");
    }
    if( ref( my $hashref = Load($config_file) ) ){
        foreach my $attr( 
            'DIR_CONFIG','DBI_CONFIG','LOGGING_CONFIG',
        ){
            my $init = "initialize"."_".lc($attr);
            unless( exists $hashref->{$attr} ){
                warn (
                    "not input parameters for this attr $attr,and load",
                    "default config"
                );
                $self->$init( eval( 'DEFAULT_'.$attr ) );
                next;
            }
            $self->$init( $hashref->{$attr} );
            next;
        } 
    }else{

    }
   
}

#===  Class Method  ======================================================
# * class       : AMMS
# * method      : initialize_dbi
# * parameters  : ????
# * returns     : ????
# * description : <cursor>
# * throws      : no exceptions
# * comments    : none
# * see also    : n/a
#=========================================================================
sub initialize_dbi_config{
    my ( $self,$config_hashref ) = ( shift ,pop );
    
    try{
        $self->[DBI]
             = AMMS::DBIs->new( %$config_hashref )->connect_db;
    }
    catch{
        Carp::croak("init dbi failed : $@");
    }
}

sub log{
    my ( $self,$logging ) = ( shift,pop );
}

sub _warn{

}

sub _error{

}

sub _debug{

}

sub AUTOLOAD{
}

sub DESTROY{

}

1;









