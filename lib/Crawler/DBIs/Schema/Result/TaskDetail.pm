package Crawler::DBIs::Schema::Result::TaskDetail;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Crawler::DBIs::Schema::Result::TaskDetail

=cut

__PACKAGE__->table("task_detail");

=head1 ACCESSORS

=head2 task_id

  data_type: 'integer'
  is_nullable: 0

=head2 detail_id

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 detail_info

  data_type: 'varchar'
  is_nullable: 0
  size: 256

=cut

__PACKAGE__->add_columns(
  "task_id",
  { data_type => "integer", is_nullable => 0 },
  "detail_id",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "detail_info",
  { data_type => "varchar", is_nullable => 0, size => 256 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-10-07 00:32:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jzmRpdz/gcOHAZYJZ3bhHw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
