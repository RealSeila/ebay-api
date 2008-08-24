#!/usr/bin/perl

package eBay::API::XML::DataType::AttributeSetArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AttributeSetArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::AttributeSetArrayType

=head1 DESCRIPTION

Applicable for listings that include eBay's Item Specifics or Pre-filled Item
Information features. A list of attribute sets. An attribute set contains a list
of attributes that describe category-specific aspects or features of an item in a
standardized way. See the Developer's Guide for more information. In item-listing
requests, this property is required if attributes are identified as required in
the characteristics set meta-data. See the Developer's Guide for information about
characteristics meta-data and how to determine when attributes are required.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::AttributeSetArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AttributeSetType;


my @gaProperties = ( [ 'AttributeSet', 'ns:AttributeSetType', '1'
	     ,'eBay::API::XML::DataType::AttributeSetType', '1' ]
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



=head2 setAttributeSet()

Contains a list of attributes that describe category-specific aspects or
features of an item in a standardized way.<br> <br> For the
AddItem family of calls and GetItem, an AttributeSetArray can contain a
maximum of 2 full attribute sets (one for each category in which the item is
listed) if the primary and secondary categories are mapped to different
characteristic sets. If they are mapped to the same characteristic set, the
AttributeSetArray can contain one full attribute set.<br>
<br>
An AttributeSetArray can also contain any number of additional site-wide
attribute sets. In item-listing requests, AttributeSet is required if the
category is mapped to a characteristic set with required attributes. On the US
site, attributes are usually required for Tickets, eBay Motors vehicles, and
Real Estate listings. See GetCategory2CS and GetAttributesCS. See the
Developer's Guide for information about attribute meta-data and validation
rules that are applicable when listing items.<br>
<br>
In GetItem, the Half.com item condition may be returned once in an
AttributeSet node with Half.com IDs and values, and once in a separate
AttributeSet node with a site-wide eBay item condition. The Half.com IDs are
not necessarily returned in GetAttributesCS, so you can use the eBay.com data
instead. Half.com listings may also return an AttributeSet node with other
eBay attributes.

  Calls: AddItem
         AddLiveAuctionItem
         GetItemRecommendations
         VerifyAddItem
  RequiredInput: Conditionally

  Calls: GetSearchResults
         RelistItem
         ReviseItem
         ReviseLiveAuctionItem
  RequiredInput: No

#    Argument: reference to an array  
                      of 'ns:AttributeSetType'

=cut

sub setAttributeSet {
  my $self = shift;
  $self->{'AttributeSet'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getAttributeSet()

  Calls: GetCategoryListings
         GetItemRecommendations
  Returned: Conditionally

  Calls: GetSearchResults
         GetProducts
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnAttributes, ItemReturnCategories, ReturnAll
           GranularityLevel: Coarse


  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: ItemReturnAttributes, ReturnAll

#    Returns: reference to an array  
                      of 'ns:AttributeSetType'

=cut

sub getAttributeSet {
  my $self = shift;
  return $self->_getDataTypeArray('AttributeSet');
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
