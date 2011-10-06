package Crawler::DBIs;

use strict; 
use utf8;
use LWP;
use Digest::MD5 qw(md5_hex);
use base 'DBIx::Class::Schema';
use Crawler::DBIs::Schema;

#===  Class Method  ======================================================
# * class       : AMMS::DBIs
# * method      : new
# * parameters  : 
#       -$class DBI class
#       -%param which include mysql user,root,passwd,and db name 
# * returns     : $self or undef
# * description : init dbh and return
# * throws      : 
#       when dbh create failed,it return undef,otherwise return a dbh 
# * comments    : none
# * see also    : n/a
#=========================================================================
sub new
{
    my $class    = shift;
    my %param    = @_;

    my $self = {};
    foreach my $arg( qw( data_base user passwd host ) ){
        Carp::croak( "not defined this arg for dbi $arg" ) 
            unless exists $param{$arg};
    }

    $self->{DATA_BASE} = delete $param{data_base};
    $self->{USER}      = delete $param{user};
    $self->{PASSWD}    = delete $param{passwd};
    $self->{HOST}      = delete $param{host};
    $self->{DSN}       = "dbi:mysql:database=".$self->{DATA_BASE}
                       . ";host=".$self->{HOST}.";port=3306";

    return bless ($self,$class);
}

sub get_task{
	my $self = shift;
	return $self->{DBIx}->resultset('Task')->get_task(@_);
}

sub connect_db
{
    my $self    = shift;
    my $dbh = Crawler::DBIs::Schema->connect(
        $self->{DSN},
        $self->{USER},
        $self->{PASSWD},
        $self->{MYSQL} || { mysql_enable_utf8 => 1 }
    ) or Carp::croak(
        "can't connect to database $self->{DSN} with " .
        "user $self->{USER} ".
        "passwd $self->{PASSWD},".
        "reason: $@"
    );
    $self->{DBIx} = $dbh;
    return $dbh;
}

1;
