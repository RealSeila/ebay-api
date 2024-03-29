#!/usr/bin/perl

package eBay::API::XML::DataType::ProductSearchType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ProductSearchType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ProductSearchType

=head1 DESCRIPTION

Container for a product query and pagination instructions.
This data is applicable when searching eBay catalogs for stock product
information (to use in listings with Pre-filled Item Information.)
Input only.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ProductSearchType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::CharacteristicSetIDsType;
use eBay::API::XML::DataType::ExternalProductIDType;
use eBay::API::XML::DataType::PaginationType;
use eBay::API::XML::DataType::SearchAttributesType;


my @gaProperties = ( [ 'AttributeSetID', 'xs:int', '', '', '' ]
	, [ 'AvailableItemsOnly', 'xs:boolean', '', '', '' ]
	, [ 'CharacteristicSetIDs', 'ns:CharacteristicSetIDsType', ''
	     ,'eBay::API::XML::DataType::CharacteristicSetIDsType', '1' ]
	, [ 'ExternalProductID', 'ns:ExternalProductIDType', ''
	     ,'eBay::API::XML::DataType::ExternalProductIDType', '1' ]
	, [ 'MaxChildrenPerFamily', 'xs:int', '', '', '' ]
	, [ 'Pagination', 'ns:PaginationType', ''
	     ,'eBay::API::XML::DataType::PaginationType', '1' ]
	, [ 'ProductFinderID', 'xs:int', '', '', '' ]
	, [ 'ProductID', 'xs:string', '', '', '' ]
	, [ 'ProductReferenceID', 'xs:string', '', '', '' ]
	, [ 'ProductSearchID', 'xs:string', '', '', '' ]
	, [ 'QueryKeywords', 'xs:string', '', '', '' ]
	, [ 'SearchAttributes', 'ns:SearchAttributesType', '1'
	     ,'eBay::API::XML::DataType::SearchAttributesType', '1' ]
	, [ 'SortAttributeID', 'xs:int', '', '', '' ]
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



=head2 setAttributeSetID()

<b>For GetProductFinder and GetProductSearchResults
only:</b> Identifier for a characteristic set
(an attribute set) that is mapped to
a catalog-enabled category (unique across all eBay sites).
Required when you use SearchAttributes
(for searches based on product search page and product finder data).
Returns an error with QueryKeywords (use CharacteristicSetIDs instead).
Use GetProductSearchPage or GetProductFinder to determine valid IDs for the
type of search you are performing.
<br>
<br>
<b>For GetProducts only:</b>
This field is not applicable to GetProducts. However, if you are using
a SOAP toolkit and you get an error indicating that this field is
required for GetProducts, you can specify this field with any integer
value. It will be ignored by eBay.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AttrPSPSearch
Title: Searching with a Single-Attribute Search Page
, URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AttrPFSearch
Title: Searching with a Sell-Side Product Finder


  Calls: GetProductFamilyMembers
         GetProductSearchResults
  RequiredInput: Conditionally

#    Argument: 'xs:int'

=cut

sub setAttributeSetID {
  my $self = shift;
  $self->{'AttributeSetID'} = shift
}

=head2 getAttributeSetID()

#    Returns: 'xs:int'

=cut

sub getAttributeSetID {
  my $self = shift;
  return $self->{'AttributeSetID'};
}


=head2 setAvailableItemsOnly()

If true, only retrieve products that have been used to pre-fill
active listings on the specified eBay site.
If false, retrieve all products that match the query.
<b>For GetProducts</b> This is useful when you use
QueryKeywords and you only want to find products that have items
(that is, where ItemArray is not empty).<br>
<br>
<b>For GetProductSearchResults:</b> Ths can be useful when
you want to find products that other sellers have recently used to
pre-fill similar listings.

  Calls: GetProductSearchResults
         GetProducts
  RequiredInput: No
  Default: false

#    Argument: 'xs:boolean'

=cut

sub setAvailableItemsOnly {
  my $self = shift;
  $self->{'AvailableItemsOnly'} = shift
}

=head2 isAvailableItemsOnly()

#    Returns: 'xs:boolean'

=cut

sub isAvailableItemsOnly {
  my $self = shift;
  return $self->{'AvailableItemsOnly'};
}


=head2 setCharacteristicSetIDs()

List of one or more IDs that indicate which domain
(characteristic set) to search in. If not specified, the search is
conducted across all domains (characteristic sets).<br>
<br>
<b>For GetProducts</b> Only useful when QueryKeywords
is specified. If you use this with ProductReferenceID or
ExternalProductID, AND logic is applied. In this case, if you specify an ID that doesn't match the product, no matching product will be found. Therefore, we recommend that you only use this with QueryKeywords.<br>
<br>
<b>For GetProductSearchResults:</b> Only applicable when QueryKeywords is specified. Ignored when SearchAttributes is specified.

  Calls: GetProductSearchResults
         GetProducts
  RequiredInput: No

#    Argument: 'ns:CharacteristicSetIDsType'

=cut

sub setCharacteristicSetIDs {
  my $self = shift;
  $self->{'CharacteristicSetIDs'} = shift
}

=head2 getCharacteristicSetIDs()

#    Returns: 'ns:CharacteristicSetIDsType'

=cut

sub getCharacteristicSetIDs {
  my $self = shift;
  return $self->_getDataTypeInstance( 'CharacteristicSetIDs'
		,'eBay::API::XML::DataType::CharacteristicSetIDsType');
}


=head2 setExternalProductID()

A query that only retrieves items that were listed with stock products
that have ISBN or UPC values (such as books, DVDs, CDs, and video game
products).
Use this query to retrieve basic details about one catalog product
(or a very limited number of products). The results can optionally
include items, reviews, and/or buying guides that match that product.
(Specifically, the items returned are items that sellers listed with the
specified product's stock information.)<br>
<br>
If you have gotten the ISBN or UPC from another Web site or resource,
you can use that ID. Otherwise, call GetProducts with
QueryKeywords (or ProductReferenceID). Any matching products that
include ISBN or UPC values will return those values in
Product.ExternalProductID.<br>
<br>
The request requires either QueryKeywords, ProductReferenceID,
or ExternalProductID, but these fields cannot be used together.

  Calls: GetProducts
  RequiredInput: Conditionally

#    Argument: 'ns:ExternalProductIDType'

=cut

sub setExternalProductID {
  my $self = shift;
  $self->{'ExternalProductID'} = shift
}

=head2 getExternalProductID()

#    Returns: 'ns:ExternalProductIDType'

=cut

sub getExternalProductID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ExternalProductID'
		,'eBay::API::XML::DataType::ExternalProductIDType');
}


