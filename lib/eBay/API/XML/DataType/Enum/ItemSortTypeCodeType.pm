#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::ItemSortTypeCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ItemSortTypeCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::ItemSortTypeCodeType

=head1 DESCRIPTION

(in) Indicates the field and direction (ascending or
descending) by which to sort a returned list of items.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 ItemID

(in) Sort by Item ID (ascending).



=cut


use constant ItemID => scalar('ItemID');


=head2 Price

(in) Sort by price (ascending).



=cut


use constant Price => scalar('Price');


=head2 StartPrice

(in) Sort by start price (ascending).



=cut


use constant StartPrice => scalar('StartPrice');


=head2 Title

(in) Sort by item title (ascending).



=cut


use constant Title => scalar('Title');


=head2 BidCount

(in) Sort by number of bids on the item (ascending).



=cut


use constant BidCount => scalar('BidCount');


=head2 Quantity

(in) Sort by quantity (ascending).



=cut


use constant Quantity => scalar('Quantity');


=head2 StartTime

(in) Sort by listing start time (ascending).



=cut


use constant StartTime => scalar('StartTime');


=head2 EndTime

(in) Sort by listing end time (ascending).



=cut


use constant EndTime => scalar('EndTime');


=head2 SellerUserID

(in) Sort by the seller's user ID, in alphabetical order.



=cut


use constant SellerUserID => scalar('SellerUserID');


=head2 TimeLeft

(in) Sort by the time left for the item's listing,
in ascending order: active items, good-til-cancelled items,
and completed items.



=cut


use constant TimeLeft => scalar('TimeLeft');


=head2 ListingDuration

(in) Sort by listing duration (ascending).



=cut


use constant ListingDuration => scalar('ListingDuration');


=head2 ListingType

(in) Sort by listing type (ascending).



=cut


use constant ListingType => scalar('ListingType');


=head2 CurrentPrice

(in) Sort by current price (ascending).



=cut


use constant CurrentPrice => scalar('CurrentPrice');


=head2 ReservePrice

(in) Sort by reserve price (ascending).



=cut


use constant ReservePrice => scalar('ReservePrice');


=head2 MaxBid

(in) Sort by maximum bid price (ascending).



=cut


use constant MaxBid => scalar('MaxBid');


=head2 BidderCount

(in) Sort by number of bidders (ascending).



=cut


use constant BidderCount => scalar('BidderCount');


=head2 HighBidderUserID

(in) Sort by the user ID of the highest bidder (ascending).



=cut


use constant HighBidderUserID => scalar('HighBidderUserID');


=head2 BuyerUserID

(in) Sort by the user ID of the buyer (ascending).



=cut


use constant BuyerUserID => scalar('BuyerUserID');


=head2 BuyerPostalCode

(in) Sort by the buyer's postal code (ascending).



=cut


use constant BuyerPostalCode => scalar('BuyerPostalCode');


=head2 BuyerEmail

(in) Sort by the buyer's email address, in alphabetical order.



=cut


use constant BuyerEmail => scalar('BuyerEmail');


=head2 SellerEmail

(in) Sort by the seller's email address, in alphabetical order.



=cut


use constant SellerEmail => scalar('SellerEmail');


=head2 TotalPrice

(in) Sort by total price (ascending).



=cut


use constant TotalPrice => scalar('TotalPrice');


=head2 WatchCount

(in) Sort by the number of items being watched (ascending). The WatchCount of an item is the number of watches that buyers have placed on an item using their eBay accounts.



=cut


use constant WatchCount => scalar('WatchCount');


=head2 BestOfferCount

(in) Sort by the number of best offers (ascending).



=cut


use constant BestOfferCount => scalar('BestOfferCount');


=head2 QuestionCount

(in) Sort by the number of questions (ascending).



=cut


use constant QuestionCount => scalar('QuestionCount');


=head2 ShippingServiceCost

(in) Sort by the cost indicated for shipping (ascending).



=cut


use constant ShippingServiceCost => scalar('ShippingServiceCost');


=head2 FeedbackReceived

(in) Sort by type of feedback received, positive, negative, or neutral.
In ascending order - negative, neutral, positive.



=cut


use constant FeedbackReceived => scalar('FeedbackReceived');


