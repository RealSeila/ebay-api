#!/usr/bin/perl

package eBay::API::XML::DataType::OrderType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. OrderType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::OrderType

=head1 DESCRIPTION

A combination of two or more transactions that can be paid for with a
single payment.<br>
<br>
We strongly recommend that you avoid mixing digital and non-digital listings in
the same order. (In the future, AddOrder may enforce this recommendation.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::OrderType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AddressType;
use eBay::API::XML::DataType::AmountType;
use eBay::API::XML::DataType::CheckoutStatusType;
use eBay::API::XML::DataType::ExternalTransactionType;
use eBay::API::XML::DataType::OrderIDType;
use eBay::API::XML::DataType::ShippingDetailsType;
use eBay::API::XML::DataType::ShippingServiceOptionsType;
use eBay::API::XML::DataType::TransactionArrayType;
use eBay::API::XML::DataType::UserIDType;
use eBay::API::XML::DataType::Enum::BuyerPaymentMethodCodeType;
use eBay::API::XML::DataType::Enum::OrderStatusCodeType;
use eBay::API::XML::DataType::Enum::TradingRoleCodeType;


my @gaProperties = ( [ 'AdjustmentAmount', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'AmountPaid', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'AmountSaved', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'BuyerUserID', 'ns:UserIDType', ''
	     ,'eBay::API::XML::DataType::UserIDType', '1' ]
	, [ 'CheckoutStatus', 'ns:CheckoutStatusType', ''
	     ,'eBay::API::XML::DataType::CheckoutStatusType', '1' ]
	, [ 'CreatedTime', 'xs:dateTime', '', '', '' ]
	, [ 'CreatingUserRole', 'ns:TradingRoleCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::TradingRoleCodeType', '' ]
	, [ 'ExternalTransaction', 'ns:ExternalTransactionType', '1'
	     ,'eBay::API::XML::DataType::ExternalTransactionType', '1' ]
	, [ 'OrderID', 'ns:OrderIDType', ''
	     ,'eBay::API::XML::DataType::OrderIDType', '1' ]
	, [ 'OrderStatus', 'ns:OrderStatusCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::OrderStatusCodeType', '' ]
	, [ 'PaidTime', 'xs:dateTime', '', '', '' ]
	, [ 'PaymentMethods', 'ns:BuyerPaymentMethodCodeType', '1'
	     ,'eBay::API::XML::DataType::Enum::BuyerPaymentMethodCodeType', '' ]
	, [ 'SellerEmail', 'xs:string', '', '', '' ]
	, [ 'ShippedTime', 'xs:dateTime', '', '', '' ]
	, [ 'ShippingAddress', 'ns:AddressType', ''
	     ,'eBay::API::XML::DataType::AddressType', '1' ]
	, [ 'ShippingDetails', 'ns:ShippingDetailsType', ''
	     ,'eBay::API::XML::DataType::ShippingDetailsType', '1' ]
	, [ 'ShippingServiceSelected', 'ns:ShippingServiceOptionsType', ''
	     ,'eBay::API::XML::DataType::ShippingServiceOptionsType', '1' ]
	, [ 'Subtotal', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'Total', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'TransactionArray', 'ns:TransactionArrayType', ''
	     ,'eBay::API::XML::DataType::TransactionArrayType', '1' ]
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



=head2 setAdjustmentAmount()

Amount by which the buyer is adjusting the order total. Used when
the seller has not supplied payment details such as shipping and
handling or insurance fee.
Also applicable to Half.com (for GetOrders).

#    Argument: 'ns:AmountType'

=cut

sub setAdjustmentAmount {
  my $self = shift;
  $self->{'AdjustmentAmount'} = shift
}

=head2 getAdjustmentAmount()

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getAdjustmentAmount {
  my $self = shift;
  return $self->_getDataTypeInstance( 'AdjustmentAmount'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setAmountPaid()

Amount the buyer has paid the seller for the order.
For GetOrders, applies only to Half.com.

#    Argument: 'ns:AmountType'

=cut

sub setAmountPaid {
  my $self = shift;
  $self->{'AmountPaid'} = shift
}

=head2 getAmountPaid()

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getAmountPaid {
  my $self = shift;
  return $self->_getDataTypeInstance( 'AmountPaid'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setAmountSaved()

Amount the buyer saved by having multiple items combined into
a single order, versus purchasing the items separately.

#    Argument: 'ns:AmountType'

=cut

sub setAmountSaved {
  my $self = shift;
  $self->{'AmountSaved'} = shift
}

=head2 getAmountSaved()

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getAmountSaved {
  my $self = shift;
  return $self->_getDataTypeInstance( 'AmountSaved'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setBuyerUserID()

User ID of the order's buyer.
Not applicable to Half.com.

#    Argument: 'ns:UserIDType'

=cut

sub setBuyerUserID {
  my $self = shift;
  $self->{'BuyerUserID'} = shift
}

=head2 getBuyerUserID()

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'ns:UserIDType'

=cut

sub getBuyerUserID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'BuyerUserID'
		,'eBay::API::XML::DataType::UserIDType');
}


=head2 setCheckoutStatus()

The current checkout status of the order.
Also applicable to Half.com (for GetOrders).

#    Argument: 'ns:CheckoutStatusType'

=cut

sub setCheckoutStatus {
  my $self = shift;
  $self->{'CheckoutStatus'} = shift
}

=head2 getCheckoutStatus()

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'ns:CheckoutStatusType'

=cut

sub getCheckoutStatus {
  my $self = shift;
  return $self->_getDataTypeInstance( 'CheckoutStatus'
		,'eBay::API::XML::DataType::CheckoutStatusType');
}


=head2 setCreatedTime()

Date and time the order was created.
Also applicable to Half.com (for GetOrders).

#    Argument: 'xs:dateTime'

=cut

sub setCreatedTime {
  my $self = shift;
  $self->{'CreatedTime'} = shift
}

=head2 getCreatedTime()

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'xs:dateTime'

=cut

sub getCreatedTime {
  my $self = shift;
  return $self->{'CreatedTime'};
}


=head2 setCreatingUserRole()

Indicates whether the order is created by the buyer or by the seller.

  Calls: AddOrder
  RequiredInput: Yes

#    Argument: 'ns:TradingRoleCodeType'

=cut

sub setCreatingUserRole {
  my $self = shift;
  $self->{'CreatingUserRole'} = shift
}

=head2 getCreatingUserRole()

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'ns:TradingRoleCodeType'

=cut

sub getCreatingUserRole {
  my $self = shift;
  return $self->{'CreatingUserRole'};
}


=head2 setExternalTransaction()

Not applicable to Half.com.
A PayPal transaction that relates to this eBay transaction.
Returned only if there is at least one PayPal transaction related to this
eBay transaction.

#    Argument: reference to an array  
                      of 'ns:ExternalTransactionType'

=cut

sub setExternalTransaction {
  my $self = shift;
  $self->{'ExternalTransaction'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getExternalTransaction()

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: reference to an array  
                      of 'ns:ExternalTransactionType'

=cut

sub getExternalTransaction {
  my $self = shift;
  return $self->_getDataTypeArray('ExternalTransaction');
}


=head2 setOrderID()

Unique identifier that eBay generates for the order.<br>
<br>
For calls like GetItemTransactions (and the Checkout notification),
no OrderID will appear when only 1 item is purchased in a single
end-to-end checkout flow (because the transaction would not be part
of an order in this case).<br>
<br>
Also applicable to Half.com (for GetOrders).

#    Argument: 'ns:OrderIDType'

=cut

sub setOrderID {
  my $self = shift;
  $self->{'OrderID'} = shift
}

=head2 getOrderID()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: WonList
           DeletedFromWonList

  Calls: GetMyeBaySelling
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: SoldList
           DeletedFromSoldList

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'ns:OrderIDType'

=cut

sub getOrderID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'OrderID'
		,'eBay::API::XML::DataType::OrderIDType');
}


=head2 setOrderStatus()

The current status of the order.<br>
<br>
For transaction calls (like GetItemTransactions), please use the
TransactionPlatform element to determine
whether an item was purchased on Express on eBay.<br>
<br>
Also applicable to Half.com (for GetOrders).

#    Argument: 'ns:OrderStatusCodeType'

=cut

sub setOrderStatus {
  my $self = shift;
  $self->{'OrderStatus'} = shift
}

=head2 getOrderStatus()

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'ns:OrderStatusCodeType'

=cut

sub getOrderStatus {
  my $self = shift;
  return $self->{'OrderStatus'};
}


=head2 setPaidTime()

Date and time the order was paid. This time is specified in GMT (not Pacific
time). See "Time Values" in the eBay Web Services guide for information about
converting between GMT and other time zones.
Also applicable to Half.com (for GetOrders).

#    Argument: 'xs:dateTime'

=cut

sub setPaidTime {
  my $self = shift;
  $self->{'PaidTime'} = shift
}

=head2 getPaidTime()

  Calls: GetOrders
  Returned: Conditionally
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'xs:dateTime'

=cut

sub getPaidTime {
  my $self = shift;
  return $self->{'PaidTime'};
}


=head2 setPaymentMethods()

The payment methods the buyer uses to pay for
the order. An order can have multiple payment methods if the
buyer combines several transactions into one order.
Also applicable to Half.com (for GetOrders).

  Calls: AddOrder
  RequiredInput: No

#    Argument: reference to an array  
                      of 'ns:BuyerPaymentMethodCodeType'

=cut

sub setPaymentMethods {
  my $self = shift;
  $self->{'PaymentMethods'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getPaymentMethods()

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: reference to an array  
                      of 'ns:BuyerPaymentMethodCodeType'

=cut

sub getPaymentMethods {
  my $self = shift;
  return $self->_getDataTypeArray('PaymentMethods');
}


=head2 setSellerEmail()

The email of the order's seller.

#    Argument: 'xs:string'

=cut

sub setSellerEmail {
  my $self = shift;
  $self->{'SellerEmail'} = shift
}

=head2 getSellerEmail()

#    Returns: 'xs:string'

=cut

sub getSellerEmail {
  my $self = shift;
  return $self->{'SellerEmail'};
}


=head2 setShippedTime()

Date and time the order was shipped. This time is specified in GMT (not
Pacific time). See "Time Values" in the eBay Web Services guide for
information about converting between GMT and other time zones.
Also applicable to Half.com (for GetOrders).

#    Argument: 'xs:dateTime'

=cut

sub setShippedTime {
  my $self = shift;
  $self->{'ShippedTime'} = shift
}

=head2 getShippedTime()

  Calls: GetOrders
  Returned: Conditionally
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'xs:dateTime'

=cut

sub getShippedTime {
  my $self = shift;
  return $self->{'ShippedTime'};
}


=head2 setShippingAddress()

Shipping address the order has been or will be sent to.
Also applicable to Half.com (for GetOrders).

#    Argument: 'ns:AddressType'

=cut

sub setShippingAddress {
  my $self = shift;
  $self->{'ShippingAddress'} = shift
}

=head2 getShippingAddress()

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'ns:AddressType'

=cut

sub getShippingAddress {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ShippingAddress'
		,'eBay::API::XML::DataType::AddressType');
}


=head2 setShippingDetails()

The shipping-related details for an item or transaction,
including flat or calculated shipping costs and shipping
insurance costs.
Also applicable to Half.com (for GetOrders).

  Calls: AddOrder
  RequiredInput: No

#    Argument: 'ns:ShippingDetailsType'

=cut

sub setShippingDetails {
  my $self = shift;
  $self->{'ShippingDetails'} = shift
}

=head2 getShippingDetails()

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'ns:ShippingDetailsType'

=cut

sub getShippingDetails {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ShippingDetails'
		,'eBay::API::XML::DataType::ShippingDetailsType');
}


=head2 setShippingServiceSelected()

The shipping service selected by the buyer from the services
offered by the seller.
Also applicable to Half.com (for GetOrders).

#    Argument: 'ns:ShippingServiceOptionsType'

=cut

sub setShippingServiceSelected {
  my $self = shift;
  $self->{'ShippingServiceSelected'} = shift
}

=head2 getShippingServiceSelected()

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'ns:ShippingServiceOptionsType'

=cut

sub getShippingServiceSelected {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ShippingServiceSelected'
		,'eBay::API::XML::DataType::ShippingServiceOptionsType');
}


=head2 setSubtotal()

The sum of the sale prices of all of the transactions in the order, where
a transaction sale price is the item sale price times the quantity sold.
Also applicable to Half.com (for GetOrders).

#    Argument: 'ns:AmountType'

=cut

sub setSubtotal {
  my $self = shift;
  $self->{'Subtotal'} = shift
}

=head2 getSubtotal()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: WonList
           DeletedFromWonList

  Calls: GetMyeBaySelling
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: SoldList
           DeletedFromSoldList

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getSubtotal {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Subtotal'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setTotal()

Subtotal plus the shipping cost plus the sales tax plus cost of insurance.
Also applicable to Half.com (for GetOrders).

  Calls: AddOrder
  RequiredInput: Yes

#    Argument: 'ns:AmountType'

=cut

sub setTotal {
  my $self = shift;
  $self->{'Total'} = shift
}

=head2 getTotal()

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getTotal {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Total'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setTransactionArray()

The set of two or more transactions that make up the order.
Also applicable to Half.com (for GetOrders).<br>
<br>
We strongly recommend that you avoid mixing transactions for digital and non-digital listings in the same order.
(In the future, AddOrder may enforce this recommendation.)

  Calls: AddOrder
  RequiredInput: Yes

#    Argument: 'ns:TransactionArrayType'

=cut

sub setTransactionArray {
  my $self = shift;
  $self->{'TransactionArray'} = shift
}

=head2 getTransactionArray()

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: WonList
           DeletedFromWonList

  Calls: GetMyeBaySelling
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: SoldList
           DeletedFromSoldList

#    Returns: 'ns:TransactionArrayType'

=cut

sub getTransactionArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'TransactionArray'
		,'eBay::API::XML::DataType::TransactionArrayType');
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
