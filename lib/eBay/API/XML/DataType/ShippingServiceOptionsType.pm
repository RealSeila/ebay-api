#!/usr/bin/perl

package eBay::API::XML::DataType::ShippingServiceOptionsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ShippingServiceOptionsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ShippingServiceOptionsType

=head1 DESCRIPTION

Shipping costs and options related to a domestic shipping service.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ShippingServiceOptionsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AmountType;


my @gaProperties = ( [ 'ExpeditedService', 'xs:boolean', '', '', '' ]
	, [ 'FreeShipping', 'xs:boolean', '', '', '' ]
	, [ 'ShippingInsuranceCost', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'ShippingService', 'xs:token', '', '', '' ]
	, [ 'ShippingServiceAdditionalCost', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'ShippingServiceCost', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'ShippingServicePriority', 'xs:int', '', '', '' ]
	, [ 'ShippingSurcharge', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'ShippingTimeMax', 'xs:int', '', '', '' ]
	, [ 'ShippingTimeMin', 'xs:int', '', '', '' ]
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



=head2 setExpeditedService()

Indicates whether the service is an expedited shipping service. See Enabling Get It Fast.
Not applicable to Half.com.

#    Argument: 'xs:boolean'

=cut

sub setExpeditedService {
  my $self = shift;
  $self->{'ExpeditedService'} = shift
}

=head2 isExpeditedService()

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

  Calls: GetItemShipping
  Returned: Conditionally

  Calls: GetOrders
  Returned: Conditionally
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isExpeditedService {
  my $self = shift;
  return $self->{'ExpeditedService'};
}


=head2 setFreeShipping()

A seller offers free shipping by setting FreeShipping to true. This free
shipping applies only to the first domestic shipping service. (It is ignored
if set for any other shipping service.) If the seller has required shipping
insurance as part of shipping (the seller set InsuranceOption to Required) and
then the seller specified FreeShipping, eBay sets the insurance cost to 0.
However, if the seller made shipping insurance optional, eBay preserves the
cost of shipping insurance; it is up to the buyer whether to buy shipping
insurance, regardless of whether the seller specified FreeShipping.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=FreeShipping
Title: Specifying Free Shipping

  Calls: AddItem
         RelistItem
         ReviseItem
         VerifyAddItem
  RequiredInput: No

#    Argument: 'xs:boolean'

=cut

sub setFreeShipping {
  my $self = shift;
  $self->{'FreeShipping'} = shift
}

=head2 isFreeShipping()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemShipping
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isFreeShipping {
  my $self = shift;
  return $self->{'FreeShipping'};
}


=head2 setShippingInsuranceCost()

The insurance cost associated with shipping a single item
with this shipping service. Exception: for GetItemShipping,
this is proportional to QuantitySold. If the item has not yet been
sold, insurance information cannot be calculated and the value is
0.00. For calculated shipping only.
Also applicable to Half.com (for GetOrders).

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=ShippingGettingCosts
Title: Determining Shipping Costs for a Listing

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

  Calls: GetCart
         GetItemShipping
         SetCart
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

A domestic shipping service offered for shipping the item (for example, UPS
Ground). For a list of valid values that you can cache for future use, call
GeteBayDetails with DetailName set to ShippingServiceDetails. For flat and
calculated shipping.
Also applicable to Half.com (for GetOrders).

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

  Calls: GetCart
         SetCart
  Returned: Conditionally

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

  Calls: GetCart
         GetItemShipping
         SetCart
  Returned: Conditionally

  Calls: GetOrders
  Returned: Conditionally
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:token'

=cut

sub getShippingService {
  my $self = shift;
  return $self->{'ShippingService'};
}


=head2 setShippingServiceAdditionalCost()

The cost of shipping each additional item beyond the first item. For input,
this is required if the listing is for multiple items and should be zero for
single-item listings. Default value is 0.00. For flat shipping only.
Not applicable to Half.com.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=ShippingGettingCosts
Title: Determining Shipping Costs for a Listing

  Calls: SendInvoice
  RequiredInput: No

  Calls: AddItem
         AddOrder
         GetItemRecommendations
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

  Calls: GetCart
         SetCart
  Returned: Conditionally

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

  Calls: GetBidderList
         GetItemShipping
  Returned: Conditionally

  Calls: GetOrders
  Returned: Conditionally
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
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

The meaning of this element depends on the call and on whether flat or
calculated shipping has been selected. (For example, it could be the
cost to ship a single item, the cost to ship all items, or the cost to ship
just the first of many items, with ShippingServiceAdditionalCost accounting
for the rest.) When returned by GetItemShipping, it includes the packaging and
handling cost. For flat and calculated shipping.
Also applicable to Half.com (for GetOrders).
<br> <br>
For applications processing an Express transaction when the transaction is part
of an Express Order, ShippingServiceCost will have a value of 0. This is
generally because the ShippingServiceCost of an Order is not returned by each
transaction included in that Order when making the GetItemTransactions or
GetSellerTransactions call. This is regardless of whether the Order is an
Express Order or a regular eBay site Order. This is a known issue and a current
product limitation for Orders and Transactions in general.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=ShippingGettingCosts
Title: Determining Shipping Costs for a Listing

  Calls: SendInvoice
  RequiredInput: No

  Calls: AddItem
         AddOrder
         GetItemRecommendations
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

  Calls: GetCart
         SetCart
  Returned: Conditionally

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

  Calls: GetBidderList
         GetItemShipping
  Returned: Conditionally

  Calls: GetOrders
  Returned: Conditionally
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: BidList
           WonList

  Calls: GetMyeBaySelling
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: ActiveList
           ScheduledList

#    Returns: 'ns:AmountType'

=cut

sub getShippingServiceCost {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ShippingServiceCost'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setShippingServicePriority()

Seller-preferred presentation order relative to other
service options. Valid values: 1 (1st choice), 2 (2nd choice),
3 (3rd choice). For flat and calculated shipping.
Not applicable to Half.com.

  Calls: SendInvoice
  RequiredInput: No

  Calls: AddItem
         AddOrder
         GetItemRecommendations
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

  Calls: GetOrders
  Returned: Conditionally
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:int'

=cut

sub getShippingServicePriority {
  my $self = shift;
  return $self->{'ShippingServicePriority'};
}


=head2 setShippingSurcharge()

An additional fee to charge US buyers who ship via UPS to Alaska, Hawaii
or Puerto Rico. Can only be assigned a value for the eBay US site and for
items in the Parts and Accessories category of the eBay Motors site. Only returned if set.
If some transactions in an order have a surcharge, surcharge is added
only for those transactions.
Flat rate shipping only.

  Calls: SendInvoice
  RequiredInput: No

  Calls: AddItem
         AddOrder
         GetItemRecommendations
         RelistItem
         ReviseItem
         VerifyAddItem
  RequiredInput: Conditionally
  TheseSites: US, motors

#    Argument: 'ns:AmountType'

=cut

sub setShippingSurcharge {
  my $self = shift;
  $self->{'ShippingSurcharge'} = shift
}

=head2 getShippingSurcharge()

  Calls: GetBidderList
         GetItemShipping
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription,
							ItemReturnAttributes, ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Context: BidList

  Calls: GetMyeBaySelling
  Returned: Conditionally
  Context: ScheduledList

#    Returns: 'ns:AmountType'

=cut

sub getShippingSurcharge {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ShippingSurcharge'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setShippingTimeMax()

The maximum guaranteed number of days the shipping carrier will
take to ship an item (not including the time it takes the seller to
deliver the item to the shipping carrier). See Enabling Get It Fast.
Not applicable to Half.com.

#    Argument: 'xs:int'

=cut

sub setShippingTimeMax {
  my $self = shift;
  $self->{'ShippingTimeMax'} = shift
}

=head2 getShippingTimeMax()

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

  Calls: GetCart
         GetItemShipping
         SetCart
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:int'

=cut

sub getShippingTimeMax {
  my $self = shift;
  return $self->{'ShippingTimeMax'};
}


=head2 setShippingTimeMin()

The minimum guaranteed number of days in which the shipping carrier
can ship an item (not including the time it takes the seller to
deliver the item to the shipping carrier). See Enabling Get It Fast.
Not applicable to Half.com.

#    Argument: 'xs:int'

=cut

sub setShippingTimeMin {
  my $self = shift;
  $self->{'ShippingTimeMin'} = shift
}

=head2 getShippingTimeMin()

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

  Calls: GetCart
         GetItemShipping
         SetCart
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:int'

=cut

sub getShippingTimeMin {
  my $self = shift;
  return $self->{'ShippingTimeMin'};
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