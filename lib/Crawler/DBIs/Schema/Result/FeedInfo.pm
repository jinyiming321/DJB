package Crawler::DBIs::Schema::Result::FeedInfo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Crawler::DBIs::Schema::Result::FeedInfo

=cut

__PACKAGE__->table("feed_info");

=head1 ACCESSORS

=head2 feed_url_md5

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 feed_url

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 feeder_id

  data_type: 'integer'
  is_nullable: 0

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
  "feed_url_md5",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "feed_url",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "feeder_id",
  { data_type => "integer", is_nullable => 0 },
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
__PACKAGE__->set_primary_key("feed_url_md5");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-10-07 00:32:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:HwtcQjBiy1SH3oHDRajsiw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
