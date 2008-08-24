#!/usr/bin/perl

package eBay::API::XML::DataType::OfferType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. OfferType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::OfferType

=head1 DESCRIPTION

Contains information pertaining to an offer made on an item listing and
the current bidding or purchase state of the listing.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::OfferType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AmountType;
use eBay::API::XML::DataType::BestOfferIDType;
use eBay::API::XML::DataType::ItemIDType;
use eBay::API::XML::DataType::UserType;
use eBay::API::XML::DataType::Enum::BidActionCodeType;
use eBay::API::XML::DataType::Enum::CurrencyCodeType;


my @gaProperties = ( [ 'Action', 'ns:BidActionCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::BidActionCodeType', '' ]
	, [ 'BestOfferID', 'ns:BestOfferIDType', ''
	     ,'eBay::API::XML::DataType::BestOfferIDType', '1' ]
	, [ 'BidCount', 'xs:int', '', '', '' ]
	, [ 'ConvertedPrice', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'Currency', 'ns:CurrencyCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CurrencyCodeType', '' ]
	, [ 'HighestBid', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'ItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'MaxBid', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'Message', 'xs:string', '', '', '' ]
	, [ 'Quantity', 'xs:int', '', '', '' ]
	, [ 'SecondChanceEnabled', 'xs:boolean', '', '', '' ]
	, [ 'SiteCurrency', 'ns:CurrencyCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CurrencyCodeType', '' ]
	, [ 'TimeBid', 'xs:dateTime', '', '', '' ]
	, [ 'TransactionID', 'xs:string', '', '', '' ]
	, [ 'User', 'ns:UserType', ''
	     ,'eBay::API::XML::DataType::UserType', '1' ]
	, [ 'UserConsent', 'xs:boolean', '', '', '' ]
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



=head2 setAction()

Indicates the type of offer being made on the specified listing.
If the item is best-offer enabled and the buyer
makes a best offer (or counter-offer, etc.), then after
the PlaceOffer call,
the buyer can get the status of the best offer
(and of a possible seller-counter-offer, etc.)
using the GetBestOffers call. See the
Trading Web Services Guide for information
about best-offer enabled items and
about GetBestOffers.

  Calls: PlaceOffer
  RequiredInput: Yes
  OnlyTheseValues: Bid, Purchase, Accept, Counter, Decline, Offer

#    Argument: 'ns:BidActionCodeType'

=cut

sub setAction {
  my $self = shift;
  $self->{'Action'} = shift
}

=head2 getAction()

  Calls: GetAllBidders
         GetHighBidders
  Returned: Always

#    Returns: 'ns:BidActionCodeType'

=cut

sub getAction {
  my $self = shift;
  return $self->{'Action'};
}


=head2 setBestOfferID()

The ID of a best offer on an item. Must be specified 
as input to PlaceOffer only if a buyer is 
accepting or declining a seller's counteroffer
(and is not required for a buyer's offer or counteroffer).

  Calls: PlaceOffer
  RequiredInput: No

#    Argument: 'ns:BestOfferIDType'

=cut

sub setBestOfferID {
  my $self = shift;
  $self->{'BestOfferID'} = shift
}

=head2 getBestOfferID()

#    Returns: 'ns:BestOfferIDType'

=cut

sub getBestOfferID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'BestOfferID'
		,'eBay::API::XML::DataType::BestOfferIDType');
}


=head2 setBidCount()

Total number of offers the user has made on the item.

#    Argument: 'xs:int'

=cut

sub setBidCount {
  my $self = shift;
  $self->{'BidCount'} = shift
}

=head2 getBidCount()

#    Returns: 'xs:int'

=cut

sub getBidCount {
  my $self = shift;
  return $self->{'BidCount'};
}


=head2 setConvertedPrice()

Localized amount for the item's current price.

#    Argument: 'ns:AmountType'

=cut

sub setConvertedPrice {
  my $self = shift;
  $self->{'ConvertedPrice'} = shift
}

=head2 getConvertedPrice()

  Calls: GetAllBidders
         GetHighBidders
  Returned: Conditionally

#    Returns: 'ns:AmountType'

=cut

sub getConvertedPrice {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ConvertedPrice'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setCurrency()

Numeric ID for the currency for the auction. Valid values are
enumerated in the CurrencyCodeType code list.

#    Argument: 'ns:CurrencyCodeType'

=cut

sub setCurrency {
  my $self = shift;
  $self->{'Currency'} = shift
}

=head2 getCurrency()

  Calls: GetAllBidders
         GetHighBidders
  Returned: Always

#    Returns: 'ns:CurrencyCodeType'

=cut

sub getCurrency {
  my $self = shift;
  return $self->{'Currency'};
}


=head2 setHighestBid()

Amount the highest bidder had bid on the item. Applicable only to
competitive-bidding listings (Chinese and Dutch auctions) where there is
progressive bidding and winning bidders are determined based on the highest
bid.

#    Argument: 'ns:AmountType'

=cut

sub setHighestBid {
  my $self = shift;
  $self->{'HighestBid'} = shift
}

=head2 getHighestBid()

  Calls: GetAllBidders
  Returned: Always

#    Returns: 'ns:AmountType'

=cut

sub getHighestBid {
  my $self = shift;
  return $self->_getDataTypeInstance( 'HighestBid'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setItemID()

The unique identifier of an item listed on the eBay site.
Returned by eBay when the item is created.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

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


=head2 setMaxBid()

Amount of the offer placed. For competitive-bidding listings, the amount
bid on the item (subject to outbid by other buyers). For fixed-price
listings, the fixed sale price at which the item is purchased. For
competitive-bidding listings with an active Buy It Now option, this amount
will be either the Buy It Now price for purchase or the amount of a bid,
depending on the offer type (as specified in Action). For PlaceOffer,
the currencyID attribute is ignored if provided. Regarding Value-Added Tax (VAT): 
Even if VAT applies, you do not need to add VAT to the MaxBid value.
If VAT applies to the listing, the seller can specify a VAT percent value
when they list the item.

  Calls: PlaceOffer
  RequiredInput: Yes

#    Argument: 'ns:AmountType'

=cut

sub setMaxBid {
  my $self = shift;
  $self->{'MaxBid'} = shift
}

=head2 getMaxBid()

  Calls: GetAllBidders
         GetHighBidders
  Returned: Always

#    Returns: 'ns:AmountType'

=cut

sub getMaxBid {
  my $self = shift;
  return $self->_getDataTypeInstance( 'MaxBid'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setMessage()

A message from the buyer to the seller. Applies if the buyer
is using PlaceOffer to perform a best-offer-related
action (best offer, counter-offer, etc.).

  Calls: PlaceOffer
  RequiredInput: No

#    Argument: 'xs:string'

=cut

sub setMessage {
  my $self = shift;
  $self->{'Message'} = shift
}

=head2 getMessage()

#    Returns: 'xs:string'

=cut

sub getMessage {
  my $self = shift;
  return $self->{'Message'};
}


=head2 setQuantity()

Specifies the number of items from the specified listing the user
tendering the offer intends to purchase, bid on, or make a best offer on.
For Chinese auctions and
other listing formats that only allow one item per listing, value may not
exceed one. For multi-item listings, must be greater than zero and not
exceeding the number of items offered for sale in the listing.

  Calls: PlaceOffer
  RequiredInput: Yes

#    Argument: 'xs:int'

=cut

sub setQuantity {
  my $self = shift;
  $self->{'Quantity'} = shift
}

=head2 getQuantity()

  Calls: GetAllBidders
         GetHighBidders
  Returned: Always

#    Returns: 'xs:int'

=cut

sub getQuantity {
  my $self = shift;
  return $self->{'Quantity'};
}


=head2 setSecondChanceEnabled()

Indicates the user's preference to accept second chance offers. If true,
the user is willing to be the recipient of second chance offers.

#    Argument: 'xs:boolean'

=cut

sub setSecondChanceEnabled {
  my $self = shift;
  $self->{'SecondChanceEnabled'} = shift
}

=head2 isSecondChanceEnabled()

  Calls: GetAllBidders
  Returned: Always

#    Returns: 'xs:boolean'

=cut

sub isSecondChanceEnabled {
  my $self = shift;
  return $self->{'SecondChanceEnabled'};
}


=head2 setSiteCurrency()

Unique ID identifying the currency in which the localized offer amounts are
expressed.

#    Argument: 'ns:CurrencyCodeType'

=cut

sub setSiteCurrency {
  my $self = shift;
  $self->{'SiteCurrency'} = shift
}

=head2 getSiteCurrency()

  Calls: GetAllBidders
         GetHighBidders
  Returned: Always

#    Returns: 'ns:CurrencyCodeType'

=cut

sub getSiteCurrency {
  my $self = shift;
  return $self->{'SiteCurrency'};
}


=head2 setTimeBid()

Date and time the offer or bid was placed.

#    Argument: 'xs:dateTime'

=cut

sub setTimeBid {
  my $self = shift;
  $self->{'TimeBid'} = shift
}

=head2 getTimeBid()

  Calls: GetAllBidders
         GetHighBidders
  Returned: Always

#    Returns: 'xs:dateTime'

=cut

sub getTimeBid {
  my $self = shift;
  return $self->{'TimeBid'};
}


=head2 setTransactionID()

The unique identifier of the transaction. The transaction
is created when a winning bidder commits to purchasing an
item, even before the bidder has paid.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, transaction IDs are usually 9 to 12 digits.)

#    Argument: 'xs:string'

=cut

sub setTransactionID {
  my $self = shift;
  $self->{'TransactionID'} = shift
}

=head2 getTransactionID()

#    Returns: 'xs:string'

=cut

sub getTransactionID {
  my $self = shift;
  return $self->{'TransactionID'};
}


=head2 setUser()

Bidder information. See the schema documentation for UserType for details
on its properties and their meanings.

#    Argument: 'ns:UserType'

=cut

sub setUser {
  my $self = shift;
  $self->{'User'} = shift
}

=head2 getUser()

  Calls: GetAllBidders
         GetHighBidders
  Returned: Always

#    Returns: 'ns:UserType'

=cut

sub getUser {
  my $self = shift;
  return $self->_getDataTypeInstance( 'User'
		,'eBay::API::XML::DataType::UserType');
}


=head2 setUserConsent()

If true, confirms that the bidder read and agrees to eBay's
privacy policy. Applies if the subject item is in a category
that requires user consent. If user consent (that is,
confirmation that a bidder read and agrees to eBay's privacy
policy) is required for a category that the subject item is in,
this value must be true for a bid to occur.

  Calls: PlaceOffer
  RequiredInput: No

#    Argument: 'xs:boolean'

=cut

sub setUserConsent {
  my $self = shift;
  $self->{'UserConsent'} = shift
}

=head2 isUserConsent()

#    Returns: 'xs:boolean'

=cut

sub isUserConsent {
  my $self = shift;
  return $self->{'UserConsent'};
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