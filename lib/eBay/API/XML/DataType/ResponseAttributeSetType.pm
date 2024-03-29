#!/usr/bin/perl

package eBay::API::XML::DataType::ResponseAttributeSetType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ResponseAttributeSetType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ResponseAttributeSetType

=head1 DESCRIPTION

A single set of one or more product families and related information
returned in the results of a product search. Supports Pre-filled Item Information
functionality. See the Developer's Guide for more information about
working with this data.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ResponseAttributeSetType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::ProductFamilyType;
use eBay::API::XML::DataType::ProductFinderConstraintType;


my @gaProperties = ( [ 'ApproximatePages', 'xs:int', '', '', '' ]
	, [ 'AttributeSetID', 'xs:int', '', '', '' ]
	, [ 'HasMore', 'xs:boolean', '', '', '' ]
	, [ 'ProductFamilies', 'ns:ProductFamilyType', '1'
	     ,'eBay::API::XML::DataType::ProductFamilyType', '1' ]
	, [ 'ProductFinderConstraints', 'ns:ProductFinderConstraintType', '1'
	     ,'eBay::API::XML::DataType::ProductFinderConstraintType', '1' ]
	, [ 'TooManyMatchesFound', 'xs:boolean', '', '', '' ]
	, [ 'TotalProducts', 'xs:int', '', '', '' ]
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



=head2 setApproximatePages()

As calculating the potentially large number of pages can affect this call's
performance, and since the actual number of products returned per page can
vary in each response, we cannot provide a precise total page count.
Therefore, this is an estimated page count based on TotalProducts and other
factors, such as the number of records eBay's search engine has examined so
far in the product database. Once PageNumber approaches or exceeds this
page count, we examine more records in the database and we may recalculate
this value. If you estimate the number of pages yourself by using
TotalProducts, EntriesPerPage, and MaxChildrenPerFamily (which is also an
approximate value), your result will not necessarily match
ApproximatePages.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AttrPagination
Title: Step4:Specify Pagination Properties

#    Argument: 'xs:int'

=cut

sub setApproximatePages {
  my $self = shift;
  $self->{'ApproximatePages'} = shift
}

=head2 getApproximatePages()

  Calls: GetProductFamilyMembers
         GetProductSearchResults
  Returned: Always
  Max: 
  Min: 1

#    Returns: 'xs:int'

=cut

sub getApproximatePages {
  my $self = shift;
  return $self->{'ApproximatePages'};
}


=head2 setAttributeSetID()

Numeric value that identifies the attribute set in a language-independent way.
Unique across all eBay sites. Corresponds to a characteristic set associated
with the current set of search results.
Always returned when AttributeSet is returned.

#    Argument: 'xs:int'

=cut

sub setAttributeSetID {
  my $self = shift;
  $self->{'AttributeSetID'} = shift
}

=head2 getAttributeSetID()

  Calls: GetProductFamilyMembers
         GetProductSearchResults
  Returned: Always

#    Returns: 'xs:int'

=cut

sub getAttributeSetID {
  my $self = shift;
  return $self->{'AttributeSetID'};
}


=head2 setHasMore()

If true, the query results contain additional pages (higher than the current
page number). You can retrieve more results by incrementing the PageNumber
value that was passed in the request.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AttrGPSRHasMore
Title: Step6:Retrieve More Pages (If Necessary)

#    Argument: 'xs:boolean'

=cut

sub setHasMore {
  my $self = shift;
  $self->{'HasMore'} = shift
}

=head2 isHasMore()

  Calls: GetProductFamilyMembers
         GetProductSearchResults
  Returned: Always

#    Returns: 'xs:boolean'

=cut

sub isHasMore {
  my $self = shift;
  return $self->{'HasMore'};
}


=head2 setProductFamilies()

ProductFamilies represents one product family. Multiple ProductFamilies
properties can be returned. A product family identifies a group of related
products. For example, the movie "My Favorite Movie: The Sequel" might be
released on DVD, but there might be several editions of the DVD (e.g., in
different languages) with different ISBN numbers. All variations are part of
the same product family ("My Favorite Movie: The Sequel" in the DVD format).
See "Limit the Quantity of Products Returned Per Family" in the eBay Web
Services Guide. Always returned when AttributeSet is returned.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=MaxChildrenPerFamily
Title: Step2:Limit the Quantity of Products Returned Per Family

#    Argument: reference to an array  
                      of 'ns:ProductFamilyType'

=cut

sub setProductFamilies {
  my $self = shift;
  $self->{'ProductFamilies'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getProductFamilies()

  Calls: GetProductFamilyMembers
         GetProductSearchResults
  Returned: Always

#    Returns: reference to an array  
                      of 'ns:ProductFamilyType'

=cut

sub getProductFamilies {
  my $self = shift;
  return $self->_getDataTypeArray('ProductFamilies');
}


=head2 setProductFinderConstraints()

A list of attributes (constraints) that were specified in the search request.
This information is useful when multiple queries were specified in a
GetProductSearchResults request. Use this information to map each query to
each result in the response object. Applicable when the search request was
constructed based on a product finder.

#    Argument: reference to an array  
                      of 'ns:ProductFinderConstraintType'

=cut

sub setProductFinderConstraints {
  my $self = shift;
  $self->{'ProductFinderConstraints'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getProductFinderConstraints()

  Calls: GetProductSearchResults
  Returned: Conditionally

#    Returns: reference to an array  
                      of 'ns:ProductFinderConstraintType'

=cut

sub getProductFinderConstraints {
  my $self = shift;
  return $self->_getDataTypeArray('ProductFinderConstraints');
}


=head2 setTooManyMatchesFound()

If too many search results match the query, the TooManyMatchesFound tag is
returned with a value of true, and a warning is returned. If this occurs, it
may be a good idea to ask the user to specify more details to narrow the
search (e.g., specify "My Favorite Movie" instead of "My").
Always returns false for GetProductFamilyMembers.

#    Argument: 'xs:boolean'

=cut

sub setTooManyMatchesFound {
  my $self = shift;
  $self->{'TooManyMatchesFound'} = shift
}

=head2 isTooManyMatchesFound()

  Calls: GetProductFamilyMembers
         GetProductSearchResults
  Returned: Always

#    Returns: 'xs:boolean'

=cut

sub isTooManyMatchesFound {
  my $self = shift;
  return $self->{'TooManyMatchesFound'};
}


=head2 setTotalProducts()

The total quantity of products that match the query (within
the characteristic set). This can exceed the actual number of products
returned in the current virtual page. Always returned when AttributeSet is
returned.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AttrGPSRHasMore
Title: Step6:Retrieve More Pages (If Necessary)

#    Argument: 'xs:int'

=cut

sub setTotalProducts {
  my $self = shift;
  $self->{'TotalProducts'} = shift
}

=head2 getTotalProducts()

  Calls: GetProductFamilyMembers
         GetProductSearchResults
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
