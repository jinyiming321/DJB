package Crawler::DBIs::Schema::Result::AppExtraInfo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Crawler::DBIs::Schema::Result::AppExtraInfo

=cut

__PACKAGE__->table("app_extra_info");

=head1 ACCESSORS

=head2 app_url_md5

  data_type: 'char'
  is_nullable: 0
  size: 32

=head2 last_update

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "app_url_md5",
  { data_type => "char", is_nullable => 0, size => 32 },
  "last_update",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("app_url_md5");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-10-07 00:32:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5OXfaUqQCoWG+AzWYCNC3g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
