use utf8;
package Lystyng::Schema::Result::ListItem;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Lystyng::Schema::Result::ListItem

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::EncodedColumn>

=back

=cut

__PACKAGE__->load_components("EncodedColumn");

=head1 TABLE: C<list_item>

=cut

__PACKAGE__->table("list_item");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 title

  data_type: 'varchar'
  is_nullable: 0
  size: 200

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 list

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "title",
  { data_type => "varchar", is_nullable => 0, size => 200 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "list",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 list

Type: belongs_to

Related object: L<Lystyng::Schema::Result::List>

=cut

__PACKAGE__->belongs_to(
  "list",
  "Lystyng::Schema::Result::List",
  { id => "list" },
  { is_deferrable => 1, on_delete => "RESTRICT", on_update => "RESTRICT" },
);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-01-30 20:13:57
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:JdNndq1NJ/hzKunvCfj99g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
