package Crawler::DBIs::Schema::Result::GoogleMultiLang;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Crawler::DBIs::Schema::Result::GoogleMultiLang

=cut

__PACKAGE__->table("google_multi_lang");

=head1 ACCESSORS

=head2 app_url_md5

  data_type: 'char'
  is_nullable: 0
  size: 32

=head2 status

  data_type: 'enum'
  default_value: 'fail'
  extra: {list => ["undo","fail","success"]}
  is_nullable: 1

=head2 cs

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 da

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 de

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 en

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 es

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 es_419

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 fr

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 it

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 nl

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 no

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 pt_br

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 pt_pt

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 fi

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 sv

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 tr

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 el

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 ru

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 zh_tw

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 zh_cn

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 ja

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "app_url_md5",
  { data_type => "char", is_nullable => 0, size => 32 },
  "status",
  {
    data_type => "enum",
    default_value => "fail",
    extra => { list => ["undo", "fail", "success"] },
    is_nullable => 1,
  },
  "cs",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "da",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "de",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "en",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "es",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "es_419",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "fr",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "it",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "nl",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "no",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "pt_br",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "pt_pt",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "fi",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "sv",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "tr",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "el",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "ru",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "zh_tw",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "zh_cn",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "ja",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
);
__PACKAGE__->set_primary_key("app_url_md5");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-10-07 00:32:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:DinjGJmxeDH8zPao7Buu+Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
