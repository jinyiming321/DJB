package Crawler::DBIs::Schema::Result::Package;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Crawler::DBIs::Schema::Result::Package

=cut

__PACKAGE__->table("package");

=head1 ACCESSORS

=head2 task_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 worker_ip

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 package_name

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 status

  data_type: 'enum'
  default_value: 'undo'
  extra: {list => ["undo","doing","success","fail"]}
  is_nullable: 0

=head2 insert_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 end_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "task_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "worker_ip",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "package_name",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "status",
  {
    data_type => "enum",
    default_value => "undo",
    extra => { list => ["undo", "doing", "success", "fail"] },
    is_nullable => 0,
  },
  "insert_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    default_value => "0000-00-00 00:00:00",
    is_nullable => 0,
  },
  "end_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    default_value => "0000-00-00 00:00:00",
    is_nullable => 0,
  },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-10-07 00:32:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:DNT8GHIg++U+U+1NZ8d/eQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
