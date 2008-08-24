#!/usr/bin/perl

package eBay::API::XML::DataType::CategoryMappingType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CategoryMappingType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::CategoryMappingType

=head1 DESCRIPTION

Mapping between an old category ID and an active category ID.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::CategoryMappingType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( 
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( [ 'id', 'xs:string', '', '', '' ]
	, [ 'oldID', 'xs:string', '', '', '' ]
                    );
push @gaAttributes, @{eBay::API::XML::BaseDataType::getAttributesList()};

=head1 Subroutines:

=cut

sub new {
  my $classname = shift;
  my %args = @_;
  my $self = $classname->SUPER::new(%args);
  return $self;
}

sub isScalar {
   return 0; 
}





=head2 setId()

Identifier for an active category. Unique for the site.
These IDs correspond to the current IDs in the category hierarchy
(returned from GetCategories and related calls). Multiple mappings can
specify the same active category ID, because different old IDs can be mapped
to the same active category. See "Mapping Categories on the Client Side" in the
eBay Web Services guide.
In GetCategoryMappings, this is always returned when CategoryMapping is returned.

#    Argument: 'xs:string'

=cut

sub setId {
  my $self = shift;
  $self->{'id'} = shift
}

=head2 getId()

  Calls: GetCategoryMappings
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getId {
  my $self = shift;
  return $self->{'id'};
}


=head2 setOldID()

Identifier for an old category that has been combined with an active category.
Unique for the site. These IDs correspond to older category IDs that
calls like GetCategories have returned in the past.
In GetCategoryMappings, this is always returned when CategoryMapping is returned.

#    Argument: 'xs:string'

=cut

sub setOldID {
  my $self = shift;
  $self->{'oldID'} = shift
}

=head2 getOldID()

  Calls: GetCategoryMappings
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getOldID {
  my $self = shift;
  return $self->{'oldID'};
}



##  Attribute and Property lists
sub getPropertiesList {
   my $self = shift;
   return \@gaProperties;
}

sub getAttributesList {
   my $self = shift;
   return \@gaAttributes;
}



1;   
