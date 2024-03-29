#!/usr/bin/perl

package eBay::API::XML::Call::AddDisputeResponse::AddDisputeResponseRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AddDisputeResponseRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::AddDisputeResponse::AddDisputeResponseRequestType

=head1 DESCRIPTION

Allows a seller to respond to an Unpaid Item or Item Not Received dispute.
The response can add a comment or close the dispute.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::AddDisputeResponse::AddDisputeResponseRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::DisputeIDType;
use eBay::API::XML::DataType::Enum::DisputeActivityCodeType;


my @gaProperties = ( [ 'DisputeActivity', 'ns:DisputeActivityCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::DisputeActivityCodeType', '' ]
	, [ 'DisputeID', 'ns:DisputeIDType', ''
	     ,'eBay::API::XML::DataType::DisputeIDType', '1' ]
	, [ 'MessageText', 'xs:string', '', '', '' ]
	, [ 'ShipmentTrackNumber', 'xs:string', '', '', '' ]
	, [ 'ShippingCarrierUsed', 'xs:string', '', '', '' ]
	, [ 'ShippingTime', 'xs:dateTime', '', '', '' ]
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



=head2 setDisputeActivity()

The type of activity the seller is taking on the dispute.
The allowed value is determined by the current value of
DisputeState, returned by GetDispute or GetUserDisputes.
Some values are for Unpaid Item disputes and some are for Item
Not Received disputes.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=UnpaidItemDisputes
Title: Unpaid Item Disputes
, URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=ItemNotReceivedDisputes
Title: Item Not Received Disputes


  RequiredInput: Conditionally
#    Argument: 'ns:DisputeActivityCodeType'

=cut

sub setDisputeActivity {
  my $self = shift;
  $self->{'DisputeActivity'} = shift
}

=head2 getDisputeActivity()

#    Returns: 'ns:DisputeActivityCodeType'

=cut

sub getDisputeActivity {
  my $self = shift;
  return $self->{'DisputeActivity'};
}


=head2 setDisputeID()

The unique identifier of the dispute,
returned when the dispute was created.

  RequiredInput: Yes
#    Argument: 'ns:DisputeIDType'

=cut

sub setDisputeID {
  my $self = shift;
  $self->{'DisputeID'} = shift
}

=head2 getDisputeID()

#    Returns: 'ns:DisputeIDType'

=cut

sub getDisputeID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'DisputeID'
		,'eBay::API::XML::DataType::DisputeIDType');
}


=head2 setMessageText()

The text of a comment or response being posted to the dispute. Required
when DisputeActivity is SellerAddInformation, SellerComment, or
SellerPaymentNotReceived; otherwise, optional.

  RequiredInput: Conditionally
#    Argument: 'xs:string'

=cut

sub setMessageText {
  my $self = shift;
  $self->{'MessageText'} = shift
}

=head2 getMessageText()

#    Returns: 'xs:string'

=cut

sub getMessageText {
  my $self = shift;
  return $self->{'MessageText'};
}


=head2 setShipmentTrackNumber()

The shipper's tracking number for the item being shipped. Required
if DisputeActivity is SellerShippedItem; otherwise, optional.

  RequiredInput: Conditionally
#    Argument: 'xs:string'

=cut

sub setShipmentTrackNumber {
  my $self = shift;
  $self->{'ShipmentTrackNumber'} = shift
}

=head2 getShipmentTrackNumber()

#    Returns: 'xs:string'

=cut

sub getShipmentTrackNumber {
  my $self = shift;
  return $self->{'ShipmentTrackNumber'};
}


=head2 setShippingCarrierUsed()

The shipping carrier used for the item in dispute. Required if DisputeActivity
is SellerShippedItem; otherwise, optional.

  RequiredInput: Conditionally
#    Argument: 'xs:string'

=cut

sub setShippingCarrierUsed {
  my $self = shift;
  $self->{'ShippingCarrierUsed'} = shift
}

=head2 getShippingCarrierUsed()

#    Returns: 'xs:string'

=cut

sub getShippingCarrierUsed {
  my $self = shift;
  return $self->{'ShippingCarrierUsed'};
}


=head2 setShippingTime()

The date the item under dispute was shipped. Required if DisputeActivity
is SellerShippedItem; otherwise, optional.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut

sub setShippingTime {
  my $self = shift;
  $self->{'ShippingTime'} = shift
}

=head2 getShippingTime()

#    Returns: 'xs:dateTime'

=cut

sub getShippingTime {
  my $self = shift;
  return $self->{'ShippingTime'};
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
