package Crawler::DBIs::Schema::Result::MarketMonitor;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Crawler::DBIs::Schema::Result::MarketMonitor

=cut

__PACKAGE__->table("market_monitor");

=head1 ACCESSORS

=head2 market_id

  data_type: 'integer'
  is_nullable: 0

=head2 cycle

  data_type: 'integer'
  is_nullable: 0

=head2 start_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 end_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 status

  data_type: 'enum'
  default_value: 'doing'
  extra: {list => ["doing","done"]}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "market_id",
  { data_type => "integer", is_nullable => 0 },
  "cycle",
  { data_type => "integer", is_nullable => 0 },
  "start_time",
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
  "status",
  {
    data_type => "enum",
    default_value => "doing",
    extra => { list => ["doing", "done"] },
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("market_id", "cycle");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-10-07 00:32:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GStv4t7f86CDxXwnktrRmQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
