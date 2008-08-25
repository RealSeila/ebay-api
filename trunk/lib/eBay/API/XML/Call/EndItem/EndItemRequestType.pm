#!/usr/bin/perl

package eBay::API::XML::Call::EndItem::EndItemRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. EndItemRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::EndItem::EndItemRequestType

=head1 DESCRIPTION

Ends the specified item listing before the date and time at which
it would normally end (per the listing duration).
<br>
<br>
For competitive-bidding listings that have bids on them, you must specify an
EndingReason value. If you specify SellToHighBidder, the listing ends as a
successful auction with winning bidder(s). Otherwise, all bids are cancelled
before the item is ended.
<br>
<br>
There are two restrictions for ending items early in the last 12 hours of a
listing. If there is a qualified bid (i.e., current high bid that, when
applicable, meets the minimum reserve price) in the last 12 hours of a listing,
the seller cannot end the item early. If the seller has cancelled a bid in the
last 12 hours of the listing, the seller cannot end the item early.
<br>
<br>
Only the item's seller can use EndItem to end an item listing.
Applicable to items listed on eBay.com and Half.com.
For eBay Live Auctions, you cannot delete items that have been closed or that
are part of a Live Auction event that has started.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::EndItem::EndItemRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::ItemIDType;
use eBay::API::XML::DataType::Enum::EndReasonCodeType;


my @gaProperties = ( [ 'EndingReason', 'ns:EndReasonCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::EndReasonCodeType', '' ]
	, [ 'ItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'SellerInventoryID', 'xs:string', '', '', '' ]
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



=head2 setEndingReason()

Indicates the seller's reason for ending the listing early.
This field is required if the seller is ending the item early and
the item did not successfully sell.
Also applicable to Half.com.

  RequiredInput: Conditionally
#    Argument: 'ns:EndReasonCodeType'

=cut

sub setEndingReason {
  my $self = shift;
  $self->{'EndingReason'} = shift
}

=head2 getEndingReason()

#    Returns: 'ns:EndReasonCodeType'

=cut

sub getEndingReason {
  my $self = shift;
  return $self->{'EndingReason'};
}


=head2 setItemID()

Unique item ID that identifies the item listing to end.
Also applicable to Half.com. For Half.com listings, you can either
specify ItemID or SellerInventoryID.
For eBay Live Auctions, you cannot delete items that have been closed
or that are part of a Live Auction event that has started.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: Yes
#    Argument: 'ns:ItemIDType'

=cut

sub setItemID {
  my $self = shift;
  $self->{'ItemID'} = shift
}

=head2 getItemID()

#    Returns: 'ns:ItemIDType'

=cut

sub getItemID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemID'
		,'eBay::API::XML::DataType::ItemIDType');
}


=head2 setSellerInventoryID()

Unique identifier that the seller specified when they listed the
Half.com item. For Half.com items, you can either specify ItemID or
SellerInventoryID. If you specify both ItemID and SellerInventoryID,
they must be for the same item (otherwise an error will occur).
Only applicable to Half.com.

  RequiredInput: Conditionally
#    Argument: 'xs:string'

=cut

sub setSellerInventoryID {
  my $self = shift;
  $self->{'SellerInventoryID'} = shift
}

=head2 getSellerInventoryID()

#    Returns: 'xs:string'

=cut

sub getSellerInventoryID {
  my $self = shift;
  return $self->{'SellerInventoryID'};
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