=head2 FeedbackLeft

(in) Sort by type of feedback received, positive, negative, or neutral.
In ascending order - negative, neutral, positive.



=cut


use constant FeedbackLeft => scalar('FeedbackLeft');


=head2 UserID

(in) Sort by user ID, in alphabetical order.



=cut


use constant UserID => scalar('UserID');


=head2 QuantitySold

(in) Sort by the number of items sold (ascending).



=cut


use constant QuantitySold => scalar('QuantitySold');


=head2 BestOffer

(in) Sort items with Best Offers first.



=cut


use constant BestOffer => scalar('BestOffer');


=head2 QuantityAvailable

(in) Sort by the number of items available (ascending).



=cut


use constant QuantityAvailable => scalar('QuantityAvailable');


=head2 QuantityPurchased

(in) Sort by the number of items purchased (ascending).



=cut


use constant QuantityPurchased => scalar('QuantityPurchased');


=head2 WonPlatform

(in) Sort by the platform on which the item was won (eBay items last).



=cut


use constant WonPlatform => scalar('WonPlatform');


=head2 SoldPlatform

(in) Sort by the platform on which the item was sold (eBay items last).



=cut


use constant SoldPlatform => scalar('SoldPlatform');


=head2 ListingDurationDescending

(in) Sort by the duration of the listing (descending).



=cut


use constant ListingDurationDescending => scalar('ListingDurationDescending');


=head2 ListingTypeDescending

(in) Sort by the listing type (descending).



=cut


use constant ListingTypeDescending => scalar('ListingTypeDescending');


=head2 CurrentPriceDescending

(in) Sort by the current price of the listed item (descending).



=cut


use constant CurrentPriceDescending => scalar('CurrentPriceDescending');


=head2 ReservePriceDescending

(in) Sort by the listing's reserve price (descending).



=cut


use constant ReservePriceDescending => scalar('ReservePriceDescending');


=head2 MaxBidDescending

(in) Sort by the highest bid on the item (descending).



=cut


use constant MaxBidDescending => scalar('MaxBidDescending');


=head2 BidderCountDescending

(in) Sort by number of bidders (descending).



=cut


use constant BidderCountDescending => scalar('BidderCountDescending');


=head2 HighBidderUserIDDescending

(in) Sort by the user ID of the highest bidder (descending).



=cut


use constant HighBidderUserIDDescending => scalar('HighBidderUserIDDescending');


=head2 BuyerUserIDDescending

(in) Sort by the user ID of the buyer, in reverse
alphabetical order.



=cut


use constant BuyerUserIDDescending => scalar('BuyerUserIDDescending');


=head2 BuyerPostalCodeDescending

(in) Sort by the buyer's postal code, in descending
order.



=cut


use constant BuyerPostalCodeDescending => scalar('BuyerPostalCodeDescending');


=head2 BuyerEmailDescending

(in) Sort by the buyer's email address, in
reverse alphabetical order.



=cut


use constant BuyerEmailDescending => scalar('BuyerEmailDescending');


=head2 SellerEmailDescending

(in) Sort by the seller's email address,
in reverse alphabetical order.



=cut


use constant SellerEmailDescending => scalar('SellerEmailDescending');


=head2 TotalPriceDescending

(in) Sort by the total price of the order, (descending).



=cut


use constant TotalPriceDescending => scalar('TotalPriceDescending');


=head2 WatchCountDescending

(in) Sort by watch count (descending).



=cut


use constant WatchCountDescending => scalar('WatchCountDescending');


=head2 QuestionCountDescending

(in) Sort by number of questions (descending).



=cut


use constant QuestionCountDescending => scalar('QuestionCountDescending');


=head2 ShippingServiceCostDescending

(in) Sort by the cost of shipping (descending).



=cut


use constant ShippingServiceCostDescending => scalar('ShippingServiceCostDescending');


=head2 FeedbackReceivedDescending

(in) Sort by type of feedback received, positive, negative, or neutral.
In descending order - positive, neutral, negative.



=cut


use constant FeedbackReceivedDescending => scalar('FeedbackReceivedDescending');


=head2 FeedbackLeftDescending

(in) Sort by type of feedback received, positive, negative, or neutral.
In descending order - positive, neutral, negative.



