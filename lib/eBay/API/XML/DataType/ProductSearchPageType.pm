#!/usr/bin/perl

package eBay::API::XML::DataType::ProductSearchPageType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ProductSearchPageType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ProductSearchPageType

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ProductSearchPageType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::CharacteristicType;
use eBay::API::XML::DataType::CharacteristicsSetType;
use eBay::API::XML::DataType::DataElementSetType;
use eBay::API::XML::DataType::Enum::CharacteristicsSearchCodeType;


my @gaProperties = ( [ 'DataElementSet', 'ns:DataElementSetType', '1'
	     ,'eBay::API::XML::DataType::DataElementSetType', '1' ]
	, [ 'SearchCharacteristicsSet', 'ns:CharacteristicsSetType', ''
	     ,'eBay::API::XML::DataType::CharacteristicsSetType', '1' ]
	, [ 'SearchType', 'ns:CharacteristicsSearchCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CharacteristicsSearchCodeType', '' ]
	, [ 'SortCharacteristics', 'ns:CharacteristicType', '1'
	     ,'eBay::API::XML::DataType::CharacteristicType', '1' ]
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



=head2 setDataElementSet()

Contains helpful hints for the user. Usage of this information is optional.

#    Argument: reference to an array  
                      of 'ns:DataElementSetType'

=cut

sub setDataElementSet {
  my $self = shift;
  $self->{'DataElementSet'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getDataElementSet()

  Calls: GetProductSearchPage
  Returned: Always
  Details: DetailLevel: ReturnAll

#    Returns: reference to an array  
                      of 'ns:DataElementSetType'

=cut

sub getDataElementSet {
  my $self = shift;
  return $self->_getDataTypeArray('DataElementSet');
}


=head2 setSearchCharacteristicsSet()

A list of attributes that describe the choice of search criteria
for the specified characteristic set. The order in which the criteria are returned
is not significant and may vary for different requests. See the eBay Web Services guide
for details about how to use this data as input to GetProductSearchResults.

#    Argument: 'ns:CharacteristicsSetType'

=cut

sub setSearchCharacteristicsSet {
  my $self = shift;
  $self->{'SearchCharacteristicsSet'} = shift
}

=head2 getSearchCharacteristicsSet()

  Calls: GetProductSearchPage
  Returned: Always
  Details: DetailLevel: ReturnAll

#    Returns: 'ns:CharacteristicsSetType'

=cut

sub getSearchCharacteristicsSet {
  my $self = shift;
  return $self->_getDataTypeInstance( 'SearchCharacteristicsSet'
		,'eBay::API::XML::DataType::CharacteristicsSetType');
}


=head2 setSearchType()

Ignore this field. GetProductSearchPage only retrieves criteria
for single-attribute searches.
Use GetProductFinder for valid multi-attribute search criteria.

#    Argument: 'ns:CharacteristicsSearchCodeType'

=cut

sub setSearchType {
  my $self = shift;
  $self->{'SearchType'} = shift
}

=head2 getSearchType()

  Calls: GetProductSearchPage
  Returned: Always
  Details: DetailLevel: ReturnAll

#    Returns: 'ns:CharacteristicsSearchCodeType'

=cut

sub getSearchType {
  my $self = shift;
  return $self->{'SearchType'};
}


=head2 setSortCharacteristics()

A product aspect or feature that can be used as a key for sorting catalog
search results. This does not necessarily match a searchable attribute. For
example, you might be able to search on a product's title but sort the results
by the release date or the manufacturer's suggested retail price (MSRP). At
least one sort attribute is always returned. Applications should ensure that
only one attribute is selected as a sort key from these results (before
calling GetProductSearchResults). The default sort key is the one with the
lowest DisplaySequence value. The order in which the SortCharacteristics nodes
are returned is not significant and may vary for different requests. See the
eBay Web Services guide for details about how to use this data as input to
GetProductSearchResults.

#    Argument: reference to an array  
                      of 'ns:CharacteristicType'

=cut

sub setSortCharacteristics {
  my $self = shift;
  $self->{'SortCharacteristics'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getSortCharacteristics()

  Calls: GetProductSearchPage
  Returned: Always
  Details: DetailLevel: ReturnAll

#    Returns: reference to an array  
                      of 'ns:CharacteristicType'

=cut

sub getSortCharacteristics {
  my $self = shift;
  return $self->_getDataTypeArray('SortCharacteristics');
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
