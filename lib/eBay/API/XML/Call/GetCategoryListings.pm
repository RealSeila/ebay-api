#!/usr/bin/perl

package eBay::API::XML::Call::GetCategoryListings;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetCategoryListings.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetCategoryListings

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetCategoryListings inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetCategoryListings::GetCategoryListingsRequestType;
use eBay::API::XML::Call::GetCategoryListings::GetCategoryListingsResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetCategoryListings';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetCategoryListings::GetCategoryListingsRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetCategoryListings::GetCategoryListingsResponseType';
}

#
# input properties
#

=head2 setAdFormat()

Restricts listings to return only items that have the Ad Format feature.
If true, the values of ItemTypeFilter and
StoreSearchFilter are ignored (if they are specified). That is, "AND"
logic is not applied.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setAdFormat {
   my $self   = shift;
   my $sAdFormat = shift;
   $self->getRequestDataType()->setAdFormat($sAdFormat);
}

=head2 setCategoryID()

Specifies the category for which to retrieve item listings.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=SearchingByCategoryID
Title: Searching by Category ID
MaxLength: 10

  RequiredInput: Yes
#    Argument: 'xs:string'

=cut
       
sub setCategoryID {
   my $self   = shift;
   my $sCategoryID = shift;
   $self->getRequestDataType()->setCategoryID($sCategoryID);
}

=head2 setCurrency()

A currency value. Limits the result set to just those items listed
using a specified currency. Not applicable to US eBay Motors searches.

  RequiredInput: No
#    Argument: 'ns:CurrencyCodeType'

=cut
       
sub setCurrency {
   my $self   = shift;
   my $sCurrency = shift;
   $self->getRequestDataType()->setCurrency($sCurrency);
}

=head2 setFreeShipping()

If true, only items with free shipping for the user's location are
returned. The user's location is determined from the site ID specified
in the request. If false, no filtering is done via this attribute. A
listing is not considered a free shipping listing if it requires
insurance or requires pick up or requires a shipping surcharge.

Default: false

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setFreeShipping {
   my $self   = shift;
   my $sFreeShipping = shift;
   $self->getRequestDataType()->setFreeShipping($sFreeShipping);
}

=head2 setGroup()

You can group Best Match search results by category. To group
by category, put the BestMatchCategoryGroup value
in the OrderBy field.
When you use the BestMatchCategoryGroup value,
you can include group
parameters in your call. Note
that there will be significanty fewer results returned with a BestMatchCategoryGroup sort because the results account
for Best Matches in lower-level
(leaf) as well as higher-level categories.
There is not a direct correlation between the number of results returned in a regular sort or
the number of results returned with a BestMatch sort, and the results that are returned by
the BestMatchCategoryGroup sort. You should not receive more
than 2 pages of results with
this type of sort. See also
the new GroupCategoryID element
in ItemType.

  RequiredInput: No
#    Argument: 'ns:GroupType'

=cut
       
sub setGroup {
   my $self   = shift;
   my $pGroup = shift;
   $self->getRequestDataType()->setGroup($pGroup);
}

=head2 setHideDuplicateItems()

Specifies whether or not to remove duplicate items from search results. 
When set to true, and there are duplicate items for an item in the 
search results, the subsequent duplicates will not appear in the 
results. 
Item listings are considered duplicates in the following 
conditions: <br>
<ul>
<li>Items are listed by the same seller</li>
<li>Items have exactly the same item title</li>
<li>Items have similar listing formats</li>
<ul>
<li>Auctions: Auction Items, Auction BIN items, Multi-Quantity 
Auctions, and Multi-Quantity Auctions BIN items</li>
<li>Fixed Price: Fixed Price, Multi-quantity Fixed Price, Fixed 
Price with Best Offer, and Store Inventory Format items</li>
<li>Classified Ads</li>
</ul>
</ul><br>
For Auctions, items must also have the same price and number of bids to 
be considered duplicates.
<br>
Filtering of duplicate item listings is not supported on all sites.

Default: false

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setHideDuplicateItems {
   my $self   = shift;
   my $sHideDuplicateItems = shift;
   $self->getRequestDataType()->setHideDuplicateItems($sHideDuplicateItems);
}

=head2 setIncludeCondition()

