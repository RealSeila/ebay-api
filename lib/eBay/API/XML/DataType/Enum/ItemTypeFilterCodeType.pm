#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::ItemTypeFilterCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ItemTypeFilterCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::ItemTypeFilterCodeType

=head1 DESCRIPTION

ItemTypeFilterCodeType - Type declaration to be used by other
schema. This code identifies the ItemTypeFilters (e.g., for
GetSearchResults requests) used to filter items returned by the type
of listing.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 AuctionItemsOnly

(in) Only retrieve listings eligible for competitive bidding at auction.
That is, only retrieve listings for which ListingType is Chinese, Dutch, or Live
(regardless of the BuyItNowEnabled value).
If a listing has a ListingType of any of the following,
it is not retrieved: StoresFixedPrice, FixedPriceItem, and AdType.



=cut


use constant AuctionItemsOnly => scalar('AuctionItemsOnly');


=head2 FixedPricedItem

(in) Only retrieves listings that can be purchased at a fixed price.
That is, only retrieves listings for which ListingType is StoresFixedPrice or FixedPriceItem.
Whether StoresFixedPrice items are retrieved depends on the site default.
If StoresFixedPrice items are retrieved, they are returned after the other retrieved items.
Also retrieves Chinese and Dutch auction listings for which BuyItNowEnabled is true.
Does not retrieve listings for which ListingType is AdType or Live,
and does not retrieve auction listings for which BuyItNowEnabled is false.



=cut


use constant FixedPricedItem => scalar('FixedPricedItem');


=head2 AllItems

(in) It is recommended that you use AllItemTypes instead of AllItems.
Return all listing types (the default for GetSearchResults).
Whether StoresFixedPrice items are retrieved depends on the site default.



=cut


use constant AllItems => scalar('AllItems');


=head2 StoreInventoryOnly

(in) Only retrieve listings for which ListingType is StoresFixedPrice.



=cut


use constant StoreInventoryOnly => scalar('StoreInventoryOnly');


=head2 FixedPriceExcludeStoreInventory

(in) Exclude listings that have ListingType set to StoresFixedPrice.
Exclude listings that have ListingType set to AdType or Live.
Exclude auction listings in which BuyItNowEnabled is false.



=cut


use constant FixedPriceExcludeStoreInventory => scalar('FixedPriceExcludeStoreInventory');


=head2 ExcludeStoreInventory

(in) Exclude listings that have ListingType set to StoresFixedPrice.



=cut


use constant ExcludeStoreInventory => scalar('ExcludeStoreInventory');


=head2 AllItemTypes

(in) Retrieve listings whether or not ListingType is set to StoresFixedPrice; include auction items.



=cut


use constant AllItemTypes => scalar('AllItemTypes');


=head2 AllFixedPriceItemTypes

(in) Retrieves fixed-price items.
Whether StoresFixedPrice items are retrieved does not depend on the site default.
The StoresFixedPrice items are retrieved after the basic fixed price items.
Items are retrieved whether or not ListingType is set to StoresFixedPrice.
Does not retrieve items for which ListingType is AdType or Live.
Does not retrieve auction items for which BuyItNowEnabled is false.



=cut


use constant AllFixedPriceItemTypes => scalar('AllFixedPriceItemTypes');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');


=head2 ClassifiedItemsOnly

(in) Only retrieve Classified Ad format listings.



=cut


use constant ClassifiedItemsOnly => scalar('ClassifiedItemsOnly');







1;   
