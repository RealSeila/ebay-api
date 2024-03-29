#!/usr/bin/perl

package eBay::API::XML::Call::GetOrderTransactions::GetOrderTransactionsRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetOrderTransactionsRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetOrderTransactions::GetOrderTransactionsRequestType

=head1 DESCRIPTION

Retrieves information about one or more orders or one or more transactions
(or both). If you have both orderIDs and itemIDs/transactionIDs, you may find
this "combined call" more convenient than calling GetOrders and GetItemTransactions
separately.
Note that every transaction is nested within an Order
node, even if the transaction does not belong to an order.
<br>
<br>
Note: OrderID is not returned when the GetOrderTransactions request includes
ItemTransactionID, even if the transaction is part of an order.
To get the OrderID for a transaction, call GetItemTransaction with
IncludeContainingOrder = true.
<br>
<br>
Does not retrieve Express orders, even when the explicit Express OrderID found on the eBay Express site is included in the request.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetOrderTransactions::GetOrderTransactionsRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::ItemTransactionIDArrayType;
use eBay::API::XML::DataType::OrderIDArrayType;
use eBay::API::XML::DataType::Enum::TransactionPlatformCodeType;


my @gaProperties = ( [ 'IncludeFinalValueFees', 'xs:boolean', '', '', '' ]
	, [ 'ItemTransactionIDArray', 'ns:ItemTransactionIDArrayType', ''
	     ,'eBay::API::XML::DataType::ItemTransactionIDArrayType', '1' ]
	, [ 'OrderIDArray', 'ns:OrderIDArrayType', ''
	     ,'eBay::API::XML::DataType::OrderIDArrayType', '1' ]
	, [ 'Platform', 'ns:TransactionPlatformCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::TransactionPlatformCodeType', '' ]
                    );
push @gaProperties, @{eBay::API::XML::RequestDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::RequestDataType::getAttributesList()};

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



=head2 setIncludeFinalValueFees()

Indicates whether to include the final value fee in the 
following field of the response: Transaction.FinalValueFee.
For most listing types, the fee is returned in Transaction.FinalValueFee.
For Dutch auctions that end with bids (not Buy It Now purchases), the fee
is returned in the following field 
regardless of what you specify in the IncludeFinalValueFees field: 
Item.SellingStatus.FinalValueFee.
The Final Value Fee for FixedPriceItem, StoresFixedPrice, and Buy It Now
Dutch listing types is returned on a transaction-by-transaction basis.
For all other listing types, including Chinese and Dutch (not Buy It Now
purchases), the Final Value Fee is returned when the listing status is
Completed.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setIncludeFinalValueFees {
  my $self = shift;
  $self->{'IncludeFinalValueFees'} = shift
}

=head2 isIncludeFinalValueFees()

#    Returns: 'xs:boolean'

=cut

sub isIncludeFinalValueFees {
  my $self = shift;
  return $self->{'IncludeFinalValueFees'};
}


=head2 setItemTransactionIDArray()

An array of ItemTransactionIDs.

  RequiredInput: Conditionally
#    Argument: 'ns:ItemTransactionIDArrayType'

=cut

sub setItemTransactionIDArray {
  my $self = shift;
  $self->{'ItemTransactionIDArray'} = shift
}

=head2 getItemTransactionIDArray()

#    Returns: 'ns:ItemTransactionIDArrayType'

=cut

sub getItemTransactionIDArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemTransactionIDArray'
		,'eBay::API::XML::DataType::ItemTransactionIDArrayType');
}


=head2 setOrderIDArray()

An array of OrderIDs. You can specify, at most, twenty OrderIDs.

  RequiredInput: Conditionally
#    Argument: 'ns:OrderIDArrayType'

=cut

sub setOrderIDArray {
  my $self = shift;
  $self->{'OrderIDArray'} = shift
}

=head2 getOrderIDArray()

#    Returns: 'ns:OrderIDArrayType'

=cut

sub getOrderIDArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'OrderIDArray'
		,'eBay::API::XML::DataType::OrderIDArrayType');
}


=head2 setPlatform()

Name of the eBay co-branded site upon which the transaction was made.
This will serve as a filter for the transactions to get emitted in the response.

  RequiredInput: No
#    Argument: 'ns:TransactionPlatformCodeType'

=cut

sub setPlatform {
  my $self = shift;
  $self->{'Platform'} = shift
}

=head2 getPlatform()

#    Returns: 'ns:TransactionPlatformCodeType'

=cut

sub getPlatform {
  my $self = shift;
  return $self->{'Platform'};
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
