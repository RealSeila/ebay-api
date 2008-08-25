#!/usr/bin/perl

package eBay::API::XML::DataType::BestOfferType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. BestOfferType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::BestOfferType

=head1 DESCRIPTION

Details about a best offer.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::BestOfferType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AmountType;
use eBay::API::XML::DataType::BestOfferIDType;
use eBay::API::XML::DataType::UserType;
use eBay::API::XML::DataType::Enum::BestOfferStatusCodeType;
use eBay::API::XML::DataType::Enum::BestOfferTypeCodeType;


my @gaProperties = ( [ 'BestOfferCodeType', 'ns:BestOfferTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::BestOfferTypeCodeType', '' ]
	, [ 'BestOfferID', 'ns:BestOfferIDType', ''
	     ,'eBay::API::XML::DataType::BestOfferIDType', '1' ]
	, [ 'Buyer', 'ns:UserType', ''
	     ,'eBay::API::XML::DataType::UserType', '1' ]
	, [ 'BuyerMessage', 'xs:string', '', '', '' ]
	, [ 'CallStatus', 'xs:string', '', '', '' ]
	, [ 'ExpirationTime', 'xs:dateTime', '', '', '' ]
	, [ 'Price', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'Quantity', 'xs:int', '', '', '' ]
	, [ 'SellerMessage', 'xs:string', '', '', '' ]
	, [ 'Status', 'ns:BestOfferStatusCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::BestOfferStatusCodeType', '' ]
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



=head2 setBestOfferCodeType()

The best offer type.

#    Argument: 'ns:BestOfferTypeCodeType'

=cut

sub setBestOfferCodeType {
  my $self = shift;
  $self->{'BestOfferCodeType'} = shift
}

=head2 getBestOfferCodeType()

  Calls: GetBestOffers
  Returned: Always
  Details: DetailLevel: none, ReturnAll

#    Returns: 'ns:BestOfferTypeCodeType'

=cut

sub getBestOfferCodeType {
  my $self = shift;
  return $self->{'BestOfferCodeType'};
}


=head2 setBestOfferID()

An ID to distinguish this best offer from other best offers
made on the item.

#    Argument: 'ns:BestOfferIDType'

=cut

sub setBestOfferID {
  my $self = shift;
  $self->{'BestOfferID'} = shift
}

=head2 getBestOfferID()

  Calls: GetBestOffers
  Returned: Always
  Details: DetailLevel: none, ReturnAll

  Calls: PlaceOffer
  Returned: Conditionally

#    Returns: 'ns:BestOfferIDType'

=cut

sub getBestOfferID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'BestOfferID'
		,'eBay::API::XML::DataType::BestOfferIDType');
}


=head2 setBuyer()

Information about the buyer who made the best offer.

#    Argument: 'ns:UserType'

=cut

sub setBuyer {
  my $self = shift;
  $self->{'Buyer'} = shift
}

=head2 getBuyer()

  Calls: GetBestOffers
  Returned: Always
  Details: DetailLevel: none, ReturnAll

#    Returns: 'ns:UserType'

=cut

sub getBuyer {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Buyer'
		,'eBay::API::XML::DataType::UserType');
}


=head2 setBuyerMessage()

Text message that was provided by a buyer when placing a best offer.

MaxLength: 500 (in bytes)

#    Argument: 'xs:string'

=cut

sub setBuyerMessage {
  my $self = shift;
  $self->{'BuyerMessage'} = shift
}

=head2 getBuyerMessage()

  Calls: GetBestOffers
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: 'xs:string'

=cut

sub getBuyerMessage {
  my $self = shift;
  return $self->{'BuyerMessage'};
}


=head2 setCallStatus()

The status of the call, either Success or Failure.

#    Argument: 'xs:string'

=cut

sub setCallStatus {
  my $self = shift;
  $self->{'CallStatus'} = shift
}

=head2 getCallStatus()

  Calls: RespondToBestOffer
  Returned: Always

#    Returns: 'xs:string'

=cut

sub getCallStatus {
  my $self = shift;
  return $self->{'CallStatus'};
}


=head2 setExpirationTime()

Date and time (in GMT) the offer naturally expires (if the
seller has not accepted or declined the offer).

#    Argument: 'xs:dateTime'

=cut

sub setExpirationTime {
  my $self = shift;
  $self->{'ExpirationTime'} = shift
}

=head2 getExpirationTime()

  Calls: GetBestOffers
  Returned: Always
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:dateTime'

=cut

sub getExpirationTime {
  my $self = shift;
  return $self->{'ExpirationTime'};
}


=head2 setPrice()

The amount of the best offer.

#    Argument: 'ns:AmountType'

=cut

sub setPrice {
  my $self = shift;
  $self->{'Price'} = shift
}

=head2 getPrice()

  Calls: GetBestOffers
  Returned: Always
  Details: DetailLevel: none, ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getPrice {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Price'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setQuantity()

The number of items for which the buyer is making an offer.

#    Argument: 'xs:int'

=cut

sub setQuantity {
  my $self = shift;
  $self->{'Quantity'} = shift
}

=head2 getQuantity()

  Calls: GetBestOffers
  Returned: Always
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:int'

=cut

sub getQuantity {
  my $self = shift;
  return $self->{'Quantity'};
}


=head2 setSellerMessage()

Text response to buyer from seller.

MaxLength: 500 (in bytes)

#    Argument: 'xs:string'

=cut

sub setSellerMessage {
  my $self = shift;
  $self->{'SellerMessage'} = shift
}

=head2 getSellerMessage()

  Calls: GetBestOffers
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:string'

=cut

sub getSellerMessage {
  my $self = shift;
  return $self->{'SellerMessage'};
}


=head2 setStatus()

The state of the offer. In the case of 
a PlaceOffer response that specified a best offer,
Status may be "Accepted" if the best offer
was at or above an auto-accept price.

#    Argument: 'ns:BestOfferStatusCodeType'

=cut

sub setStatus {
  my $self = shift;
  $self->{'Status'} = shift
}

=head2 getStatus()

  Calls: GetBestOffers
  Returned: Always
  Details: DetailLevel: none, ReturnAll

  Calls: PlaceOffer
  Returned: Conditionally

#    Returns: 'ns:BestOfferStatusCodeType'

=cut

sub getStatus {
  my $self = shift;
  return $self->{'Status'};
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