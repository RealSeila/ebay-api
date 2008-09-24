#!/usr/bin/perl

package eBay::API::XML::Call::GetProducts::GetProductsResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetProductsResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetProducts::GetProductsResponseType

=head1 DESCRIPTION

Returns stock product information in eBay catalogs, such as
information about a particular DVD or camera. Optionally,
also returns product reviews, buying guides, and items that
match the product.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetProducts::GetProductsResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::BuyingGuideDetailsType;
use eBay::API::XML::DataType::CatalogProductType;
use eBay::API::XML::DataType::CharacteristicsSetProductHistogramType;
use eBay::API::XML::DataType::ItemArrayType;


my @gaProperties = ( [ 'ApproximatePages', 'xs:int', '', '', '' ]
	, [ 'BuyingGuideDetails', 'ns:BuyingGuideDetailsType', ''
	     ,'eBay::API::XML::DataType::BuyingGuideDetailsType', '1' ]
	, [ 'CharacteristicsSetProductHistogram', 'ns:CharacteristicsSetProductHistogramType', ''
	     ,'eBay::API::XML::DataType::CharacteristicsSetProductHistogramType', '1' ]
	, [ 'DuplicateItems', 'xs:boolean', '', '', '' ]
	, [ 'HasMore', 'xs:boolean', '', '', '' ]
	, [ 'ItemArray', 'ns:ItemArrayType', ''
	     ,'eBay::API::XML::DataType::ItemArrayType', '1' ]
	, [ 'PageNumber', 'xs:int', '', '', '' ]
	, [ 'Product', 'ns:CatalogProductType', '1'
	     ,'eBay::API::XML::DataType::CatalogProductType', '1' ]
	, [ 'TotalProducts', 'xs:int', '', '', '' ]
                    );
push @gaProperties, @{eBay::API::XML::ResponseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::ResponseDataType::getAttributesList()};

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



=head2 setApproximatePages()

The total number of pages that can be returned, given the same query and
filters in the request. As GetProducts only returns up to 2000 products,
the maximum possible value is theoretically 2000 (if you were to set
EntriesPerPage to 1 in the request).

Max: 2000
Min: 1

#    Argument: 'xs:int'

=cut

sub setApproximatePages {
  my $self = shift;
  $self->{'ApproximatePages'} = shift
}

=head2 getApproximatePages()

  Returned: Always
#    Returns: 'xs:int'

=cut

sub getApproximatePages {
  my $self = shift;
  return $self->{'ApproximatePages'};
}


=head2 setBuyingGuideDetails()

Contains information for up to 5 buying guides that match the
query. Only returned when you set IncludeBuyingGuideDetails to
true. Buying guides provide useful information about shopping
in a particular domain, like Digital Cameras.
For example, a digital camera buying guide
could help a buyer determine what kind of digital camera
is right for them.
If no buying guides are associated with the product, this only
returns a link to the buying guide hub (the main Guides page).

#    Argument: 'ns:BuyingGuideDetailsType'

=cut

sub setBuyingGuideDetails {
  my $self = shift;
  $self->{'BuyingGuideDetails'} = shift
}

=head2 getBuyingGuideDetails()

  Returned: Conditionally
#    Returns: 'ns:BuyingGuideDetailsType'

=cut

sub getBuyingGuideDetails {
  my $self = shift;
  return $self->_getDataTypeInstance( 'BuyingGuideDetails'
		,'eBay::API::XML::DataType::BuyingGuideDetailsType');
}


=head2 setCharacteristicsSetProductHistogram()

A histogram that lists the number of matching products found
and the domains in which they were found.
A <i>domain</i> is essentially
a set of categories that share certain common features
(as determined by eBay). Each domain has its own name and ID.

#    Argument: 'ns:CharacteristicsSetProductHistogramType'

=cut

sub setCharacteristicsSetProductHistogram {
  my $self = shift;
  $self->{'CharacteristicsSetProductHistogram'} = shift
}

=head2 getCharacteristicsSetProductHistogram()

  Returned: Always
#    Returns: 'ns:CharacteristicsSetProductHistogramType'

=cut

sub getCharacteristicsSetProductHistogram {
  my $self = shift;
  return $self->_getDataTypeInstance( 'CharacteristicsSetProductHistogram'
		,'eBay::API::XML::DataType::CharacteristicsSetProductHistogramType');
}


