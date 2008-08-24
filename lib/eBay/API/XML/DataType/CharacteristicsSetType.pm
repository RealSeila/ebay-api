#!/usr/bin/perl

package eBay::API::XML::DataType::CharacteristicsSetType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CharacteristicsSetType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::CharacteristicsSetType

=head1 DESCRIPTION

A level in the eBay category hierarchy at which a particular group of
items can share a common set of attributes. A set of characteristics
that can be used to describe similar kinds of items in a standardized way.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::CharacteristicsSetType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::CharacteristicType;


my @gaProperties = ( [ 'AttributeSetID', 'xs:int', '', '', '' ]
	, [ 'AttributeSetVersion', 'xs:string', '', '', '' ]
	, [ 'Characteristics', 'ns:CharacteristicType', '1'
	     ,'eBay::API::XML::DataType::CharacteristicType', '1' ]
	, [ 'Name', 'xs:string', '', '', '' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( 
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



=head2 setAttributeSetID()

Numeric value that identifies the characteristic set in a language-independent
way. Identifies the characteristic set that is mapped to a catalog-enabled
category associated with the product. Unique across all eBay sites.

  Calls: GetProductSellingPages
  RequiredInput: Yes

#    Argument: 'xs:int'

=cut

sub setAttributeSetID {
  my $self = shift;
  $self->{'AttributeSetID'} = shift
}

=head2 getAttributeSetID()

  Calls: GetCategory2CS
  Returned: Conditionally
  Details: DetailLevel: ReturnAll
  Context: MappedCategoryArray
           SiteWideCharacteristicSets

  Calls: GetProductFamilyMembers
         GetProductSearchPage
         GetProductSearchResults
  Returned: Always
  Details: DetailLevel: ReturnAll

#    Returns: 'xs:int'

=cut

sub getAttributeSetID {
  my $self = shift;
  return $self->{'AttributeSetID'};
}


=head2 setAttributeSetVersion()

Version of the characteristics set. Not to be confused with
AttributeSystemVersion, which can be used to retrieve changes to attribute
meta-data. In item-listing requests, if you specify the version of the
attribute set that you have stored locally, eBay will compare it to the
current version on the site and return a warning if the versions do not match.
If an error occurs due to invalid attribute data, this warning can be useful
to help determine if you might be sending outdated data. The current value of
version is not necessarily "greater than" the previous value.

#    Argument: 'xs:string'

=cut

sub setAttributeSetVersion {
  my $self = shift;
  $self->{'AttributeSetVersion'} = shift
}

=head2 getAttributeSetVersion()

  Calls: GetCategory2CS
  Returned: Conditionally
  Details: DetailLevel: ReturnAll
  Context: MappedCategoryArray
           SiteWideCharacteristicSets

#    Returns: 'xs:string'

=cut

sub getAttributeSetVersion {
  my $self = shift;
  return $self->{'AttributeSetVersion'};
}


=head2 setCharacteristics()

A salient aspect or feature of an item. Used to describe an item in a standard
way so that buyers can find it more easily. An individual, standardized
characteristic that is common to all items within the specified characteristic
set. In the context of GetProductSearchPage, each characteristic identifies a
single searchable attribute. A searchable attribute is a product aspect or
feature that can be used as a criterion in a search for catalog content. For
example, "Title" might be a criterion for searching the book catalog for Pre-
filled Item Information related to books. See the eBay Web Services guide for
more information.

#    Argument: reference to an array  
                      of 'ns:CharacteristicType'

=cut

sub setCharacteristics {
  my $self = shift;
  $self->{'Characteristics'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getCharacteristics()

  Calls: GetProductFamilyMembers
         GetProductSearchPage
         GetProductSearchResults
         GetProducts
  Returned: Always
  Details: DetailLevel: ReturnAll

#    Returns: reference to an array  
                      of 'ns:CharacteristicType'

=cut

sub getCharacteristics {
  my $self = shift;
  return $self->_getDataTypeArray('Characteristics');
}


=head2 setName()

The well-known name of the characteristic set (e.g., "Tickets" or "Books").

#    Argument: 'xs:string'

=cut

sub setName {
  my $self = shift;
  $self->{'Name'} = shift
}

=head2 getName()

  Calls: GetCategory2CS
  Returned: Conditionally
  Details: DetailLevel: ReturnAll
  Context: MappedCategoryArray
           SiteWideCharacteristicSets

#    Returns: 'xs:string'

=cut

sub getName {
  my $self = shift;
  return $self->{'Name'};
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
