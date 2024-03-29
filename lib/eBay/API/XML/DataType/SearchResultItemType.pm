#!/usr/bin/perl

package eBay::API::XML::DataType::SearchResultItemType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SearchResultItemType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::SearchResultItemType

=head1 DESCRIPTION

Contains the data for one item listing found by a search (such as by
GetSearchResults).



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::SearchResultItemType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::ItemType;
use eBay::API::XML::DataType::NameValueListArrayType;
use eBay::API::XML::DataType::Enum::SearchResultValuesCodeType;


my @gaProperties = ( [ 'Item', 'ns:ItemType', ''
	     ,'eBay::API::XML::DataType::ItemType', '1' ]
	, [ 'ItemSpecific', 'ns:NameValueListArrayType', ''
	     ,'eBay::API::XML::DataType::NameValueListArrayType', '1' ]
	, [ 'SearchResultValues', 'ns:SearchResultValuesCodeType', '1'
	     ,'eBay::API::XML::DataType::Enum::SearchResultValuesCodeType', '' ]
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



=head2 setItem()

Contains summary data for the item listing itself, with the properties that define
the listing. For all item data, use an item-retrieval call, such as GetItem.
Output only.

#    Argument: 'ns:ItemType'

=cut

sub setItem {
  my $self = shift;
  $self->{'Item'} = shift
}

=head2 getItem()

  Calls: GetSearchResults
  Returned: Conditionally
  Details: DetailLevel: ItemReturnAttributes, ItemReturnCategories, none, ReturnAll
           GranularityLevel: Coarse


#    Returns: 'ns:ItemType'

=cut

sub getItem {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Item'
		,'eBay::API::XML::DataType::ItemType');
}


=head2 setItemSpecific()

A list of attribute and value pairs. GetSearchResults can return this
when the request either specifies IncludeCondition as true or
searches for the Item Condition by using SearchRequest.
If IncludeCondition was true, this returns the item condition (e.g., New).
If SearchRequest was used to search for the item condition or for
a US eBay Motors vehicle, the list returns the item condition or the
vehicle mileage and year. That is, the results only include attributes that
would be included in the summary search results on the Web site, if any.
In most categories, no summary attributes are returned in search results
(even when the item is listed with Item Specifics.) Not returned when
TicketFinder is used.

#    Argument: 'ns:NameValueListArrayType'

=cut

sub setItemSpecific {
  my $self = shift;
  $self->{'ItemSpecific'} = shift
}

=head2 getItemSpecific()

  Calls: GetSearchResults
  Returned: Conditionally
  Details: DetailLevel: ItemReturnAttributes, ItemReturnCategories, none, ReturnAll
           GranularityLevel: Coarse


#    Returns: 'ns:NameValueListArrayType'

=cut

sub getItemSpecific {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemSpecific'
		,'eBay::API::XML::DataType::NameValueListArrayType');
}


=head2 setSearchResultValues()

Contains additional information about the item listing returned in Item. This
information includes whether the item has an image associated with it,
and more. May contain zero, one, or multiple SearchResultValuesCodeType
values indicating different pieces of additional information about
the listing. These values are analogous to the icons that appear in an
item listing's line in a Search page.
Output only.

#    Argument: reference to an array  
                      of 'ns:SearchResultValuesCodeType'

=cut

sub setSearchResultValues {
  my $self = shift;
  $self->{'SearchResultValues'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getSearchResultValues()

  Calls: GetSearchResults
  Returned: Conditionally
  Details: DetailLevel: ItemReturnAttributes, ItemReturnCategories, none, ReturnAll
           GranularityLevel: Coarse


#    Returns: reference to an array  
                      of 'ns:SearchResultValuesCodeType'

=cut

sub getSearchResultValues {
  my $self = shift;
  return $self->_getDataTypeArray('SearchResultValues');
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
