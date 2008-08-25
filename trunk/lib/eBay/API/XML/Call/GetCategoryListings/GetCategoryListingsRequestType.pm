#!/usr/bin/perl

package eBay::API::XML::Call::GetCategoryListings::GetCategoryListingsRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetCategoryListingsRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetCategoryListings::GetCategoryListingsRequestType

=head1 DESCRIPTION

Returns items in a specified category. A number of inputs are provided
for filtering the item listings returned using such criteria as
location, whether the item is listed in an ebay Store,
the listing type, and including or excluding specified sellers.
<p>It is recommended that you consider using FindItemsAdvanced
(in the Shopping API) instead of GetCategoryListings because
FindItemsAdvanced is easier to use and faster.
See <a href="http://developer.ebay.com/products/shopping/" target="_blank">Shopping API</a>
for more information.
</p>



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetCategoryListings::GetCategoryListingsRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::GroupType;
use eBay::API::XML::DataType::PaginationType;
use eBay::API::XML::DataType::ProximitySearchType;
use eBay::API::XML::DataType::SearchLocationType;
use eBay::API::XML::DataType::Enum::CategoryListingsOrderCodeType;
use eBay::API::XML::DataType::Enum::CategoryListingsSearchCodeType;
use eBay::API::XML::DataType::Enum::CurrencyCodeType;
use eBay::API::XML::DataType::Enum::ItemTypeFilterCodeType;
use eBay::API::XML::DataType::Enum::PaymentMethodSearchCodeType;


my @gaProperties = ( [ 'AdFormat', 'xs:boolean', '', '', '' ]
	, [ 'CategoryID', 'xs:string', '', '', '' ]
	, [ 'Currency', 'ns:CurrencyCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CurrencyCodeType', '' ]
	, [ 'FreeShipping', 'xs:boolean', '', '', '' ]
	, [ 'Group', 'ns:GroupType', ''
	     ,'eBay::API::XML::DataType::GroupType', '1' ]
	, [ 'IncludeCondition', 'xs:boolean', '', '', '' ]
	, [ 'IncludeFeedback', 'xs:boolean', '', '', '' ]
	, [ 'IncludeGetItFastItems', 'xs:boolean', '', '', '' ]
	, [ 'ItemTypeFilter', 'ns:ItemTypeFilterCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::ItemTypeFilterCodeType', '' ]
	, [ 'LocalSearchPostalCode', 'xs:string', '', '', '' ]
	, [ 'MaxRelatedSearchKeywords', 'xs:int', '', '', '' ]
	, [ 'MotorsGermanySearchable', 'xs:boolean', '', '', '' ]
	, [ 'OrderBy', 'ns:CategoryListingsOrderCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CategoryListingsOrderCodeType', '' ]
	, [ 'Pagination', 'ns:PaginationType', ''
	     ,'eBay::API::XML::DataType::PaginationType', '1' ]
	, [ 'PaymentMethod', 'ns:PaymentMethodSearchCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::PaymentMethodSearchCodeType', '' ]
	, [ 'ProximitySearch', 'ns:ProximitySearchType', ''
	     ,'eBay::API::XML::DataType::ProximitySearchType', '1' ]
	, [ 'SearchLocation', 'ns:SearchLocationType', ''
	     ,'eBay::API::XML::DataType::SearchLocationType', '1' ]
	, [ 'SearchType', 'ns:CategoryListingsSearchCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CategoryListingsSearchCodeType', '' ]
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



=head2 setAdFormat()

Restricts listings to return only items that have the Ad Format feature.
If true, the values of ItemTypeFilter and
StoreSearchFilter are ignored (if they are specified). That is, "AND"
logic is not applied.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setAdFormat {
  my $self = shift;
  $self->{'AdFormat'} = shift
}

=head2 isAdFormat()

#    Returns: 'xs:boolean'

=cut

sub isAdFormat {
  my $self = shift;
  return $self->{'AdFormat'};
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
  my $self = shift;
  $self->{'CategoryID'} = shift
}

=head2 getCategoryID()

#    Returns: 'xs:string'

=cut

sub getCategoryID {
  my $self = shift;
  return $self->{'CategoryID'};
}


=head2 setCurrency()

A currency value. Limits the result set to just those items listed
using a specified currency. Not applicable to US eBay Motors searches.

  RequiredInput: No
#    Argument: 'ns:CurrencyCodeType'

=cut

sub setCurrency {
  my $self = shift;
  $self->{'Currency'} = shift
}

=head2 getCurrency()

#    Returns: 'ns:CurrencyCodeType'

=cut

sub getCurrency {
  my $self = shift;
  return $self->{'Currency'};
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
  my $self = shift;
  $self->{'FreeShipping'} = shift
}

=head2 isFreeShipping()

#    Returns: 'xs:boolean'

=cut

sub isFreeShipping {
  my $self = shift;
  return $self->{'FreeShipping'};
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
  my $self = shift;
  $self->{'Group'} = shift
}

=head2 getGroup()

#    Returns: 'ns:GroupType'

=cut

sub getGroup {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Group'
		,'eBay::API::XML::DataType::GroupType');
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
  my $self = shift;
  $self->{'IncludeCondition'} = shift
}

