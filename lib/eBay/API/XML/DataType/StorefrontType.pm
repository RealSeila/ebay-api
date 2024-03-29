#!/usr/bin/perl

package eBay::API::XML::DataType::StorefrontType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. StorefrontType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::StorefrontType

=head1 DESCRIPTION

Contains information related to the item in the context of
a seller's eBay Store. Applicable for auction format, Basic Fixed Price,
and Store Inventory format items listed by eBay Stores sellers.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::StorefrontType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'StoreCategory2ID', 'xs:long', '', '', '' ]
	, [ 'StoreCategoryID', 'xs:long', '', '', '' ]
	, [ 'StoreName', 'xs:string', '', '', '' ]
	, [ 'StoreURL', 'xs:anyURI', '', '', '' ]
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



=head2 setStoreCategory2ID()

Applicable for eBay Store sellers only. Numeric ID for a second custom
category that the seller created in their eBay Store. eBay Stores sellers can
create up to 300 custom categories for their stores. (One additional Store
category cannot be customized and retains the value of "Other"). <br>
If you specify an invalid value, the values are the same for both the primary
and secondary store categories, or if the seondary store category is
specified but the primary is left blank (or other),  the system resets the
value to 0 (None). In short, the primary store category must be set to
something meaningful and different from the second store category
in order to set the secondary store category to a value other than 0.
In GetSearchResults and GetProducts, this field currently returns 0.
As a workaround, use GetItem or related calls to get the ID.

  Calls: AddItem
         GetItemRecommendations
         RelistItem
         ReviseItem
         VerifyAddItem
  RequiredInput: No

#    Argument: 'xs:long'

=cut

sub setStoreCategory2ID {
  my $self = shift;
  $self->{'StoreCategory2ID'} = shift
}

=head2 getStoreCategory2ID()

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Coarse, Medium, Fine


  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetSearchResults
  Returned: Conditionally
  Details: DetailLevel: ItemReturnAttributes, ItemReturnCategories, none, ReturnAll
           GranularityLevel: Coarse


#    Returns: 'xs:long'

=cut

sub getStoreCategory2ID {
  my $self = shift;
  return $self->{'StoreCategory2ID'};
}


=head2 setStoreCategoryID()

Numeric ID for a custom category that the seller created in
their eBay Store, if any.
eBay Stores sellers can create up to three levels of custom
categories for their stores.
Items can only be listed in store categories
that have no child categories (subcategories).
If you attempt to list an item in a category that has subcategories,
the call response contains a warning,
and the item is listed in the Other store category.
In GetSearchResults and GetProducts, this field currently returns 0.
As a workaround, use GetItem or related calls to get the ID.

  Calls: AddItem
         GetItemRecommendations
         RelistItem
         ReviseItem
         VerifyAddItem
  RequiredInput: No

#    Argument: 'xs:long'

=cut

sub setStoreCategoryID {
  my $self = shift;
  $self->{'StoreCategoryID'} = shift
}

=head2 getStoreCategoryID()

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Coarse, Medium, Fine


  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetSearchResults
  Returned: Conditionally
  Details: DetailLevel: ItemReturnAttributes, ItemReturnCategories, none, ReturnAll
           GranularityLevel: Coarse


#    Returns: 'xs:long'

=cut

sub getStoreCategoryID {
  my $self = shift;
  return $self->{'StoreCategoryID'};
}


=head2 setStoreName()

The name of the seller's eBay Store. GetProducts returns an empty
value for all items at the time of this writing.

MaxLength: 200

#    Argument: 'xs:string'

=cut

sub setStoreName {
  my $self = shift;
  $self->{'StoreName'} = shift
}

=head2 getStoreName()

  Calls: GetSearchResults
  Returned: Conditionally
  Details: DetailLevel: ItemReturnAttributes, ItemReturnCategories, none, ReturnAll
           GranularityLevel: Coarse


  Calls: GetProducts
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getStoreName {
  my $self = shift;
  return $self->{'StoreName'};
}


=head2 setStoreURL()

The URL of the seller's eBay Store page. GetProducts only returned
a default URL at the time of this writing.

#    Argument: 'xs:anyURI'

=cut

sub setStoreURL {
  my $self = shift;
  $self->{'StoreURL'} = shift
}

=head2 getStoreURL()

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Coarse, Medium, Fine


  Calls: GetBidderList
         GetProducts
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetSearchResults
  Returned: Conditionally
  Details: DetailLevel: ItemReturnAttributes, ItemReturnCategories, none, ReturnAll
           GranularityLevel: Coarse


#    Returns: 'xs:anyURI'

=cut

sub getStoreURL {
  my $self = shift;
  return $self->{'StoreURL'};
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