=head2 setMaxChildrenPerFamily()

Pagination instruction that specifies the maximum quantity of products to return for each
product family within the search response whose ID matches the current request's ID.
In the response, if the last family returned contains MaxChildrenPerFamily or fewer
additional products, those additional products are also returned (i.e., the actual quantity
returned for the last family can exceed the specified maximum value).
See "Limit the Quantity of Products Returned Per Family" in the eBay Web Services Guide.
The value should not include punctuation (i.e., a thousands separator is not valid).

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=MaxChildrenPerFamily
Title: Step2:Limit the Quantity of Products Returned Per Family

  Calls: GetProductSearchResults
  RequiredInput: Conditionally
  Default: 5
  Max: 20000
  Min: 1

#    Argument: 'xs:int'

=cut

sub setMaxChildrenPerFamily {
  my $self = shift;
  $self->{'MaxChildrenPerFamily'} = shift
}

=head2 getMaxChildrenPerFamily()

#    Returns: 'xs:int'

=cut

sub getMaxChildrenPerFamily {
  my $self = shift;
  return $self->{'MaxChildrenPerFamily'};
}


=head2 setPagination()

Pagination instruction that specifies the virtual page of data to return
per search request.
For GetProducts, this is primarily useful when you use QueryKeywords.
When you use ExternalProductID or ProductReferenceID, only one page of
data is typically returned.

  Calls: GetProductFamilyMembers
         GetProductSearchResults
         GetProducts
  RequiredInput: No
  SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AttrPagination, Title: Step4:Specify Pagination Properties

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


