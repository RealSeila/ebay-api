#!/usr/bin/perl

package eBay::API::XML::DataType::SalesTaxType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SalesTaxType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::SalesTaxType

=head1 DESCRIPTION

Type for expressing sales tax data.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::SalesTaxType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AmountType;


my @gaProperties = ( [ 'SalesTaxAmount', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'SalesTaxPercent', 'xs:float', '', '', '' ]
	, [ 'SalesTaxState', 'xs:string', '', '', '' ]
	, [ 'ShippingIncludedInTax', 'xs:boolean', '', '', '' ]
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



=head2 setSalesTaxAmount()

(US only) The amount of sales tax, calculated for a
transaction based on the SalesTaxPercent and pricing information.
Also returned for Half.com (for GetOrders).
GetItemTransactions can return incorrect sales tax if the name
of a state is not abbreviated (e.g. if the value is "Illinois" rather than "IL") 
in TransactionArray.Transaction.Buyer.BuyerInfo.ShippingAddress.StateOrProvince. 
If the name of a state is not abbreviated, sales tax should be obtained 
by using the ItemID and TransactionID to call GetOrderTransactions.

  Calls: SendInvoice
  RequiredInput: No

#    Argument: 'ns:AmountType'

=cut

sub setSalesTaxAmount {
  my $self = shift;
  $self->{'SalesTaxAmount'} = shift
}

=head2 getSalesTaxAmount()

  Calls: GetItemShipping
  Returned: Conditionally

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getSalesTaxAmount {
  my $self = shift;
  return $self->_getDataTypeInstance( 'SalesTaxAmount'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setSalesTaxPercent()

Percent of an item's price to be charged as the sales tax for the transaction.
The value passed in is stored with a precision of 3 digits after the decimal
point (##.###). Also applicable to Half.com (for GetOrders).

  Calls: AddItem
         AddOrder
         GetItemRecommendations
         RelistItem
         ReviseItem
         SendInvoice
         VerifyAddItem
  RequiredInput: No

#    Argument: 'xs:float'

=cut

sub setSalesTaxPercent {
  my $self = shift;
  $self->{'SalesTaxPercent'} = shift
}

=head2 getSalesTaxPercent()

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Fine


  Calls: GetBidderList
         GetItemShipping
         GetTaxTable
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'xs:float'

=cut

sub getSalesTaxPercent {
  my $self = shift;
  return $self->{'SalesTaxPercent'};
}


=head2 setSalesTaxState()

State or jurisdiction for which the sales tax is being collected.
Only returned if the seller specified a value.
Also returned for Half.com (for GetOrders).

  Calls: AddItem
         AddOrder
         GetItemRecommendations
         RelistItem
         ReviseItem
         SendInvoice
         VerifyAddItem
  RequiredInput: No

#    Argument: 'xs:string'

=cut

sub setSalesTaxState {
  my $self = shift;
  $self->{'SalesTaxState'} = shift
}

=head2 getSalesTaxState()

  Calls: GetBidderList
         GetItemShipping
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

#    Returns: 'xs:string'

=cut

sub getSalesTaxState {
  my $self = shift;
  return $self->{'SalesTaxState'};
}


=head2 setShippingIncludedInTax()

(US only) Whether shipping costs were part of the base amount
that was taxed. Flat or calculated shipping.
Also returned for Half.com (for GetOrders).

  Calls: AddItem
         AddOrder
         GetItemRecommendations
         RelistItem
         ReviseItem
         SendInvoice
         VerifyAddItem
  RequiredInput: No

#    Argument: 'xs:boolean'

=cut

sub setShippingIncludedInTax {
  my $self = shift;
  $self->{'ShippingIncludedInTax'} = shift
}

=head2 isShippingIncludedInTax()

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Fine


  Calls: GetBidderList
         GetItemShipping
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isShippingIncludedInTax {
  my $self = shift;
  return $self->{'ShippingIncludedInTax'};
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
