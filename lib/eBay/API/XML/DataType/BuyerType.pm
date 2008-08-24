#!/usr/bin/perl

package eBay::API::XML::DataType::BuyerType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. BuyerType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::BuyerType

=head1 DESCRIPTION

Contains information about a user as a buyer.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::BuyerType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AddressType;


my @gaProperties = ( [ 'ShippingAddress', 'ns:AddressType', ''
	     ,'eBay::API::XML::DataType::AddressType', '1' ]
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



=head2 setShippingAddress()

Contains the address of the buyer in the transaction, to which the seller
would ship the item(s). See AddressType for its child elements. GetAllBidders
is returning only Country and PostalCode currently.
Output only.

#    Argument: 'ns:AddressType'

=cut

sub setShippingAddress {
  my $self = shift;
  $self->{'ShippingAddress'} = shift
}

=head2 getShippingAddress()

  Calls: GetAllBidders
         GetHighBidders
  Returned: Always

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetMyeBaySelling
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: SoldList

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Fine

  Context: HighBidder

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll
  Context: HighBidder

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'ns:AddressType'

=cut

sub getShippingAddress {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ShippingAddress'
		,'eBay::API::XML::DataType::AddressType');
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