=head2 isIncludeCondition()

#    Returns: 'xs:boolean'

=cut

sub isIncludeCondition {
  my $self = shift;
  return $self->{'IncludeCondition'};
}


=head2 setIncludeFeedback()

If true, each item in the result set also includes information about the
seller's feedback.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setIncludeFeedback {
  my $self = shift;
  $self->{'IncludeFeedback'} = shift
}

=head2 isIncludeFeedback()

#    Returns: 'xs:boolean'

=cut

sub isIncludeFeedback {
  my $self = shift;
  return $self->{'IncludeFeedback'};
}


=head2 setIncludeGetItFastItems()

When passed with a value of true, limits the results to Get It Fast listings.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setIncludeGetItFastItems {
  my $self = shift;
  $self->{'IncludeGetItFastItems'} = shift
}

=head2 isIncludeGetItFastItems()

#    Returns: 'xs:boolean'

=cut

sub isIncludeGetItFastItems {
  my $self = shift;
  return $self->{'IncludeGetItFastItems'};
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
  my $self = shift;
  $self->{'ItemTypeFilter'} = shift
}

=head2 getItemTypeFilter()

#    Returns: 'ns:ItemTypeFilterCodeType'

=cut

sub getItemTypeFilter {
  my $self = shift;
  return $self->{'ItemTypeFilter'};
}


=head2 setLocalSearchPostalCode()

Include local items in returning results near this postal code. This
postal code is the basis for local search.

  RequiredInput: No
#    Argument: 'xs:string'

=cut

sub setLocalSearchPostalCode {
  my $self = shift;
  $self->{'LocalSearchPostalCode'} = shift
}

=head2 getLocalSearchPostalCode()

#    Returns: 'xs:string'

=cut

sub getLocalSearchPostalCode {
  my $self = shift;
  return $self->{'LocalSearchPostalCode'};
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
  my $self = shift;
  $self->{'MaxRelatedSearchKeywords'} = shift
}

=head2 getMaxRelatedSearchKeywords()

#    Returns: 'xs:int'

=cut

sub getMaxRelatedSearchKeywords {
  my $self = shift;
  return $self->{'MaxRelatedSearchKeywords'};
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
  my $self = shift;
  $self->{'MotorsGermanySearchable'} = shift
}

=head2 isMotorsGermanySearchable()

#    Returns: 'xs:boolean'

=cut

sub isMotorsGermanySearchable {
  my $self = shift;
  return $self->{'MotorsGermanySearchable'};
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
  my $self = shift;
  $self->{'OrderBy'} = shift
}

=head2 getOrderBy()

#    Returns: 'ns:CategoryListingsOrderCodeType'

=cut

sub getOrderBy {
  my $self = shift;
  return $self->{'OrderBy'};
}


=head2 setPagination()

Controls the pagination of the result set. Child elements specify the
maximum number of item listings to return per call and which page of data
to return.

  RequiredInput: No
#    Argument: 'ns:PaginationType'

=cut

sub setPagination {
  my $self = shift;
  $self->{'Pagination'} = shift
}

=head2 getPagination()

#    Returns: 'ns:PaginationType'

=cut

sub getPagination {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Pagination'
		,'eBay::API::XML::DataType::PaginationType');
}


=head2 setPaymentMethod()

Specifies items that accept a specific payment method or methods.

  RequiredInput: No
#    Argument: 'ns:PaymentMethodSearchCodeType'

=cut

sub setPaymentMethod {
  my $self = shift;
  $self->{'PaymentMethod'} = shift
}

=head2 getPaymentMethod()

#    Returns: 'ns:PaymentMethodSearchCodeType'

=cut

sub getPaymentMethod {
  my $self = shift;
  return $self->{'PaymentMethod'};
}


=head2 setProximitySearch()

Limits the result set to just those items that meet proximity search
criteria: postal code and max distance.

  RequiredInput: No
#    Argument: 'ns:ProximitySearchType'

=cut

sub setProximitySearch {
  my $self = shift;
  $self->{'ProximitySearch'} = shift
}

=head2 getProximitySearch()

#    Returns: 'ns:ProximitySearchType'

=cut

sub getProximitySearch {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ProximitySearch'
		,'eBay::API::XML::DataType::ProximitySearchType');
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
  my $self = shift;
  $self->{'SearchLocation'} = shift
}

=head2 getSearchLocation()

#    Returns: 'ns:SearchLocationType'

=cut

sub getSearchLocation {
  my $self = shift;
  return $self->_getDataTypeInstance( 'SearchLocation'
		,'eBay::API::XML::DataType::SearchLocationType');
}


=head2 setSearchType()

Specifies whether to limit the item listings to just those that are
category featured or super featured or all items.

  RequiredInput: No
#    Argument: 'ns:CategoryListingsSearchCodeType'

=cut

sub setSearchType {
  my $self = shift;
  $self->{'SearchType'} = shift
}

=head2 getSearchType()

#    Returns: 'ns:CategoryListingsSearchCodeType'

=cut

sub getSearchType {
  my $self = shift;
  return $self->{'SearchType'};
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