=head2 setDuplicateItems()

Indicates whether there are duplicated items not returned by this 
response when HideDuplicateItems is true in the request.

#    Argument: 'xs:boolean'

=cut

sub setDuplicateItems {
  my $self = shift;
  $self->{'DuplicateItems'} = shift
}

=head2 isDuplicateItems()

  Returned: Conditionally
#    Returns: 'xs:boolean'

=cut

sub isDuplicateItems {
  my $self = shift;
  return $self->{'DuplicateItems'};
}


=head2 setHasMore()

If true, more pages of results are available.
That is, PageNumber is less than ApproximatePages.

#    Argument: 'xs:boolean'

=cut

sub setHasMore {
  my $self = shift;
  $self->{'HasMore'} = shift
}

=head2 isHasMore()

  Returned: Always
#    Returns: 'xs:boolean'

=cut

sub isHasMore {
  my $self = shift;
  return $self->{'HasMore'};
}


=head2 setItemArray()

A list of items (if any) that match the product identified in
ExternalProductID or ProductReferenceID in the request.
Only returned when you set IncludeItemArray to true.
The items are sorted by end time (ending soonest), and this order
is not configurable in the request.
Up to 200 items can be returned. All items are returned on
the first page (page 1). Not returned when you use
QueryKeywords.<br>
<br>
If ItemCount is greater than 200, use GetSearchResults if you
want to retrieve more matching items.<br>
<br>
<span class="tablenote"><b>Note:</b>
GetSearchResults doesn't currently support ProductReferenceID
queries. So, you can use ExternalProductID (if present) as input
to GetSearchResults. Otherwise, see Product.DetailsURL for
a workaround to determine a ProductID value to use with
GetSearchResults.</span>

#    Argument: 'ns:ItemArrayType'

=cut

sub setItemArray {
  my $self = shift;
  $self->{'ItemArray'} = shift
}

=head2 getItemArray()

  Returned: Conditionally
#    Returns: 'ns:ItemArrayType'

=cut

sub getItemArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemArray'
		,'eBay::API::XML::DataType::ItemArrayType');
}


=head2 setPageNumber()

The number of the page of data returned. If many products
are found and multiple pages of results are available, use
this in combination with ApproximatePages and HasMore to decide
which page to retrieve next. As GetProducts only returns
up to 2000 products, the maximum possible value is theoretically
2000 (if you were to set EntriesPerPage to 1 in the request).

Max: 2000
Min: 1

#    Argument: 'xs:int'

=cut

sub setPageNumber {
  my $self = shift;
  $self->{'PageNumber'} = shift
}

=head2 getPageNumber()

  Returned: Always
#    Returns: 'xs:int'

=cut

sub getPageNumber {
  my $self = shift;
  return $self->{'PageNumber'};
}


=head2 setProduct()

An eBay catalog product. This contains stock information about a
particular DVD, camera, set of golf clubs, or other product.
When you use QueryKeywords in the request, GetProducts returns a
maximum of 20 products per page.
When you use ExternalProductID or ProductReferenceID in the
request, GetProducts usually only returns 1 product.
(If more than one product matches the same ExternalProductID,
GetProducts will return all of those products. As of the time
of this writing, we expect this to be a rare case.)

MaxOccurs: 20

#    Argument: reference to an array  
                      of 'ns:CatalogProductType'

=cut

sub setProduct {
  my $self = shift;
  $self->{'Product'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getProduct()

  Returned: Always
#    Returns: reference to an array  
                      of 'ns:CatalogProductType'

=cut

sub getProduct {
  my $self = shift;
  return $self->_getDataTypeArray('Product');
}


=head2 setTotalProducts()

The total number of matching products found.
(If more than 2000 products are found, the call fails
with an error.)

Max: 2000
Min: 0

#    Argument: 'xs:int'

=cut

sub setTotalProducts {
  my $self = shift;
  $self->{'TotalProducts'} = shift
}

=head2 getTotalProducts()

  Returned: Always
#    Returns: 'xs:int'

=cut

sub getTotalProducts {
  my $self = shift;
  return $self->{'TotalProducts'};
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