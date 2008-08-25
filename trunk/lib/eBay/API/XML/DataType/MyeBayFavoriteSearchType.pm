#!/usr/bin/perl

package eBay::API::XML::DataType::MyeBayFavoriteSearchType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. MyeBayFavoriteSearchType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::MyeBayFavoriteSearchType

=head1 DESCRIPTION

Characteristics of a saved My eBay Favorite Search.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::MyeBayFavoriteSearchType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AmountType;
use eBay::API::XML::DataType::Enum::CountryCodeType;
use eBay::API::XML::DataType::Enum::CurrencyCodeType;
use eBay::API::XML::DataType::Enum::ItemConditionCodeType;
use eBay::API::XML::DataType::Enum::ItemTypeCodeType;
use eBay::API::XML::DataType::Enum::PaymentMethodSearchCodeType;
use eBay::API::XML::DataType::Enum::PreferredLocationCodeType;
use eBay::API::XML::DataType::Enum::QuantityOperatorCodeType;
use eBay::API::XML::DataType::Enum::SearchFlagCodeType;
use eBay::API::XML::DataType::Enum::SellerBusinessCodeType;
use eBay::API::XML::DataType::Enum::SimpleItemSortCodeType;
use eBay::API::XML::DataType::Enum::SortOrderCodeType;


