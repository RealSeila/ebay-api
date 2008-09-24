#!/usr/bin/perl

package eBay::API::XML::DataType::ListingDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ListingDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ListingDetailsType

=head1 DESCRIPTION

Various details about a listing. Some of the details are calculated or derived after
an item is listed. The details in this type include the start and end time and
the converted (localized) prices. The details in this type also include
input values applicable to the Best Offer feature.
Additional details in this type include flags indicating if a seller
specified fields whose values are not visible to the requesting user.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ListingDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AmountType;
use eBay::API::XML::DataType::ItemIDType;
use eBay::API::XML::DataType::Enum::SellerBusinessCodeType;


my @gaProperties = ( [ 'Adult', 'xs:boolean', '', '', '' ]
	, [ 'BestOfferAutoAcceptPrice', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'BindingAuction', 'xs:boolean', '', '', '' ]
	, [ 'BuyItNowAvailable', 'xs:boolean', '', '', '' ]
	, [ 'CheckoutEnabled', 'xs:boolean', '', '', '' ]
	, [ 'ConvertedBuyItNowPrice', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'ConvertedReservePrice', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'ConvertedStartPrice', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'EndTime', 'xs:dateTime', '', '', '' ]
	, [ 'HasPublicMessages', 'xs:boolean', '', '', '' ]
	, [ 'HasReservePrice', 'xs:boolean', '', '', '' ]
	, [ 'HasUnansweredQuestions', 'xs:boolean', '', '', '' ]
	, [ 'LocalListingDistance', 'xs:string', '', '', '' ]
	, [ 'MinimumBestOfferMessage', 'xs:string', '', '', '' ]
	, [ 'MinimumBestOfferPrice', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'PayPerLeadEnabled', 'xs:boolean', '', '', '' ]
	, [ 'RelistedItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'SecondChanceOriginalItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'SellerBusinessType', 'ns:SellerBusinessCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::SellerBusinessCodeType', '' ]
	, [ 'StartTime', 'xs:dateTime', '', '', '' ]
	, [ 'TCROriginalItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'ViewItemURL', 'xs:anyURI', '', '', '' ]
	, [ 'ViewItemURLForNaturalSearch', 'xs:anyURI', '', '', '' ]
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



=head2 setAdult()

If true, the item is listed in a Mature category. Users must accept
the Mature Category agreement on the eBay site to retrieve
items listed in Mature categories. (Users do not need to sign
this agreement to be able to list items in Mature Categories.)

#    Argument: 'xs:boolean'

=cut

sub setAdult {
  my $self = shift;
  $self->{'Adult'} = shift
}

=head2 isAdult()

  Calls: GetBidderList
  Returned: Always

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Medium, Fine


#    Returns: 'xs:boolean'

=cut

sub isAdult {
  my $self = shift;
  return $self->{'Adult'};
}


=head2 setBestOfferAutoAcceptPrice()

The price at which best offers are automatically accepted. 
Similar in use to MinimumBestOfferPrice. 
If a buyer submits a best offer that is above this value,
the offer is automatically
accepted by the seller.
Applies only to items listed in categories that
support the BestOfferAutoAcceptPrice feature.
Best Offer must be enabled
for the item, and only the seller who listed the item
will see BestOfferAutoAcceptPrice in a call response.
On the US eBay Motors site (site ID 100),
you cannot use the API to add a minimum best offer price. 
For a ReviseItem call with site ID 100,
prior use of a minimum best offer price on eBay.com is ignored.

  Calls: AddItem
         ReviseItem
         RelistItem
         VerifyAddItem
  RequiredInput: No

#    Argument: 'ns:AmountType'

=cut

sub setBestOfferAutoAcceptPrice {
  my $self = shift;
  $self->{'BestOfferAutoAcceptPrice'} = shift
}

=head2 getBestOfferAutoAcceptPrice()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getBestOfferAutoAcceptPrice {
  my $self = shift;
  return $self->_getDataTypeInstance( 'BestOfferAutoAcceptPrice'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setBindingAuction()

Applicable for Real Estate auctions only. If true, buyers and sellers
are expected to follow through on the sale. If false, bids for the
Real Estate auction are only expressions of interest.

#    Argument: 'xs:boolean'

=cut

sub setBindingAuction {
  my $self = shift;
  $self->{'BindingAuction'} = shift
}

=head2 isBindingAuction()

  Calls: GetBidderList
  Returned: Always

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Medium, Fine


#    Returns: 'xs:boolean'

=cut

sub isBindingAuction {
  my $self = shift;
  return $self->{'BindingAuction'};
}


=head2 setBuyItNowAvailable()

Indicates whether Buy It Now is available for the listing (for Chinese and Dutch auctions). 
As a general rule, once a Chinese auction has bids (and the high bid exceeds the reserve price, if any), 
the listing is no longer eligible for Buy It Now.
<br><br>
On some sites, the Buy It Now price for a Chinese auction may remain available
for certain categories even after a bid is placed. 
See the "Longer Lasting Buy It Now" link below for more details and the 
latest list of eBay US categories that support this behavior.
The eBay Spain site supports this behavior for all categories.

SeeLink: URL: http://forums.ebay.com/db1/thread.jspa?threadID=2000449591&anticache=1207252776668
Title: Longer Lasting Buy It Now

#    Argument: 'xs:boolean'

=cut

sub setBuyItNowAvailable {
  my $self = shift;
  $self->{'BuyItNowAvailable'} = shift
}

=head2 isBuyItNowAvailable()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isBuyItNowAvailable {
  my $self = shift;
  return $self->{'BuyItNowAvailable'};
}


=head2 setCheckoutEnabled()

Indicates whether checkout is enabled for this item. If true, indicates
that the seller elects to allow the item purchase to go through the
checkout process, if the buyer chooses to do so.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=Checkout
Title: Checkout

#    Argument: 'xs:boolean'

=cut

sub setCheckoutEnabled {
  my $self = shift;
  $self->{'CheckoutEnabled'} = shift
}

=head2 isCheckoutEnabled()

  Calls: GetBidderList
  Returned: Always

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Medium, Fine


#    Returns: 'xs:boolean'

=cut

sub isCheckoutEnabled {
  my $self = shift;
  return $self->{'CheckoutEnabled'};
}


=head2 setConvertedBuyItNowPrice()

Converted value of the BuyItNowPrice in the currency of
the site that returned this response.
For active items, refresh this value every 24 hours to
pick up the current conversion rates.

#    Argument: 'ns:AmountType'

=cut

sub setConvertedBuyItNowPrice {
  my $self = shift;
  $self->{'ConvertedBuyItNowPrice'} = shift
}

=head2 getConvertedBuyItNowPrice()

  Calls: GetCategoryListings
  Returned: Conditionally

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Medium, Fine


  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: SecondChanceOffer
           BestOfferList
           BidList
           WatchList

  Calls: GetMyeBaySelling
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: ScheduledList
           SoldList
           UnsoldList
           DeletedFromSoldList
           DeletedFromUnsoldList
           ActiveList

  Calls: GetBidderList
  Returned: Always

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetSearchResults
  Returned: Conditionally
  Details: DetailLevel: ItemReturnAttributes, ItemReturnCategories, none, ReturnAll
           GranularityLevel: Coarse


#    Returns: 'ns:AmountType'

=cut

sub getConvertedBuyItNowPrice {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ConvertedBuyItNowPrice'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setConvertedReservePrice()

Converted value of the ReservePrice in the currency of the
site that returned this response. Only returned for listings with
a reserve price when the requesting user is the listing's seller.
For active items, refresh this value every 24 hours to
pick up the current conversion rates.
Not applicable to Fixed Price and Store Inventory listings.

#    Argument: 'ns:AmountType'

=cut

sub setConvertedReservePrice {
  my $self = shift;
  $self->{'ConvertedReservePrice'} = shift
}

=head2 getConvertedReservePrice()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetMyeBaySelling
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: ScheduledList
           SoldList
           UnsoldList
           DeletedFromSoldList
           DeletedFromUnsoldList
           ActiveList

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Fine


  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getConvertedReservePrice {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ConvertedReservePrice'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setConvertedStartPrice()

Converted value of the StartPrice in the currency of
the site that returned this response.
For active items, refresh this value every 24 hours to
pick up the current conversion rates.

#    Argument: 'ns:AmountType'

=cut

sub setConvertedStartPrice {
  my $self = shift;
  $self->{'ConvertedStartPrice'} = shift
}

=head2 getConvertedStartPrice()

  Calls: GetSearchResults
  Returned: Conditionally
  Details: DetailLevel: ItemReturnAttributes, ItemReturnCategories, none, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Fine


  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: BidList
           LostList
           WonList
           DeletedFromWonList
           DeletedFromLostList
           WatchList

  Calls: GetMyeBaySelling
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: ScheduledList
           SoldList
           UnsoldList
           DeletedFromSoldList
           DeletedFromUnsoldList
           BidList
           ActiveList

  Calls: GetBidderList
  Returned: Always

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getConvertedStartPrice {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ConvertedStartPrice'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setEndTime()

Time stamp (in GMT) when the listing is scheduled to end
(calculated based on the values of StartTime and ListingDuration)
or the actual end time if the item has ended.
In GetSearchResults, for StoresFixedPrice items which
are "Good Till Canceled," this value is 5 minutes later than
the actual end time of the item. The discrepancy is intended
to facilitate renewal every 30 days of such items' end times.

#    Argument: 'xs:dateTime'

=cut

sub setEndTime {
  my $self = shift;
  $self->{'EndTime'} = shift
}

=head2 getEndTime()

  Calls: GetBidderList
         GetDispute
  Returned: Always

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetBestOffers
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

  Calls: GetCategoryListings
         GetItemsAwaitingFeedback
         GetMemberMessages
  Returned: Conditionally

  Calls: GetSearchResults
  Returned: Conditionally
  Details: DetailLevel: ItemReturnAttributes, ItemReturnCategories, none, ReturnAll
           GranularityLevel: Coarse


  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: BidList
           LostList
           SecondChanceOffer
           WatchList
           WonList
           DeletedFromWonList
           DeletedFromLostList

  Calls: GetMyeBaySelling
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: SoldList
           UnsoldList
           DeletedFromSoldList
           DeletedFromUnsoldList
           BidList

  Calls: GetSellerEvents
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

  Calls: GetProducts
  Returned: Conditionally

#    Returns: 'xs:dateTime'

=cut

sub getEndTime {
  my $self = shift;
  return $self->{'EndTime'};
}


=head2 setHasPublicMessages()

Indicates whether the item has any publicly displayed messages. Use
GetMemberMessages to retrieve public messages for the item if this flag
indicates that there are any.

#    Argument: 'xs:boolean'

=cut

sub setHasPublicMessages {
  my $self = shift;
  $self->{'HasPublicMessages'} = shift
}

=head2 isHasPublicMessages()

  Calls: GetBidderList
  Returned: Always

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isHasPublicMessages {
  my $self = shift;
  return $self->{'HasPublicMessages'};
}


=head2 setHasReservePrice()

If true, the seller specified a value in ReservePrice.

#    Argument: 'xs:boolean'

=cut

sub setHasReservePrice {
  my $self = shift;
  $self->{'HasReservePrice'} = shift
}

=head2 isHasReservePrice()

  Calls: GetBidderList
  Returned: Always

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Medium, Fine


#    Returns: 'xs:boolean'

=cut

sub isHasReservePrice {
  my $self = shift;
  return $self->{'HasReservePrice'};
}


=head2 setHasUnansweredQuestions()

Indicates whether the item has any unanswered questions. Use
GetMemberMessages to retrieve unanswered questions for the item if this flag
indicates that there are any.

#    Argument: 'xs:boolean'

=cut

sub setHasUnansweredQuestions {
  my $self = shift;
  $self->{'HasUnansweredQuestions'} = shift
}

=head2 isHasUnansweredQuestions()

  Calls: GetBidderList
  Returned: Always

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isHasUnansweredQuestions {
  my $self = shift;
  return $self->{'HasUnansweredQuestions'};
}


=head2 setLocalListingDistance()

Specifies a distance (in miles) used as the radius of the area about the
supplied postal code that constitutes the local market. Use
GetCategoryFeatures to determine the local listing distances supported by
a given site, category, and Local Market subscription level.

  Calls: AddItem
         GetItemRecommendations
  RequiredInput: Conditionally

#    Argument: 'xs:string'

=cut

sub setLocalListingDistance {
  my $self = shift;
  $self->{'LocalListingDistance'} = shift
}

=head2 getLocalListingDistance()

#    Returns: 'xs:string'

=cut

sub getLocalListingDistance {
  my $self = shift;
  return $self->{'LocalListingDistance'};
}


=head2 setMinimumBestOfferMessage()

Specifies the message sent from the seller to the buyer when a
submitted best offer is automatically declined by the seller. A best offer
is automatically declined if it does not meet the minimum acceptable best
offer price specified by the seller with MinimumBestOfferPrice. Applies only
to items listed in categories that support the Best Offer Auto-Decline
feature. Best Offer must be enabled for the item.
To remove this value when revising or relisting an item, use DeletedField.

DeprecationDetails: NoOp
DeprecationVersion: 547
UseInstead: 
  Calls: AddItem
         GetItemRecommendations
         ReviseItem
         RelistItem
         VerifyAddItem
  RequiredInput: No

#    Argument: 'xs:string'

=cut

sub setMinimumBestOfferMessage {
  my $self = shift;
  $self->{'MinimumBestOfferMessage'} = shift
}

=head2 getMinimumBestOfferMessage()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

#    Returns: 'xs:string'

=cut

sub getMinimumBestOfferMessage {
  my $self = shift;
  return $self->{'MinimumBestOfferMessage'};
}


=head2 setMinimumBestOfferPrice()

Specifies the minimum acceptable best offer price. If a buyer
submits a best offer that is below this value, the offer is automatically
declined by the seller. Applies only to items listed in categories that
support the Best Offer Auto-Decline feature. Best Offer must be enabled
for the item, and only the seller who listed the item can see this value.
To remove this value when revising or relisting an item, use DeletedField.

  Calls: AddItem
         GetItemRecommendations
         ReviseItem
         RelistItem
         VerifyAddItem
  RequiredInput: No

#    Argument: 'ns:AmountType'

=cut

sub setMinimumBestOfferPrice {
  my $self = shift;
  $self->{'MinimumBestOfferPrice'} = shift
}

=head2 getMinimumBestOfferPrice()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getMinimumBestOfferPrice {
  my $self = shift;
  return $self->_getDataTypeInstance( 'MinimumBestOfferPrice'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setPayPerLeadEnabled()

If true as an input or output field, the item is pay-per-lead-enabled.
This field applies to the pay-per-lead feature, which is
planned for availability on the US site in upcoming months.

Default: false

  Calls: AddItem
         ReviseItem
         RelistItem
         VerifyAddItem
  RequiredInput: No

#    Argument: 'xs:boolean'

=cut

sub setPayPerLeadEnabled {
  my $self = shift;
  $self->{'PayPerLeadEnabled'} = shift
}

=head2 isPayPerLeadEnabled()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isPayPerLeadEnabled {
  my $self = shift;
  return $self->{'PayPerLeadEnabled'};
}


=head2 setRelistedItemID()

Indicates the new item ID for a re-listed item. When an item is
re-listed, the item ID for the new (re-list) item is added to the
old (expired) listing to provide buyers a means to navigate to
the new listing. This value only appears when the old listing is
retrieved.
Output only.

#    Argument: 'ns:ItemIDType'

=cut

sub setRelistedItemID {
  my $self = shift;
  $self->{'RelistedItemID'} = shift
}

=head2 getRelistedItemID()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

#    Returns: 'ns:ItemIDType'

=cut

sub getRelistedItemID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'RelistedItemID'
		,'eBay::API::XML::DataType::ItemIDType');
}


=head2 setSecondChanceOriginalItemID()

The item ID for the original listing from which a second chance offer
is made. This value is only returned when the data for the second chance
offer listing is retrieved.
Output only.

#    Argument: 'ns:ItemIDType'

=cut

sub setSecondChanceOriginalItemID {
  my $self = shift;
  $self->{'SecondChanceOriginalItemID'} = shift
}

=head2 getSecondChanceOriginalItemID()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

#    Returns: 'ns:ItemIDType'

=cut

sub getSecondChanceOriginalItemID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'SecondChanceOriginalItemID'
		,'eBay::API::XML::DataType::ItemIDType');
}


=head2 setSellerBusinessType()

Type of seller account. This value is not returned for most sites. 
This value is not returned for the German site
(site ID 77) or eBay Motors site (site ID 100).

#    Argument: 'ns:SellerBusinessCodeType'

=cut

sub setSellerBusinessType {
  my $self = shift;
  $self->{'SellerBusinessType'} = shift
}

=head2 getSellerBusinessType()

  Calls: GetSearchResults
  Returned: Conditionally
  Details: DetailLevel: ItemReturnAttributes, ItemReturnCategories, none, ReturnAll

#    Returns: 'ns:SellerBusinessCodeType'

=cut

sub getSellerBusinessType {
  my $self = shift;
  return $self->{'SellerBusinessType'};
}


=head2 setStartTime()

The StartTime value returned by non-search calls such as
GetItem is the time stamp (in GMT) for when  
the item was listed.
The StartTime value returned by search calls such
as GetSearchResults and GetCategoryListings may vary
from the value returned by GetItem.
The time value is the same value in the following: 
The StartTime value returned by GetSearchResults,
the StartTime value returned by GetCategoryListings,
and the time the item became available for search on
the eBay site.

#    Argument: 'xs:dateTime'

=cut

sub setStartTime {
  my $self = shift;
  $self->{'StartTime'} = shift
}

=head2 getStartTime()

  Calls: GetBidderList
         GetDispute
  Returned: Always

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetCategoryListings
         GetMemberMessages
         GetProducts
  Returned: Conditionally

  Calls: GetSearchResults
  Returned: Conditionally
  Details: DetailLevel: ItemReturnAttributes, ItemReturnCategories, none, ReturnAll
           GranularityLevel: Coarse


  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: BestOfferList
           BidList
           LostList
           WatchList
           WonList
           DeletedFromWonList
           DeletedFromLostList

  Calls: GetMyeBaySelling
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: ActiveList
           ScheduledList
           SoldList
           UnsoldList
           DeletedFromSoldList
           DeletedFromUnsoldList
           BidList

  Calls: GetSellerEvents
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:dateTime'

=cut

sub getStartTime {
  my $self = shift;
  return $self->{'StartTime'};
}


=head2 setTCROriginalItemID()

Indicates the item ID of the original item listing from which a
Transaction Confirmation Request (TCR) was created. This value is only
returned when the data for a TCR is retrieved.

#    Argument: 'ns:ItemIDType'

=cut

sub setTCROriginalItemID {
  my $self = shift;
  $self->{'TCROriginalItemID'} = shift
}

=head2 getTCROriginalItemID()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

  Calls: GetBidderList
  Returned: Conditionally

#    Returns: 'ns:ItemIDType'

=cut

sub getTCROriginalItemID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'TCROriginalItemID'
		,'eBay::API::XML::DataType::ItemIDType');
}


=head2 setViewItemURL()

The URL of the Web page where a user can view the listing.
On the US site, this is called the "View Item" page.
If you enabled affiliate tracking in a search-related call
(for example, if you used the AffiliateTrackingDetails container
in an applicable call), ViewItemURL contains
a string that includes affiliate tracking information
(see the
<a href="https://www.ebaypartnernetwork.com" target="_blank">eBay Partner Network</a>).
For GetSearchResultsExpress, the ViewItemURL field is returned only if you specified
AffiliateTrackingDetails in the request.

#    Argument: 'xs:anyURI'

=cut

sub setViewItemURL {
  my $self = shift;
  $self->{'ViewItemURL'} = shift
}

=head2 getViewItemURL()

  Calls: GetBidderList
  Returned: Always

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetCategoryListings
         GetProducts
  Returned: Conditionally

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: WatchList

  Calls: GetSearchResults
  Returned: Conditionally
  Details: DetailLevel: ItemReturnAttributes, ItemReturnCategories, none, ReturnAll
           GranularityLevel: Coarse


  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

#    Returns: 'xs:anyURI'

=cut

sub getViewItemURL {
  my $self = shift;
  return $self->{'ViewItemURL'};
}


=head2 setViewItemURLForNaturalSearch()

This URL takes you to the same View Item page as ViewItemURL,
but this URL is optimized to support natural search.
That is, this URL is designed to make items on eBay easier to find via
popular Internet search engines.
For example, this URL specifies the item title, and it is
optimized for natural search: "_W0QQ" is like "?" (question mark),
"QQ" is like "&" (ampersand),
and "Z" is like "=" (equals sign).
<br>
<br>
<span class="tablenote"><b>Note</b>:
This URL may include additional
query parameters that don't appear in ViewItemURL and vice versa.
You should not modify the query syntax.  For example,
eBay won't recognize the URL if you change QQ to ?.</span>

#    Argument: 'xs:anyURI'

=cut

sub setViewItemURLForNaturalSearch {
  my $self = shift;
  $self->{'ViewItemURLForNaturalSearch'} = shift
}

=head2 getViewItemURLForNaturalSearch()

  Calls: GetSearchResults
  Returned: Conditionally
  Details: DetailLevel: ItemReturnAttributes, ItemReturnCategories, none, ReturnAll
           GranularityLevel: Coarse


  Calls: GetCategoryListings
  Returned: Conditionally

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

  Calls: GetProducts
  Returned: Conditionally

#    Returns: 'xs:anyURI'

=cut

sub getViewItemURLForNaturalSearch {
  my $self = shift;
  return $self->{'ViewItemURLForNaturalSearch'};
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
