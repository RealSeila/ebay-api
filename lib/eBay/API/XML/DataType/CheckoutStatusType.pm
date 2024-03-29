#!/usr/bin/perl

package eBay::API::XML::DataType::CheckoutStatusType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CheckoutStatusType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::CheckoutStatusType

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::CheckoutStatusType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::BuyerPaymentMethodCodeType;
use eBay::API::XML::DataType::Enum::CompleteStatusCodeType;
use eBay::API::XML::DataType::Enum::PaymentStatusCodeType;


my @gaProperties = ( [ 'LastModifiedTime', 'xs:dateTime', '', '', '' ]
	, [ 'PaymentMethod', 'ns:BuyerPaymentMethodCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::BuyerPaymentMethodCodeType', '' ]
	, [ 'Status', 'ns:CompleteStatusCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CompleteStatusCodeType', '' ]
	, [ 'eBayPaymentStatus', 'ns:PaymentStatusCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::PaymentStatusCodeType', '' ]
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



=head2 setLastModifiedTime()

The time the status was last modified.
Also applicable to Half.com (for GetOrders).

#    Argument: 'xs:dateTime'

=cut

sub setLastModifiedTime {
  my $self = shift;
  $self->{'LastModifiedTime'} = shift
}

=head2 getLastModifiedTime()

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'xs:dateTime'

=cut

sub getLastModifiedTime {
  my $self = shift;
  return $self->{'LastModifiedTime'};
}


=head2 setPaymentMethod()

The payment method the buyer uses to purchase the
item.
Also applicable to Half.com (for GetOrders).

#    Argument: 'ns:BuyerPaymentMethodCodeType'

=cut

sub setPaymentMethod {
  my $self = shift;
  $self->{'PaymentMethod'} = shift
}

=head2 getPaymentMethod()

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'ns:BuyerPaymentMethodCodeType'

=cut

sub getPaymentMethod {
  my $self = shift;
  return $self->{'PaymentMethod'};
}


=head2 setStatus()

The status of the order.
Also applicable to Half.com (for GetOrders).

#    Argument: 'ns:CompleteStatusCodeType'

=cut

sub setStatus {
  my $self = shift;
  $self->{'Status'} = shift
}

=head2 getStatus()

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'ns:CompleteStatusCodeType'

=cut

sub getStatus {
  my $self = shift;
  return $self->{'Status'};
}


=head2 setEBayPaymentStatus()

Indicates the success or failure of a buyer's online payment.
Also applicable to Half.com (for GetOrders).

#    Argument: 'ns:PaymentStatusCodeType'

=cut

sub setEBayPaymentStatus {
  my $self = shift;
  $self->{'eBayPaymentStatus'} = shift
}

=head2 getEBayPaymentStatus()

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'ns:PaymentStatusCodeType'

=cut

sub getEBayPaymentStatus {
  my $self = shift;
  return $self->{'eBayPaymentStatus'};
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