=head2 setProductFinderID()

Required when you are performing a sell-side product finder search.
(Not applicable to product search page searches.)
Numeric identifier for a sell-side product finder that was used to retrieve
the search attributes being used in the request. The product finder must be
mapped to a catalog-enabled category (i.e., it cannot be a buy-side product finder ID)
associated with the characteristics set.
Use a product finder when you want to specify multiple attributes in a
product search query. Call GetCategory2CS to determine which categories
support sell-side product finder searches.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AttrPFSearch
Title: Searching with a Sell-Side Product Finder

  Calls: GetProductSearchResults
  RequiredInput: Conditionally

#    Argument: 'xs:int'

=cut

sub setProductFinderID {
  my $self = shift;
  $self->{'ProductFinderID'} = shift
}

=head2 getProductFinderID()

#    Returns: 'xs:int'

=cut

sub getProductFinderID {
  my $self = shift;
  return $self->{'ProductFinderID'};
}


=head2 setProductID()

Identifier for a representative stock product in a product family.
Used as input in GetProductFamilyMembers requests to identify a product family.
Use GetProductSearchResults to determine the available IDs.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AttrGPFM
Title: Retrieving All Members of a Product Family
MaxLength: 4000

  Calls: GetProductFamilyMembers
  RequiredInput: Yes

#    Argument: 'xs:string'

=cut

sub setProductID {
  my $self = shift;
  $self->{'ProductID'} = shift
}

=head2 getProductID()

#    Returns: 'xs:string'

=cut

sub getProductID {
  my $self = shift;
  return $self->{'ProductID'};
}


=head2 setProductReferenceID()

