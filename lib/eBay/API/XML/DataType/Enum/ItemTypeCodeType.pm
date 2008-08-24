#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::ItemTypeCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ItemTypeCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::ItemTypeCodeType

=head1 DESCRIPTION

Identifies listing-type-related filters.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 AuctionItemsOnly

(in) Only retrieve listings eligible for competitive bidding at auction.
That is, only retrieve listings for which ListingType is Chinese, Dutch, or Live
(regardless of the BuyItNowEnabled value).
If a listing has a listing type of any of the following,
it is not retrieved: StoresFixedPrice, FixedPriceItem, and AdType.



=cut


use constant AuctionItemsOnly => scalar('AuctionItemsOnly');


=head2 FixedPricedItem

(in) Only retrieves listings that can be purchased at a fixed price.
That is, only retrieves listings for which listing type is StoresFixedPrice or FixedPriceItem.
Whether StoresFixedPrice items are retrieved depends on the site default.
If StoresFixedPrice items are retrieved, they are returned after the other retrieved items.
Also retrieves Chinese and Dutch auction listings for which BuyItNowEnabled is true.
Does not retrieve listings for which listing type is AdType or Live,
and does not retrieve auction listings for which BuyItNowEnabled is false.



=cut


use constant FixedPricedItem => scalar('FixedPricedItem');


=head2 AllItems

(in) Returns all listing types (the default for FindItemsAdvanced).
It is recommended that you use AllItemTypes instead of AllItems.
Whether StoresFixedPrice items are retrieved depends on the site default.



=cut


use constant AllItems => scalar('AllItems');


=head2 StoreInventoryOnly

(in) Only retrieves listings for which the listing type is StoresFixedPrice.



=cut


use constant StoreInventoryOnly => scalar('StoreInventoryOnly');


=head2 FixedPriceExcludeStoreInventory

(in) Excludes listings that have listing type set to StoresFixedPrice.
Excludes listings that have listing type set to AdType or Live.
Excludes auction listings in which BuyItNowEnabled is false.



=cut


use constant FixedPriceExcludeStoreInventory => scalar('FixedPriceExcludeStoreInventory');


=head2 ExcludeStoreInventory

(in) Excludes listings that have listing type set to StoresFixedPrice.



=cut


use constant ExcludeStoreInventory => scalar('ExcludeStoreInventory');


=head2 AllItemTypes

(in) Retrieves listings whether or not listing type is set to StoresFixedPrice; include auction items.
In searches for items, you must specify the AllItemTypes value if you want Store Inventory format (StoresFixedPrice) items to be returned.



=cut


use constant AllItemTypes => scalar('AllItemTypes');


=head2 AllFixedPriceItemTypes

(in) Retrieves fixed-price items.
Whether StoresFixedPrice items are retrieved does not depend on the site default.
The StoresFixedPrice items are retrieved after the basic fixed price items.
Items are retrieved whether or not listing type is set to StoresFixedPrice.
Does not retrieve items for which listing type is AdType or Live.
Does not retrieve auction items for which BuyItNowEnabled is false.



=cut


use constant AllFixedPriceItemTypes => scalar('AllFixedPriceItemTypes');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');


=head2 ClassifiedItemsOnly

(in) Only retrieves Classified Ad format listings.



=cut


use constant ClassifiedItemsOnly => scalar('ClassifiedItemsOnly');


=head2 AdFormat

Restricts listings to return only items that have the Ad Format feature.



=cut


use constant AdFormat => scalar('AdFormat');







1;   
