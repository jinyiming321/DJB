package Crawler::DBIs::Schema::Result::Market;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Crawler::DBIs::Schema::Result::Market

=cut

__PACKAGE__->table("market");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 language

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 feeder_entity_of_task

  data_type: 'integer'
  is_nullable: 0

=head2 interval_of_discovery

  data_type: 'integer'
  default_value: 3
  is_nullable: 0

=head2 interval_of_update

  data_type: 'integer'
  default_value: 12
  is_nullable: 0

=head2 status

  data_type: 'enum'
  default_value: 'good'
  extra: {list => ["good","bad"]}
  is_nullable: 1

=head2 start_crawl_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 access_url

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 developer_url

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 cover_country

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 supported_language

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 header_quarter

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 setup_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 description

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "language",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "feeder_entity_of_task",
  { data_type => "integer", is_nullable => 0 },
  "interval_of_discovery",
  { data_type => "integer", default_value => 3, is_nullable => 0 },
  "interval_of_update",
  { data_type => "integer", default_value => 12, is_nullable => 0 },
  "status",
  {
    data_type => "enum",
    default_value => "good",
    extra => { list => ["good", "bad"] },
    is_nullable => 1,
  },
  "start_crawl_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "access_url",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "developer_url",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "cover_country",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "supported_language",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "header_quarter",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "setup_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "description",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-10-07 00:32:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:n16sjzUkxDpkKMWbGU9rLA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
