#!/usr/bin/perl

package eBay::API::XML::DataType::CrossPromotionsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CrossPromotionsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::CrossPromotionsType

=head1 DESCRIPTION

Contains one or more items cross-promoted with
the display or purchase of a referring item.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::CrossPromotionsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::ItemIDType;
use eBay::API::XML::DataType::PromotedItemType;
use eBay::API::XML::DataType::Enum::PromotionMethodCodeType;
use eBay::API::XML::DataType::Enum::PromotionSchemeCodeType;


my @gaProperties = ( [ 'ItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'PrimaryScheme', 'ns:PromotionSchemeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::PromotionSchemeCodeType', '' ]
	, [ 'PromotedItem', 'ns:PromotedItemType', '1'
	     ,'eBay::API::XML::DataType::PromotedItemType', '1' ]
	, [ 'PromotionMethod', 'ns:PromotionMethodCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::PromotionMethodCodeType', '' ]
	, [ 'SellerID', 'xs:string', '', '', '' ]
	, [ 'ShippingDiscount', 'xs:boolean', '', '', '' ]
	, [ 'StoreName', 'xs:string', '', '', '' ]
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



=head2 setItemID()

Unique item ID for the referring item.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

#    Argument: 'ns:ItemIDType'

=cut

sub setItemID {
  my $self = shift;
  $self->{'ItemID'} = shift
}

=head2 getItemID()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetCrossPromotions
  Returned: Always

#    Returns: 'ns:ItemIDType'

=cut

sub getItemID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemID'
		,'eBay::API::XML::DataType::ItemIDType');
}


=head2 setPrimaryScheme()

The primary cross-promotion rule scheme that
was applied to return the cross-promoted item.

#    Argument: 'ns:PromotionSchemeCodeType'

=cut

sub setPrimaryScheme {
  my $self = shift;
  $self->{'PrimaryScheme'} = shift
}

=head2 getPrimaryScheme()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetCrossPromotions
  Returned: Always

#    Returns: 'ns:PromotionSchemeCodeType'

=cut

sub getPrimaryScheme {
  my $self = shift;
  return $self->{'PrimaryScheme'};
}


=head2 setPromotedItem()

Contains one cross-promoted item.

#    Argument: reference to an array  
                      of 'ns:PromotedItemType'

=cut

sub setPromotedItem {
  my $self = shift;
  $self->{'PromotedItem'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getPromotedItem()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetCrossPromotions
  Returned: Conditionally

#    Returns: reference to an array  
                      of 'ns:PromotedItemType'

=cut

sub getPromotedItem {
  my $self = shift;
  return $self->_getDataTypeArray('PromotedItem');
}


=head2 setPromotionMethod()

The type of promotion, CrossSell or UpSell.

#    Argument: 'ns:PromotionMethodCodeType'

=cut

sub setPromotionMethod {
  my $self = shift;
  $self->{'PromotionMethod'} = shift
}

=head2 getPromotionMethod()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetCrossPromotions
  Returned: Always

#    Returns: 'ns:PromotionMethodCodeType'

=cut

sub getPromotionMethod {
  my $self = shift;
  return $self->{'PromotionMethod'};
}


=head2 setSellerID()

The eBay user ID of the seller offering the
cross-promoted item.

#    Argument: 'xs:string'

=cut

sub setSellerID {
  my $self = shift;
  $self->{'SellerID'} = shift
}

=head2 getSellerID()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetCrossPromotions
  Returned: Always

#    Returns: 'xs:string'

=cut

sub getSellerID {
  my $self = shift;
  return $self->{'SellerID'};
}


=head2 setShippingDiscount()

Whether a shipping discount is offered by the seller
when the cross-promoted item is purchased.

#    Argument: 'xs:boolean'

=cut

sub setShippingDiscount {
  my $self = shift;
  $self->{'ShippingDiscount'} = shift
}

=head2 isShippingDiscount()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetCrossPromotions
  Returned: Always

#    Returns: 'xs:boolean'

=cut

sub isShippingDiscount {
  my $self = shift;
  return $self->{'ShippingDiscount'};
}


=head2 setStoreName()

The store name of the seller offering the cross-promoted item.

#    Argument: 'xs:string'

=cut

sub setStoreName {
  my $self = shift;
  $self->{'StoreName'} = shift
}

=head2 getStoreName()

  Calls: GetCrossPromotions
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getStoreName {
  my $self = shift;
  return $self->{'StoreName'};
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
