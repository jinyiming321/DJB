package Crawler::DBIs::Schema::Result::Task;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Crawler::DBIs::Schema::Result::Task

=cut

__PACKAGE__->table("task");

=head1 ACCESSORS

=head2 task_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 market_id

  data_type: 'integer'
  is_nullable: 0

=head2 worker_ip

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 task_type

  data_type: 'enum'
  extra: {list => ["find_app","new_app","update_app","new_apk","multi-lang","price"]}
  is_nullable: 0

=head2 status

  data_type: 'enum'
  default_value: 'undo'
  extra: {list => ["undo","doing","done"]}
  is_nullable: 0

=head2 request_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 start_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 done_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 task_changed_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "task_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "market_id",
  { data_type => "integer", is_nullable => 0 },
  "worker_ip",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "task_type",
  {
    data_type => "enum",
    extra => {
      list => [
        "find_app",
        "new_app",
        "update_app",
        "new_apk",
        "multi-lang",
        "price",
      ],
    },
    is_nullable => 0,
  },
  "status",
  {
    data_type => "enum",
    default_value => "undo",
    extra => { list => ["undo", "doing", "done"] },
    is_nullable => 0,
  },
  "request_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    default_value => "0000-00-00 00:00:00",
    is_nullable => 0,
  },
  "start_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    default_value => "0000-00-00 00:00:00",
    is_nullable => 0,
  },
  "done_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    default_value => "0000-00-00 00:00:00",
    is_nullable => 0,
  },
  "task_changed_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    default_value => "0000-00-00 00:00:00",
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("task_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-10-07 00:32:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1myCNdLV5O41J4I8xxqXeQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