The global reference ID for an eBay catalog product.
Use this query to retrieve basic details about one catalog product.
The results can optionally include items, reviews, and/or buying guides
that match that product.
(Specifically, the items returned are items that sellers listed with the
specified product's stock information.)<br>
<br>
To determine valid reference IDs, call GetProducts with QueryKeywords
(or ExternalProductID). Each matching product returns a reference ID in
Product.ProductReferenceID.<br>
<br>
<span class="tablenote"><b>Note:</b>
This value is not the same as the ProductID used in AddItem and related
calls. A ProductID represents a particular version
of a catalog product. (A given version could have an older or newer
description, set of Item Specifics, or other details.)
A ProductReferenceID is a more generic or global reference to a product
(regardless of version), which is useful for buy-side searching.
One product reference ID can be associated with multiple
product IDs.</span><br>
<br>
As of mid-2008, some sites (such as eBay US, Germany, Austria, and Switzerland) are 
updating, replacing, deleting, or merging some products (as a result of migrating from one
catalog data provider to another). 
If you specify one of these products, the call may return a warning, 
or it may return an error if the product has been deleted.<br>
<br>
The request requires either QueryKeywords, ProductReferenceID,
or ExternalProductID, but these fields cannot be used together.

  Calls: GetProducts
  RequiredInput: Conditionally

#    Argument: 'xs:string'

=cut

sub setProductReferenceID {
  my $self = shift;
  $self->{'ProductReferenceID'} = shift
}

=head2 getProductReferenceID()

#    Returns: 'xs:string'

=cut

sub getProductReferenceID {
  my $self = shift;
  return $self->{'ProductReferenceID'};
}


=head2 setProductSearchID()

Unique alphanumeric key help you distinguish between query results in the response.
You define the key. Each search request ID must be unique within the same call.
Primarily useful when conducting multiple searches in the same call.
If not specified, the ProductSearchResult.ID values in the response are
indexed starting from 0 (zero).

  Calls: GetProductFamilyMembers
         GetProductSearchResults
  RequiredInput: No

#    Argument: 'xs:string'

=cut

sub setProductSearchID {
  my $self = shift;
  $self->{'ProductSearchID'} = shift
}

=head2 getProductSearchID()

#    Returns: 'xs:string'

=cut

sub getProductSearchID {
  my $self = shift;
  return $self->{'ProductSearchID'};
}


=head2 setQueryKeywords()

One or more keywords to search for. The words "and" and "or" are
treated like any other word. Only use "and", "or", or "the" if you are
searching for products containing these words. To use AND or OR logic,
use eBay's standard search string modifiers.
Wildcards (+, -, or *) are also supported. Be careful when using spaces
before or after modifiers and wildcards.<br>
<br>
<b>For GetProducts</b>
When you use a keyword search, eBay searches the product database for
matching words in the product title, description, and/or Item Specifics,
and it returns a list of matching products (with no items, reviews,
or guides). (To retrieve items, reviews, and/or guides for a particular
product, use ProductReferenceID instead.) If specified,
you must pass in at least 3 alphanumeric characters. Some keyword queries can result in response times of 30 seconds or longer.
If more than 2000 matches are found, the call fails with an error.
If this kind of error occurs, refine the search by passing in more
keywords and/or by using CharacteristicSetIDs to restrict the search to
certain domains (such as DVDs). If you are searching for a particular
book, DVD, CD, or video game and you already know its ISBN (for a book)
or UPC, consider using ExternalProductID instead to retrieve more
precise results. The request requires either QueryKeywords,
ProductReferenceID, or ExternalProductID, but these fields cannot be used together.<br>
<br>
<b>For GetProductSearchResults:</b>
eBay searches only in the characteristic set specified in
CharacteristicSetIDs. Both the product title and Item Specifics
are searched. For each ProductSearch, either SearchAttributes or
QueryKeywords is required (but do not pass both). Blank searches are not applicable (and result in a warning).
If your search is using a Keyword attribute returned by GetProductSearchPage,
use SearchAttributes instead.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AttrQKWSearch
Title: Searching with Plain-Text Keywords
MaxLength: 350

  Calls: GetProductSearchResults
         GetProducts
  RequiredInput: Conditionally

#    Argument: 'xs:string'

=cut

sub setQueryKeywords {
  my $self = shift;
  $self->{'QueryKeywords'} = shift
}

=head2 getQueryKeywords()

#    Returns: 'xs:string'

=cut

sub getQueryKeywords {
  my $self = shift;
  return $self->{'QueryKeywords'};
}


=head2 setSearchAttributes()

A predefined attribute against which to search (e.g., Author).
Use this to create a query based on a set of Item Specifics from the catalog.
Both the product title and product Item Specifics are searched.
If the query includes multiple SearchAttributes fields (one for each attribute),
the search engine will apply "AND" logic to the query.
Call GetProductSearchPage or GetProductFinder to determine the list of valid attributes and how many are
permitted for the specified characteristic set. See the eBay Web Services guide for details.
For each ProductSearch, either SearchAttributes or QueryKeywords is required (but do not pass both).

  Calls: GetProductSearchResults
  RequiredInput: Conditionally

#    Argument: reference to an array  
                      of 'ns:SearchAttributesType'

=cut

sub setSearchAttributes {
  my $self = shift;
  $self->{'SearchAttributes'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getSearchAttributes()

#    Returns: reference to an array  
                      of 'ns:SearchAttributesType'

=cut

sub getSearchAttributes {
  my $self = shift;
  return $self->_getDataTypeArray('SearchAttributes');
}


=head2 setSortAttributeID()

Unique identifier for a sortable attribute. Use GetProductSearchPage
or GetProductFinder to determine the valid sort attribute IDs for the
specified characteristic set (including the default sort attribute that will be
used if you do not specify this field).

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=SortAttributeID
Title: Step3:Specify the Product Sort Criteria

  Calls: GetProductFamilyMembers
         GetProductSearchResults
  RequiredInput: No

#    Argument: 'xs:int'

=cut

sub setSortAttributeID {
  my $self = shift;
  $self->{'SortAttributeID'} = shift
}

=head2 getSortAttributeID()

#    Returns: 'xs:int'

=cut

sub getSortAttributeID {
  my $self = shift;
  return $self->{'SortAttributeID'};
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