If true, each item in the result set can also include the item
condition (whether the item is new or used).
The item's condition is returned in Item.AttributeSetArray.
An item only includes condition attribute if the item's seller
filled in the Item Condition in the Item Specifics section of the
listing. (That is, the condition is not returned if the seller
only put the word "New" in the listing's title.)

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setIncludeCondition {
   my $self   = shift;
   my $sIncludeCondition = shift;
   $self->getRequestDataType()->setIncludeCondition($sIncludeCondition);
}

=head2 setIncludeFeedback()

If true, each item in the result set also includes information about the
seller's feedback.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setIncludeFeedback {
   my $self   = shift;
   my $sIncludeFeedback = shift;
   $self->getRequestDataType()->setIncludeFeedback($sIncludeFeedback);
}

=head2 setIncludeGetItFastItems()

When passed with a value of true, limits the results to Get It Fast listings.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setIncludeGetItFastItems {
   my $self   = shift;
   my $sIncludeGetItFastItems = shift;
   $self->getRequestDataType()->setIncludeGetItFastItems($sIncludeGetItFastItems);
}

=head2 setItemTypeFilter()

Filters items based on the ListingType set for the items.
If ItemTypeFilter is not specified (or if the
AllItemTypes value of ItemTypeFilter is specified), all listing types can
be returned unless another relevant filter is specified.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=SearchingByListingType
Title: Searching By Listing Type

  RequiredInput: No
#    Argument: 'ns:ItemTypeFilterCodeType'

=cut
       
sub setItemTypeFilter {
   my $self   = shift;
   my $sItemTypeFilter = shift;
   $self->getRequestDataType()->setItemTypeFilter($sItemTypeFilter);
}

=head2 setLocalSearchPostalCode()

Include local items in returning results near this postal code. This
postal code is the basis for local search.

  RequiredInput: No
#    Argument: 'xs:string'

=cut
       
sub setLocalSearchPostalCode {
   my $self   = shift;
   my $sLocalSearchPostalCode = shift;
   $self->getRequestDataType()->setLocalSearchPostalCode($sLocalSearchPostalCode);
}

=head2 setMaxRelatedSearchKeywords()

The maximum number of related keywords to be retrieved.
Use this field if you want the results to include
recommended keywords (that is, keywords matching the category ID)
in a RelatedSearchKeywordArray container.
A value of 0 (the default) means no related search information is processed.

Max: 100
Min: 0

  RequiredInput: No
#    Argument: 'xs:int'

=cut
       
sub setMaxRelatedSearchKeywords {
   my $self   = shift;
   my $sMaxRelatedSearchKeywords = shift;
   $self->getRequestDataType()->setMaxRelatedSearchKeywords($sMaxRelatedSearchKeywords);
}

=head2 setMotorsGermanySearchable()

Filters the response based on each item's eligibility to appear on the
mobile.de site. If false, excludes eligible items from search results. If
true, queries for eligible items only. If not specified, the search
results are not affected. Only applicable for items listed on the eBay
Germany site (site ID 77) in subcategories of mobile.de search-enabled
categories.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setMotorsGermanySearchable {
   my $self   = shift;
   my $sMotorsGermanySearchable = shift;
   $self->getRequestDataType()->setMotorsGermanySearchable($sMotorsGermanySearchable);
}

=head2 setOrderBy()

Specifies the order in which the item listings returned will be sorted.
Store Inventory listings are usually returned after other listing types,
regardless of the sort order.

Default: BestMatchSort

  RequiredInput: No
#    Argument: 'ns:CategoryListingsOrderCodeType'

=cut
       
sub setOrderBy {
   my $self   = shift;
   my $sOrderBy = shift;
   $self->getRequestDataType()->setOrderBy($sOrderBy);
}

=head2 setPagination()

Controls the pagination of the result set. Child elements specify the
maximum number of item listings to return per call and which page of data
to return.

  RequiredInput: No
#    Argument: 'ns:PaginationType'

=cut
       
sub setPagination {
   my $self   = shift;
   my $pPagination = shift;
   $self->getRequestDataType()->setPagination($pPagination);
}

=head2 setPaymentMethod()

Specifies items that accept a specific payment method or methods.

  RequiredInput: No
#    Argument: 'ns:PaymentMethodSearchCodeType'

=cut
       
sub setPaymentMethod {
   my $self   = shift;
   my $sPaymentMethod = shift;
   $self->getRequestDataType()->setPaymentMethod($sPaymentMethod);
}

=head2 setProximitySearch()

Limits the result set to just those items that meet proximity search
criteria: postal code and max distance.

  RequiredInput: No
#    Argument: 'ns:ProximitySearchType'

=cut
       
