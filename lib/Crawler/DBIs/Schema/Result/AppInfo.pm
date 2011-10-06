package Crawler::DBIs::Schema::Result::AppInfo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Crawler::DBIs::Schema::Result::AppInfo

=cut

__PACKAGE__->table("app_info");

=head1 ACCESSORS

=head2 app_url_md5

  data_type: 'char'
  is_nullable: 0
  size: 32

=head2 app_name

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 official_category

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 official_sub_category

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 trustgo_category_id

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 author

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 support_os

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 app_capacity

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 system_requirement

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 max_os_version

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 min_os_version

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 resolution

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 note

  data_type: 'varchar'
  is_nullable: 1
  size: 256

=head2 official_rating_stars

  data_type: 'decimal'
  is_nullable: 0
  size: [3,1]

=head2 official_rating_times

  data_type: 'integer'
  is_nullable: 0

=head2 release_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 last_update

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 size

  data_type: 'integer'
  is_nullable: 0

=head2 price

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 currency

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 current_version

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 total_install_times

  data_type: 'integer'
  is_nullable: 1

=head2 app_url

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 app_qr

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 website

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 support_website

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 language

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 copyright

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 age_rating

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 permission

  data_type: 'bigint'
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

=head2 worker_ip

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 market_id

  data_type: 'integer'
  is_nullable: 0

=head2 status

  data_type: 'enum'
  default_value: 'success'
  extra: {list => ["undo","doing","fail","success","invalid","up_to_date"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "app_url_md5",
  { data_type => "char", is_nullable => 0, size => 32 },
  "app_name",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "official_category",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "official_sub_category",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "trustgo_category_id",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "author",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "support_os",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "app_capacity",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "system_requirement",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "max_os_version",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "min_os_version",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "resolution",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "note",
  { data_type => "varchar", is_nullable => 1, size => 256 },
  "official_rating_stars",
  { data_type => "decimal", is_nullable => 0, size => [3, 1] },
  "official_rating_times",
  { data_type => "integer", is_nullable => 0 },
  "release_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "last_update",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "size",
  { data_type => "integer", is_nullable => 0 },
  "price",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "currency",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "current_version",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "total_install_times",
  { data_type => "integer", is_nullable => 1 },
  "app_url",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "app_qr",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "website",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "support_website",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "language",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "copyright",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "age_rating",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "permission",
  { data_type => "bigint", is_nullable => 1 },
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
  "worker_ip",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "market_id",
  { data_type => "integer", is_nullable => 0 },
  "status",
  {
    data_type => "enum",
    default_value => "success",
    extra => {
      list => ["undo", "doing", "fail", "success", "invalid", "up_to_date"],
    },
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("app_url_md5");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-10-07 00:32:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:or/3WnLLWqz/vyl7+tetCw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