=cut


use constant FeedbackLeftDescending => scalar('FeedbackLeftDescending');


=head2 UserIDDescending

(in) Sort by user ID, in descending order.



=cut


use constant UserIDDescending => scalar('UserIDDescending');


=head2 QuantitySoldDescending

(in) Sort by the number of items sold, in descending order.



=cut


use constant QuantitySoldDescending => scalar('QuantitySoldDescending');


=head2 BestOfferCountDescending

(in) Sort items by the number of Best Offers on an item, in descending order.



=cut


use constant BestOfferCountDescending => scalar('BestOfferCountDescending');


=head2 QuantityAvailableDescending

(in) Sort items by the number there are available, in descending order.



=cut


use constant QuantityAvailableDescending => scalar('QuantityAvailableDescending');


=head2 QuantityPurchasedDescending

(in) Sort items by the number that have been purchased, in descending order.



=cut


use constant QuantityPurchasedDescending => scalar('QuantityPurchasedDescending');


=head2 BestOfferDescending

(in) Sort items with Best Offers last.



=cut


use constant BestOfferDescending => scalar('BestOfferDescending');


=head2 ItemIDDescending

(in) Sort by Item ID (descending).



=cut


use constant ItemIDDescending => scalar('ItemIDDescending');


=head2 PriceDescending

(in) Sort by price (descending).



=cut


use constant PriceDescending => scalar('PriceDescending');


=head2 StartPriceDescending

(in) Sort by start price (descending).



=cut


use constant StartPriceDescending => scalar('StartPriceDescending');


=head2 TitleDescending

(in) Sort by item title (descending).



=cut


use constant TitleDescending => scalar('TitleDescending');


=head2 BidCountDescending

(in) Sort by number of bids on the item (descending).



=cut


use constant BidCountDescending => scalar('BidCountDescending');


=head2 QuantityDescending

(in) Sort by the quantity of items sold (descending).



=cut


use constant QuantityDescending => scalar('QuantityDescending');


=head2 StartTimeDescending

(in) Sort by listing start time (descending).



=cut


use constant StartTimeDescending => scalar('StartTimeDescending');


=head2 EndTimeDescending

(in) Sort by listing end time (descending).



=cut


use constant EndTimeDescending => scalar('EndTimeDescending');


=head2 SellerUserIDDescending

(in) Sort by seller user ID, in reverse alphabetical order.



=cut


use constant SellerUserIDDescending => scalar('SellerUserIDDescending');


=head2 TimeLeftDescending

(in) Sort by time left on the listing, in descending
order: completed items, good-til-cancelled items,
and active items.



=cut


use constant TimeLeftDescending => scalar('TimeLeftDescending');


=head2 WonPlatformDescending

(in) Sort by the platform on which the item was won (eBay Express items last).



=cut


use constant WonPlatformDescending => scalar('WonPlatformDescending');


=head2 SoldPlatformDescending

(in) Sort by the platform on which the item was sold (eBay Express items last).



=cut


use constant SoldPlatformDescending => scalar('SoldPlatformDescending');


=head2 LeadCount

(in) Sort by the lead (emails) count (ascending).



=cut


use constant LeadCount => scalar('LeadCount');


=head2 NewLeadCount

(in) Sort by the new lead (new emails) count (ascending).



=cut


use constant NewLeadCount => scalar('NewLeadCount');


=head2 LeadCountDescending

(in) Sort by the lead count (descending).



=cut


use constant LeadCountDescending => scalar('LeadCountDescending');


=head2 NewLeadCountDescending

(in) Sort by the new contact count (descending).



=cut


use constant NewLeadCountDescending => scalar('NewLeadCountDescending');


=head2 ClassifiedAdPayPerLeadFee

(in) Sort by the total pay-per-lead fee for this item (ascending).



=cut


use constant ClassifiedAdPayPerLeadFee => scalar('ClassifiedAdPayPerLeadFee');


=head2 ClassifiedAdPayPerLeadFeeDescending

(in) Sort by the total pay-per-lead fee for this item (descending).



=cut


use constant ClassifiedAdPayPerLeadFeeDescending => scalar('ClassifiedAdPayPerLeadFeeDescending');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
