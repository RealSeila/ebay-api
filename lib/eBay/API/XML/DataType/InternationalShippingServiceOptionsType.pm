#!/usr/bin/perl

package eBay::API::XML::DataType::InternationalShippingServiceOptionsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. InternationalShippingServiceOptionsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::InternationalShippingServiceOptionsType

=head1 DESCRIPTION

Shipping costs and options related to an international shipping service. When used
as input, if one is provided, at least one domestic ShippingService must be
provided.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::InternationalShippingServiceOptionsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AmountType;


my @gaProperties = ( [ 'ShipToLocation', 'xs:string', '1', '', '' ]
	, [ 'ShippingInsuranceCost', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'ShippingService', 'xs:token', '', '', '' ]
	, [ 'ShippingServiceAdditionalCost', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'ShippingServiceCost', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'ShippingServicePriority', 'xs:int', '', '', '' ]
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



=head2 setShipToLocation()

An international location or region to which the item may be
shipped via this particular shipping service. Associated with
the shipping service by the seller. Use GeteBayDetails to
determine which locations are valid per site. These values
are string equivalents of values found in
ShippingRegionCodeType and CountryCodeType. For the AddItem family
of calls, this field is required if any international shipping service
has been specified.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=ShipToLocation
Title: ShipToLocation

  Calls: SendInvoice
  RequiredInput: No

  Calls: AddItem
         GetItemRecommendations
         AddOrder
         RelistItem
         ReviseItem
         VerifyAddItem
  RequiredInput: Conditionally

#    Argument: reference to an array  
                      of 'xs:string'

=cut

sub setShipToLocation {
  my $self = shift;
  $self->{'ShipToLocation'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getShipToLocation()

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

  Calls: GetBidderList
         GetItemShipping
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription,
							ItemReturnAttributes, ReturnAll

  Calls: GetOrders
  Returned: Conditionally
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetItemTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: reference to an array  
                      of 'xs:string'

=cut

sub getShipToLocation {
  my $self = shift;
  return $self->_getDataTypeArray('ShipToLocation');
}


=head2 setShippingInsuranceCost()

The insurance cost associated with shipping a single item
with this shipping service. Exception: for GetItemShipping,
this is proportional to QuantitySold. If the item has not yet been
sold, insurance information cannot be calculated and the value is
0.00. For calculated shipping only.
Also applicable to Half.com (for GetOrders).

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=Shipping
Title: Shipping

  Calls: AddOrder
         SendInvoice
  RequiredInput: No

#    Argument: 'ns:AmountType'

=cut

sub setShippingInsuranceCost {
  my $self = shift;
  $self->{'ShippingInsuranceCost'} = shift
}

=head2 getShippingInsuranceCost()

  Calls: GetItemShipping
  Returned: Conditionally

  Calls: GetOrders
  Returned: Conditionally
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getShippingInsuranceCost {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ShippingInsuranceCost'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setShippingService()

An international shipping service offered for shipping the item.
For a list of valid values that you can cache for future
use, call GeteBayDetails with DetailName set to ShippingServiceDetails. For
flat and calculated shipping.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=GeteBayDetails
Title: GeteBayDetails

  Calls: SendInvoice
  RequiredInput: No

  Calls: AddItem
         AddOrder
         GetItemRecommendations
         RelistItem
         ReviseItem
         VerifyAddItem
  RequiredInput: Conditionally

#    Argument: 'xs:token'

=cut

sub setShippingService {
  my $self = shift;
  $self->{'ShippingService'} = shift
}

=head2 getShippingService()

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

  Calls: GetBidderList
         GetItemShipping
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription,
							ItemReturnAttributes, ReturnAll

  Calls: GetOrders
  Returned: Conditionally
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetItemTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:token'

=cut

sub getShippingService {
  my $self = shift;
  return $self->{'ShippingService'};
}


=head2 setShippingServiceAdditionalCost()

Cost of shipping each additional item beyond the first
item. Should be zero for single-item listings. Default value is
0.00. For flat shipping only.

  Calls: SendInvoice
  RequiredInput: No

  Calls: AddItem
         GetItemRecommendations
         AddOrder
         RelistItem
         ReviseItem
         VerifyAddItem
  RequiredInput: No

#    Argument: 'ns:AmountType'

=cut

sub setShippingServiceAdditionalCost {
  my $self = shift;
  $self->{'ShippingServiceAdditionalCost'} = shift
}

=head2 getShippingServiceAdditionalCost()

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription,
							ItemReturnAttributes, ReturnAll

  Calls: GetBidderList
         GetItemShipping
  Returned: Conditionally

  Calls: GetOrders
  Returned: Conditionally
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetItemTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getShippingServiceAdditionalCost {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ShippingServiceAdditionalCost'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setShippingServiceCost()

The meaning of this element depends on the call and on whether flat
or calculated shipping has been selected. (For example, it could be the cost
to ship a single item, the cost to ship all items, or the cost to ship just
the first of many items, with ShippingServiceAdditionalCost accounting for the
rest.) When returned by GetItemShipping, it includes the packaging and
handling cost. For flat and calculated shipping.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=Shipping
Title: Shipping

  Calls: SendInvoice
  RequiredInput: No

  Calls: AddItem
         GetItemRecommendations
         AddOrder
         RelistItem
         ReviseItem
         VerifyAddItem
  RequiredInput: Conditionally

#    Argument: 'ns:AmountType'

=cut

sub setShippingServiceCost {
  my $self = shift;
  $self->{'ShippingServiceCost'} = shift
}

=head2 getShippingServiceCost()

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription,
							ItemReturnAttributes, ReturnAll

  Calls: GetBidderList
         GetItemShipping
  Returned: Conditionally

  Calls: GetOrders
  Returned: Conditionally
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetItemTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getShippingServiceCost {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ShippingServiceCost'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setShippingServicePriority()

Seller-preferred presentation order relative to other
service options. Valid values are: 1, 2 and 3 (first, second
and third choices). For flat and calculated shipping.

  Calls: SendInvoice
  RequiredInput: No

  Calls: AddItem
         GetItemRecommendations
         AddOrder
         RelistItem
         ReviseItem
         VerifyAddItem
  RequiredInput: Conditionally

#    Argument: 'xs:int'

=cut

sub setShippingServicePriority {
  my $self = shift;
  $self->{'ShippingServicePriority'} = shift
}

=head2 getShippingServicePriority()

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

  Calls: GetBidderList
         GetItemShipping
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription,
							ItemReturnAttributes, ReturnAll

  Calls: GetOrders
  Returned: Conditionally
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetItemTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:int'

=cut

sub getShippingServicePriority {
  my $self = shift;
  return $self->{'ShippingServicePriority'};
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