sub setProximitySearch {
   my $self   = shift;
   my $pProximitySearch = shift;
   $self->getRequestDataType()->setProximitySearch($pProximitySearch);
}

=head2 setSearchLocation()

Limits the result set to just those items that meet location criteria:
listed in a specified eBay site, location where the seller has the item,
location from which the user is searching, and/or items listed with a
specified currency.

  RequiredInput: No
#    Argument: 'ns:SearchLocationType'

=cut
       
sub setSearchLocation {
   my $self   = shift;
   my $pSearchLocation = shift;
   $self->getRequestDataType()->setSearchLocation($pSearchLocation);
}

=head2 setSearchType()

Specifies whether to limit the item listings to just those that are
category featured or super featured or all items.

  RequiredInput: No
#    Argument: 'ns:CategoryListingsSearchCodeType'

=cut
       
sub setSearchType {
   my $self   = shift;
   my $sSearchType = shift;
   $self->getRequestDataType()->setSearchType($sSearchType);
}



#
# output properties
#

=head2 getBuyingGuideDetails()

Contains information about relevant buying guides (if any) and the
site's buying guide hub. Buying guides are useful to buyers who do not
have a specific product in mind. For example, a digital camera buying
guide could help a buyer determine what kind of digital camera is right
for them.

  Returned: Conditionally
#    Returns: 'ns:BuyingGuideDetailsType'

=cut
       
sub getBuyingGuideDetails {
   my $self = shift;
   return $self->getResponseDataType()->getBuyingGuideDetails();
}

=head2 getCategory()

Indicates the category from which the listings were drawn.

  Returned: Always
#    Returns: 'ns:CategoryType'

=cut
       
sub getCategory {
   my $self = shift;
   return $self->getResponseDataType()->getCategory();
}

=head2 isDuplicateItems()

Indicates whether there are duplicated items not returned by this 
response when HideDuplicateItems is true in the request.

  Returned: Conditionally
#    Returns: 'xs:boolean'

=cut
       
sub isDuplicateItems {
   my $self = shift;
   return $self->getResponseDataType()->isDuplicateItems();
}

=head2 isHasMoreItems()

Indicates whether there are more item listings that can be returned
(items listed in the specified category and that meet any input filtering
criteria).

  Returned: Always
#    Returns: 'xs:boolean'

=cut
       
sub isHasMoreItems {
   my $self = shift;
   return $self->getResponseDataType()->isHasMoreItems();
}

=head2 getItemArray()

Contains the item listings for the specified category and which meet the
input filtering criteria (if any is specified). Consists of one ItemType
object for each returned item listing.

  Returned: Conditionally
#    Returns: 'ns:ItemArrayType'

=cut
       
sub getItemArray {
   my $self = shift;
   return $self->getResponseDataType()->getItemArray();
}

=head2 getItemsPerPage()

Indicates the maximum number of item listings that will be returned per
call.

  Returned: Always
#    Returns: 'xs:int'

=cut
       
sub getItemsPerPage {
   my $self = shift;
   return $self->getResponseDataType()->getItemsPerPage();
}

=head2 getPageNumber()

Indicates the page of data returned in the current call.

  Returned: Always
#    Returns: 'xs:int'

=cut
       
sub getPageNumber {
   my $self = shift;
   return $self->getResponseDataType()->getPageNumber();
}

=head2 getPaginationResult()

Indicates the results of the pagination, including the total number of
pages of data there are to be returned and the total number of items
there are to be returned.

  Returned: Always
#    Returns: 'ns:PaginationResultType'

=cut
       
sub getPaginationResult {
   my $self = shift;
   return $self->getResponseDataType()->getPaginationResult();
}

=head2 getRelatedSearchKeywordArray()

Container for keywords related to the category ID in the request.
Can be returned if the request specified more than zero in
the MaxRelatedSearchKeywords field.

  Returned: Conditionally
#    Returns: 'ns:RelatedSearchKeywordArrayType'

=cut
       
sub getRelatedSearchKeywordArray {
   my $self = shift;
   return $self->getResponseDataType()->getRelatedSearchKeywordArray();
}

=head2 getSubCategories()

Collection of the sub-categories that are child to the category indicated
in Category. Data for each sub-category is conveyed in a CategoryType
object.

  Returned: Conditionally
#    Returns: 'ns:CategoryArrayType'

=cut
       
sub getSubCategories {
   my $self = shift;
   return $self->getResponseDataType()->getSubCategories();
}





1;   