my @gaProperties = ( [ 'BidCountMax', 'xs:int', '', '', '' ]
	, [ 'BidCountMin', 'xs:int', '', '', '' ]
	, [ 'CategoryID', 'xs:string', '', '', '' ]
	, [ 'Condition', 'ns:ItemConditionCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::ItemConditionCodeType', '' ]
	, [ 'Currency', 'ns:CurrencyCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CurrencyCodeType', '' ]
	, [ 'EndTimeFrom', 'xs:dateTime', '', '', '' ]
	, [ 'EndTimeTo', 'xs:dateTime', '', '', '' ]
	, [ 'ItemSort', 'ns:SimpleItemSortCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::SimpleItemSortCodeType', '' ]
	, [ 'ItemType', 'ns:ItemTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::ItemTypeCodeType', '' ]
	, [ 'ItemsAvailableTo', 'ns:CountryCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CountryCodeType', '' ]
	, [ 'ItemsLocatedIn', 'ns:CountryCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CountryCodeType', '' ]
	, [ 'MaxDistance', 'xs:int', '', '', '' ]
	, [ 'PaymentMethod', 'ns:PaymentMethodSearchCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::PaymentMethodSearchCodeType', '' ]
	, [ 'PostalCode', 'xs:string', '', '', '' ]
	, [ 'PreferredLocation', 'ns:PreferredLocationCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::PreferredLocationCodeType', '' ]
	, [ 'PriceMax', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'PriceMin', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'Quantity', 'xs:int', '', '', '' ]
	, [ 'QuantityOperator', 'ns:QuantityOperatorCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::QuantityOperatorCodeType', '' ]
	, [ 'QueryKeywords', 'xs:string', '', '', '' ]
	, [ 'SearchFlag', 'ns:SearchFlagCodeType', '1'
	     ,'eBay::API::XML::DataType::Enum::SearchFlagCodeType', '' ]
	, [ 'SearchName', 'xs:string', '', '', '' ]
	, [ 'SearchQuery', 'xs:string', '', '', '' ]
	, [ 'SellerBusinessType', 'ns:SellerBusinessCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::SellerBusinessCodeType', '' ]
	, [ 'SellerID', 'xs:string', '1', '', '' ]
	, [ 'SellerIDExclude', 'xs:string', '1', '', '' ]
	, [ 'SortOrder', 'ns:SortOrderCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::SortOrderCodeType', '' ]
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



=head2 setBidCountMax()

The BidCountMax value in a My eBay Favorite Search. The BidCountMax limits the search results to items with a maximum number of bids.

#    Argument: 'xs:int'

=cut

sub setBidCountMax {
  my $self = shift;
  $self->{'BidCountMax'} = shift
}

=head2 getBidCountMax()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:int'

=cut

sub getBidCountMax {
  my $self = shift;
  return $self->{'BidCountMax'};
}


=head2 setBidCountMin()

The BidCountMin value in a My eBay Favorite Search. The BidCountMin limits the results of a search to items with a maximum number of bids.

#    Argument: 'xs:int'

=cut

sub setBidCountMin {
  my $self = shift;
  $self->{'BidCountMin'} = shift
}

=head2 getBidCountMin()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:int'

=cut

sub getBidCountMin {
  my $self = shift;
  return $self->{'BidCountMin'};
}


=head2 setCategoryID()

The CategoryID of a My eBay Favorite Search. CategoryID is used to
restrict the query to a specific category. CategoryID cannot be used
with the following input fields: EndTimeFrom, EndTimeTo, PriceMin, or PriceMax.

#    Argument: 'xs:string'

=cut

sub setCategoryID {
  my $self = shift;
  $self->{'CategoryID'} = shift
}

=head2 getCategoryID()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:string'

=cut

sub getCategoryID {
  my $self = shift;
  return $self->{'CategoryID'};
}


=head2 setCondition()

The Condition value in a My eBay Favorite Search. Condition limits the results to new or used items, plus items that have no condition specified.

#    Argument: 'ns:ItemConditionCodeType'

=cut

sub setCondition {
  my $self = shift;
  $self->{'Condition'} = shift
}

=head2 getCondition()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:ItemConditionCodeType'

=cut

sub getCondition {
  my $self = shift;
  return $self->{'Condition'};
}


=head2 setCurrency()

The Currency of a My eBay Favorite Search. The currency value limits
the result set to just those items with a specified currency.

#    Argument: 'ns:CurrencyCodeType'

=cut

sub setCurrency {
  my $self = shift;
  $self->{'Currency'} = shift
}

=head2 getCurrency()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:CurrencyCodeType'

=cut

sub getCurrency {
  my $self = shift;
  return $self->{'Currency'};
}


=head2 setEndTimeFrom()

The EndTimeFrom of a My eBay Favorite Search. EndTimeFrom and EndTimeTo limit the results to items ending within a time range. EndTimeFrom specifies the beginning of the time range.

#    Argument: 'xs:dateTime'

=cut

sub setEndTimeFrom {
  my $self = shift;
  $self->{'EndTimeFrom'} = shift
}

=head2 getEndTimeFrom()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:dateTime'

=cut

sub getEndTimeFrom {
  my $self = shift;
  return $self->{'EndTimeFrom'};
}


=head2 setEndTimeTo()

The EndTimeTo of a My eBay Favorite Search. EndTimeFrom and EndTimeTo limit the results to items ending within a time range. EndTimeTo specifies the end of the time range.

#    Argument: 'xs:dateTime'

=cut

sub setEndTimeTo {
  my $self = shift;
  $self->{'EndTimeTo'} = shift
}

=head2 getEndTimeTo()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:dateTime'

=cut

sub getEndTimeTo {
  my $self = shift;
  return $self->{'EndTimeTo'};
}


=head2 setItemSort()

The ItemSort of a My eBay Favorite Search. Values for ItemSort include
Best Match, EndTime, Distance, and other options listed in SimpleItemSortCodeType.

#    Argument: 'ns:SimpleItemSortCodeType'

=cut

sub setItemSort {
  my $self = shift;
  $self->{'ItemSort'} = shift
}

=head2 getItemSort()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:SimpleItemSortCodeType'

=cut

sub getItemSort {
  my $self = shift;
  return $self->{'ItemSort'};
}


=head2 setItemType()

The ItemType of a My eBay Favorite Search. Setting ItemType in a search
limits the results to items of a specific type, such as Fixed Price items,
Store Inventory items, items with AdFormat, etc.

#    Argument: 'ns:ItemTypeCodeType'

=cut

sub setItemType {
  my $self = shift;
  $self->{'ItemType'} = shift
}

=head2 getItemType()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:ItemTypeCodeType'

=cut

sub getItemType {
  my $self = shift;
  return $self->{'ItemType'};
}


=head2 setItemsAvailableTo()

The ItemsAvailableTo value in a My eBay Favorite Search. ItemsAvailableTo limits the result set to just those items available to the specified country.

#    Argument: 'ns:CountryCodeType'

=cut

sub setItemsAvailableTo {
  my $self = shift;
  $self->{'ItemsAvailableTo'} = shift
}

=head2 getItemsAvailableTo()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:CountryCodeType'

=cut

sub getItemsAvailableTo {
  my $self = shift;
  return $self->{'ItemsAvailableTo'};
}


=head2 setItemsLocatedIn()

The ItemsLocatedIn value in a My eBay Favorite Search. ItemsLocatedIn limits the result set to just those items located in the specified country.

#    Argument: 'ns:CountryCodeType'

=cut

sub setItemsLocatedIn {
  my $self = shift;
  $self->{'ItemsLocatedIn'} = shift
}

=head2 getItemsLocatedIn()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:CountryCodeType'

=cut

sub getItemsLocatedIn {
  my $self = shift;
  return $self->{'ItemsLocatedIn'};
}


=head2 setMaxDistance()

The MaxDistance of a My eBay Favorite Search. This is the maximum distance from the item-location value specified in PostalCode.

#    Argument: 'xs:int'

=cut

sub setMaxDistance {
  my $self = shift;
  $self->{'MaxDistance'} = shift
}

=head2 getMaxDistance()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:int'

=cut

sub getMaxDistance {
  my $self = shift;
  return $self->{'MaxDistance'};
}


=head2 setPaymentMethod()

The PaymentMethod value in a My eBay Favorite Search. The PaymentMethod limits the search results to items that accept a specific payment method or methods.

#    Argument: 'ns:PaymentMethodSearchCodeType'

=cut

sub setPaymentMethod {
  my $self = shift;
  $self->{'PaymentMethod'} = shift
}

=head2 getPaymentMethod()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:PaymentMethodSearchCodeType'

=cut

sub getPaymentMethod {
  my $self = shift;
  return $self->{'PaymentMethod'};
}


=head2 setPostalCode()

The PostalCode of a My eBay Favorite Search. This value indicates the
postal code where an item is located.

#    Argument: 'xs:string'

=cut

sub setPostalCode {
  my $self = shift;
  $self->{'PostalCode'} = shift
}

=head2 getPostalCode()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:string'

=cut

sub getPostalCode {
  my $self = shift;
  return $self->{'PostalCode'};
}


=head2 setPreferredLocation()

The PreferredLocation value of a My eBay Favorite Search. The PreferredLocation specifies the criteria for filtering search results by site, where site is determined by the site ID in the request.

#    Argument: 'ns:PreferredLocationCodeType'

=cut

sub setPreferredLocation {
  my $self = shift;
  $self->{'PreferredLocation'} = shift
}

=head2 getPreferredLocation()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:PreferredLocationCodeType'

=cut

sub getPreferredLocation {
  my $self = shift;
  return $self->{'PreferredLocation'};
}


=head2 setPriceMax()

The PriceMax of a My eBay Favorite Search. PriceMax specifies
the maximum current price an item can have to be included in
the search results. PriceMax can be used with PriceMin to specify
a range of prices.

#    Argument: 'ns:AmountType'

=cut

sub setPriceMax {
  my $self = shift;
  $self->{'PriceMax'} = shift
}

=head2 getPriceMax()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getPriceMax {
  my $self = shift;
  return $self->_getDataTypeInstance( 'PriceMax'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setPriceMin()

The PriceMin of a My eBay Favorite Search. PriceMin specifies the
minimum current price an item listing can have to be included in
the search results. PriceMin can be used with PriceMax to specify
a range of prices.

#    Argument: 'ns:AmountType'

=cut

sub setPriceMin {
  my $self = shift;
  $self->{'PriceMin'} = shift
}

=head2 getPriceMin()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getPriceMin {
  my $self = shift;
  return $self->_getDataTypeInstance( 'PriceMin'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setQuantity()

The Quantity value in a My eBay Favorite Search. The Quantity limits the search results to listings that offer a certain number of items matching the query. The Quantity field is used with QuantityOperator to specify that you are seeking listings with quantities greater than, equal to, or less than the value you specify in Quantity.

#    Argument: 'xs:int'

=cut

sub setQuantity {
  my $self = shift;
  $self->{'Quantity'} = shift
}

=head2 getQuantity()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:int'

=cut

sub getQuantity {
  my $self = shift;
  return $self->{'Quantity'};
}


=head2 setQuantityOperator()

The Quantity Operator value in a My eBay Favorite Search. The Quantity Operator limits the results to listings with quantities greater than, equal to, or less than the value you specify in Quantity.

#    Argument: 'ns:QuantityOperatorCodeType'

=cut

sub setQuantityOperator {
  my $self = shift;
  $self->{'QuantityOperator'} = shift
}

=head2 getQuantityOperator()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:QuantityOperatorCodeType'

=cut

sub getQuantityOperator {
  my $self = shift;
  return $self->{'QuantityOperator'};
}


=head2 setQueryKeywords()

The QueryKeywords of a My eBay Favorite Search. A search that uses
QueryKeywords is a query that specifies a string for searching titles of items on eBay.<br /><br />
If you are using a URL, then to search for multiple words,
use "%20". For example, use Harry%20Potter to search for items
containing those words in any order.<br /><br />
You can incorporate wildcards into a multi-word search, as in the following: ap*%20ip*.<br /><br />
The words "and" and "or" are treated like any other word. Only use "and",
"or", or "the" if you are searching for listings containing these words.

#    Argument: 'xs:string'

=cut

sub setQueryKeywords {
  my $self = shift;
  $self->{'QueryKeywords'} = shift
}

=head2 getQueryKeywords()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:string'

=cut

sub getQueryKeywords {
  my $self = shift;
  return $self->{'QueryKeywords'};
}


=head2 setSearchFlag()

The SearchFlag value in a My eBay Favorite Search. The SearchFlag allows you to specify whether you want to include charity listings, free-shipping listings, and listings with other features in your search.

#    Argument: reference to an array  
                      of 'ns:SearchFlagCodeType'

=cut

sub setSearchFlag {
  my $self = shift;
  $self->{'SearchFlag'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getSearchFlag()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  AllValuesExcept: DigitalDelivery
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: reference to an array  
                      of 'ns:SearchFlagCodeType'

=cut

sub getSearchFlag {
  my $self = shift;
  return $self->_getDataTypeArray('SearchFlag');
}


=head2 setSearchName()

The name of a My eBay Favorite Search.

#    Argument: 'xs:string'

=cut

sub setSearchName {
  my $self = shift;
  $self->{'SearchName'} = shift
}

=head2 getSearchName()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:string'

=cut

sub getSearchName {
  my $self = shift;
  return $self->{'SearchName'};
}


=head2 setSearchQuery()

The query string of a My eBay Favorite Search. You can paste this value, that is returned as a URL, into a browser to re-play the Favorite Search using the Trading Web Service.

#    Argument: 'xs:string'

=cut

sub setSearchQuery {
  my $self = shift;
  $self->{'SearchQuery'} = shift
}

=head2 getSearchQuery()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:string'

=cut

sub getSearchQuery {
  my $self = shift;
  return $self->{'SearchQuery'};
}


=head2 setSellerBusinessType()

The SellerBusinessType value in a My eBay Favorite Search. The SellerBusinessType limits the search results to those of a particular seller business type such as commercial or private. SellerBusinessType is only available for sites that have business seller features enabled.

#    Argument: 'ns:SellerBusinessCodeType'

=cut

sub setSellerBusinessType {
  my $self = shift;
  $self->{'SellerBusinessType'} = shift
}

=head2 getSellerBusinessType()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:SellerBusinessCodeType'

=cut

sub getSellerBusinessType {
  my $self = shift;
  return $self->{'SellerBusinessType'};
}


=head2 setSellerID()

The SellerID value in a My eBay Favorite Search. The SellerID is the eBay ID of a specific seller.

#    Argument: reference to an array  
                      of 'xs:string'

=cut

sub setSellerID {
  my $self = shift;
  $self->{'SellerID'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getSellerID()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: reference to an array  
                      of 'xs:string'

=cut

sub getSellerID {
  my $self = shift;
  return $self->_getDataTypeArray('SellerID');
}


=head2 setSellerIDExclude()

The SellerIDExclude value in a My eBay Favorite Search. The SellerIDExclude limits the search results to exclude items sold by a specific seller or by specific sellers.

#    Argument: reference to an array  
                      of 'xs:string'

=cut

sub setSellerIDExclude {
  my $self = shift;
  $self->{'SellerIDExclude'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getSellerIDExclude()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: reference to an array  
                      of 'xs:string'

=cut

sub getSellerIDExclude {
  my $self = shift;
  return $self->_getDataTypeArray('SellerIDExclude');
}


=head2 setSortOrder()

The SortOrder of a My eBay Favorite Search. This value specifies whether
you want to sort search results in ascending or descending order, in conjunction with the value you specify in ItemSort.

#    Argument: 'ns:SortOrderCodeType'

=cut

sub setSortOrder {
  my $self = shift;
  $self->{'SortOrder'} = shift
}

=head2 getSortOrder()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:SortOrderCodeType'

=cut

sub getSortOrder {
  my $self = shift;
  return $self->{'SortOrder'};
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
