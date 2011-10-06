package Crawler::DBIs::Schema::Result::GoogleAccount;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Crawler::DBIs::Schema::Result::GoogleAccount

=cut

__PACKAGE__->table("google_account");

=head1 ACCESSORS

=head2 account

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 user_id

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 device_id

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 auth_sub_token

  data_type: 'varchar'
  is_nullable: 0
  size: 256

=head2 last_visited_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 last_success_visited_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 visited_times

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 fail_times

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "account",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "user_id",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "device_id",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "auth_sub_token",
  { data_type => "varchar", is_nullable => 0, size => 256 },
  "last_visited_time",
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
  "visited_times",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "fail_times",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
);
__PACKAGE__->set_primary_key("account");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-10-07 00:32:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:2QxwMnkQuzydiG6T0ILwqQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
