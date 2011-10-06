package Crawler::DBIs::Schema::Result::Log;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Crawler::DBIs::Schema::Result::Log

=cut

__PACKAGE__->table("log");

=head1 ACCESSORS

=head2 pid

  data_type: 'integer'
  is_nullable: 0

=head2 level

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 10

=head2 file

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 line

  data_type: 'integer'
  is_nullable: 0

=head2 date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 mesg

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 1024

=cut

__PACKAGE__->add_columns(
  "pid",
  { data_type => "integer", is_nullable => 0 },
  "level",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 10 },
  "file",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "line",
  { data_type => "integer", is_nullable => 0 },
  "date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    default_value => "0000-00-00 00:00:00",
    is_nullable => 0,
  },
  "mesg",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 1024 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-10-07 00:32:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:vgbbcKNtqziaGz4+CE9L7g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
