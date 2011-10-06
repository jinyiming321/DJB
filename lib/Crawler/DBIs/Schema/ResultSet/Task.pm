package Crawler::DBIs::Schema::ResultSet::Task;
#===============================================================================
#
#         file: 
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
use base 'DBIx::Class::ResultSet';

#===  Class Method  ======================================================
# * class       : Crawler::DBIs::Schema::ResultSet::Task
# * method      : get_task
# * parameters  : ????
#        -@_ ( $self,$task_type,$work_ip,$market_info )
#        -$market_info information of market
#        -$task_type   tasktype which like as 'find_app' or 'new_app' 
#           or 'update_app'
#        -$work_ip  ip of crawler
# * returns     : task_id
# * description : 
#       this method find a task_info for a marketid,and return a task_id
# * throws      : no exceptions
# * comments    : none
# * see also    : n/a
#=========================================================================
sub get_task{
	my ( $self,$market_info,$task_type,$work_ip ) = ( shift,pop,shift,pop );
	return unless ref($market_info);
	return unless $market_info->{id};
    
    my $task_id;
    # TODO check task_type and add sql
	my $rs = $self->search(
	    undef,
        {
        	market_id => $market_info->{id},
        	task_type => $task_type,
        	status    => 'undo',
        	rows      => 1,
            order_by  => 'request_time asc',
        },
    )->single;

    return unless ref($rs);
    $task_id = $rs->next->task_id;
    return $task_id;
}

1;


