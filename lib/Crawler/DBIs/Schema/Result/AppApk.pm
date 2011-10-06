package Crawler::DBIs::Schema::Result::AppApk;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Crawler::DBIs::Schema::Result::AppApk

=cut

__PACKAGE__->table("app_apk");

=head1 ACCESSORS

=head2 app_url_md5

  data_type: 'char'
  is_nullable: 0
  size: 32

=head2 app_unique_name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 apk_url

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 need_submmit

  data_type: 'enum'
  default_value: 'no'
  extra: {list => ["yes","no"]}
  is_nullable: 1

=head2 insert_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 last_visited_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 first_visited_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 last_success_visited_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 last_modified_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 visited_times

  data_type: 'integer'
  is_nullable: 0

=head2 updated_times

  data_type: 'integer'
  is_nullable: 0

=head2 status

  data_type: 'enum'
  default_value: 'undo'
  extra: {list => ["undo","doing","fail","paid","success","invalid"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "app_url_md5",
  { data_type => "char", is_nullable => 0, size => 32 },
  "app_unique_name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "apk_url",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "need_submmit",
  {
    data_type => "enum",
    default_value => "no",
    extra => { list => ["yes", "no"] },
    is_nullable => 1,
  },
  "insert_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "last_visited_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "first_visited_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "last_success_visited_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "last_modified_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "visited_times",
  { data_type => "integer", is_nullable => 0 },
  "updated_times",
  { data_type => "integer", is_nullable => 0 },
  "status",
  {
    data_type => "enum",
    default_value => "undo",
    extra => { list => ["undo", "doing", "fail", "paid", "success", "invalid"] },
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("app_url_md5");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-10-07 00:32:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:437rrSS9kQnvXoXdEdYlVA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
