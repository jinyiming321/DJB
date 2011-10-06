package Crawler::DBIs::Schema::Result::Feeder;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Crawler::DBIs::Schema::Result::Feeder

=cut

__PACKAGE__->table("feeder");

=head1 ACCESSORS

=head2 feeder_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 feeder_url

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 market_id

  data_type: 'integer'
  is_nullable: 0

=head2 parent_category

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 sub_category

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 last_visited_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 status

  data_type: 'enum'
  default_value: 'undo'
  extra: {list => ["undo","doing","success","fail","invalid"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "feeder_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "feeder_url",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "market_id",
  { data_type => "integer", is_nullable => 0 },
  "parent_category",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "sub_category",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "last_visited_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "status",
  {
    data_type => "enum",
    default_value => "undo",
    extra => { list => ["undo", "doing", "success", "fail", "invalid"] },
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("feeder_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-10-07 00:32:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fZz3FgAI9iGM+fp/jV5O5g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
