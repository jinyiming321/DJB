package Crawler::DBIs::Schema::Result::AppPrice;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Crawler::DBIs::Schema::Result::AppPrice

=cut

__PACKAGE__->table("app_price");

=head1 ACCESSORS

=head2 app_url_md5

  data_type: 'char'
  is_nullable: 0
  size: 32

=head2 currency

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 free

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 status

  data_type: 'enum'
  default_value: 'fail'
  extra: {list => ["undo","fail","success"]}
  is_nullable: 1

=head2 cs

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 da

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 de

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 en

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 es

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 es_419

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 fr

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 it

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 nl

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 no

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 pt_br

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 pt_pt

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 fi

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 sv

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 tr

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 el

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 ru

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 zh_tw

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 zh_cn

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 ja

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=cut

__PACKAGE__->add_columns(
  "app_url_md5",
  { data_type => "char", is_nullable => 0, size => 32 },
  "currency",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "free",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "status",
  {
    data_type => "enum",
    default_value => "fail",
    extra => { list => ["undo", "fail", "success"] },
    is_nullable => 1,
  },
  "cs",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "da",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "de",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "en",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "es",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "es_419",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "fr",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "it",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "nl",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "no",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "pt_br",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "pt_pt",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "fi",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "sv",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "tr",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "el",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "ru",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "zh_tw",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "zh_cn",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "ja",
  { data_type => "varchar", is_nullable => 1, size => 32 },
);
__PACKAGE__->set_primary_key("app_url_md5");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-10-07 00:32:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:N/k3CFU4BL1e69i6/cMEjQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
