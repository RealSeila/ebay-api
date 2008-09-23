#!/usr/bin/perl

package eBay::API::XML::DataType::ExternalTransactionType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ExternalTransactionType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ExternalTransactionType

=head1 DESCRIPTION

Container for external transaction information.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ExternalTransactionType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AmountType;


my @gaProperties = ( [ 'ExternalTransactionID', 'xs:string', '', '', '' ]
	, [ 'ExternalTransactionTime', 'xs:dateTime', '', '', '' ]
	, [ 'FeeOrCreditAmount', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'PaymentOrRefundAmount', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
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



=head2 setExternalTransactionID()

Unique payment transaction ID.

#    Argument: 'xs:string'

=cut

sub setExternalTransactionID {
  my $self = shift;
  $self->{'ExternalTransactionID'} = shift
}

=head2 getExternalTransactionID()

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetOrders
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'xs:string'

=cut

sub getExternalTransactionID {
  my $self = shift;
  return $self->{'ExternalTransactionID'};
}


=head2 setExternalTransactionTime()

Date on which transaction occurs in PayPal.

#    Argument: 'xs:dateTime'

=cut

sub setExternalTransactionTime {
  my $self = shift;
  $self->{'ExternalTransactionTime'} = shift
}

=head2 getExternalTransactionTime()

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetOrders
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'xs:dateTime'

=cut

sub getExternalTransactionTime {
  my $self = shift;
  return $self->{'ExternalTransactionTime'};
}


=head2 setFeeOrCreditAmount()

#    Argument: 'ns:AmountType'

=cut

sub setFeeOrCreditAmount {
  my $self = shift;
  $self->{'FeeOrCreditAmount'} = shift
}

=head2 getFeeOrCreditAmount()

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetOrders
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getFeeOrCreditAmount {
  my $self = shift;
  return $self->_getDataTypeInstance( 'FeeOrCreditAmount'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setPaymentOrRefundAmount()

If positive, the amount the buyer pays
the seller through PayPal on the purchase of items. If
negative, the amount refunded the buyer. Default = 0.

#    Argument: 'ns:AmountType'

=cut

sub setPaymentOrRefundAmount {
  my $self = shift;
  $self->{'PaymentOrRefundAmount'} = shift
}

=head2 getPaymentOrRefundAmount()

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetOrders
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getPaymentOrRefundAmount {
  my $self = shift;
  return $self->_getDataTypeInstance( 'PaymentOrRefundAmount'
		,'eBay::API::XML::DataType::AmountType');
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