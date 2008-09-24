#!/usr/bin/perl

package eBay::API::XML::Call::GetCategories;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetCategories.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetCategories

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetCategories inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetCategories::GetCategoriesRequestType;
use eBay::API::XML::Call::GetCategories::GetCategoriesResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetCategories';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetCategories::GetCategoriesRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetCategories::GetCategoriesResponseType';
}

#
# input properties
#

=head2 setCategoryParent()

Specifies the ID of the highest-level category to return,
along with its subcategories.
If no parent category is specified, all categories are
returned for the specified site. (Please do not pass a value of 0; zero (0) is an invalid value for CategoryParent.)
To determine available category IDs, call GetCategories with
no filters and use a DetailLevel value of ReturnAll.
If you specify multiple parent categories, the hierarchy for
each one is returned.

  RequiredInput: No
  Default: 
#    Argument: reference to an array  
                      of 'xs:string'

=cut
       
sub setCategoryParent {
   my $self   = shift;
   my $sCategoryParent = shift;
   $self->getRequestDataType()->setCategoryParent($sCategoryParent);
}

=head2 setCategorySiteID()

Specifies the eBay site for which to retrieve the category
hierarchy.
Use the numeric site code (e.g., 77 for eBay Germany).
Only necessary if you want to retrieve category data
for a site other than the site to which you are
submitting the request.

  RequiredInput: No
  Default: The site ID of the request
#    Argument: 'xs:string'

=cut
       
sub setCategorySiteID {
   my $self   = shift;
   my $sCategorySiteID = shift;
   $self->getRequestDataType()->setCategorySiteID($sCategorySiteID);
}

=head2 setLevelLimit()

Specifies the maximum depth of the category hierarchy to retrieve,
where the top-level categories (meta-categories) are at level 1.
Retrieves all category nodes with a category level less than or
equal to this value.
If not specified, retrieves categories at all applicable levels.
As with all calls, the actual data returned will vary depending
on how you configure other fields in the request
(including DetailLevel).

  RequiredInput: No
  Default: 0
#    Argument: 'xs:int'

=cut
       
sub setLevelLimit {
   my $self   = shift;
   my $sLevelLimit = shift;
   $self->getRequestDataType()->setLevelLimit($sLevelLimit);
}

=head2 setViewAllNodes()

If false or omitted, retrieves only leaf categories.
(You can only list in leaf categories.)
If true, retrieves both leaf and internal (non-leaf) categories.
As with all calls, the actual data returned will vary depending
on how you configure other fields in the request.

  RequiredInput: No
  Default: false
#    Argument: 'xs:boolean'

=cut
       
sub setViewAllNodes {
   my $self   = shift;
   my $sViewAllNodes = shift;
   $self->getRequestDataType()->setViewAllNodes($sViewAllNodes);
}



#
# output properties
#

=head2 getCategoryArray()

List of the returned categories. The category array contains one CategoryType
object for each returned category. Returns empty if no detail level is specified.

  Returned: Always
  Details: DetailLevel: ReturnAll
#    Returns: 'ns:CategoryArrayType'

=cut
       
sub getCategoryArray {
   my $self = shift;
   return $self->getResponseDataType()->getCategoryArray();
}

=head2 getCategoryCount()

Indicates the number of categories returned (i.e., the number of CategoryType
objects in CategoryArray).

  Returned: Always
  Details: DetailLevel: ReturnAll
#    Returns: 'xs:int'

=cut
       
sub getCategoryCount {
   my $self = shift;
   return $self->getResponseDataType()->getCategoryCount();
}

=head2 getCategoryVersion()

Indicates the version of the category hierarchy on the
specified eBay site.

  Returned: Always
  Details: DetailLevel: ReturnAll, none
#    Returns: 'xs:string'

=cut
       
sub getCategoryVersion {
   my $self = shift;
   return $self->getResponseDataType()->getCategoryVersion();
}

=head2 getMinimumReservePrice()

Indicates the lowest possible reserve price allowed for any item
listed in any category on the site. You can use the fields returned by GetCategoryFeatures to determine if a different Minimum Reserve Price is defined for the category you want to use.

  Returned: Always
  Details: DetailLevel: ReturnAll, none
#    Returns: 'xs:double'

=cut
       
sub getMinimumReservePrice {
   my $self = shift;
   return $self->getResponseDataType()->getMinimumReservePrice();
}

=head2 isReduceReserveAllowed()

If true, ReduceReserveAllowed indicates that all categories on the
site allow the seller to reduce an item's reserve price.
If false, this field is not returned in the response and all categories on the site do not normally allow sellers to reduce an
item's reserve price.
The Category.ORRA (override reduce reserve price) field can override (or toggle)
the reserve price reduction setting for a given category.
For example, if ReduceReserveAllowed is false and Category.ORRA is true,
the category overrides the site setting and supports reducing reserve prices.
If ReduceReserveAllowed is true and Category.ORRA is true, the category
overrides the site setting and does does not support reducing reserve prices.

  Returned: Always
  Details: DetailLevel: ReturnAll, none
#    Returns: 'xs:boolean'

=cut
       
sub isReduceReserveAllowed {
   my $self = shift;
   return $self->getResponseDataType()->isReduceReserveAllowed();
}

=head2 isReservePriceAllowed()

If true, ReservePriceAllowed indicates that all categories on the
site allow the seller to specify a reserve price for an item.
If false, this field is not returned in the response and all categories on the site do not normally allow sellers to specify reserve prices.
The Category.ORPA (override reserve price allowed) field can override (or toggle)
the reserve price allowed setting for a given category.
For example, if ReservePriceAllowed is false and Category.ORPA is true,
the category overrides the site setting and supports reserve prices.
If ReservePriceAllowed is true and Category.ORPA is true, the category
overrides the site setting and does does not support reserve prices.

  Returned: Always
  Details: DetailLevel: ReturnAll, none
#    Returns: 'xs:boolean'

=cut
       
sub isReservePriceAllowed {
   my $self = shift;
   return $self->getResponseDataType()->isReservePriceAllowed();
}

=head2 getUpdateTime()

Indicates the last date and time that eBay modified the category hierarchy for the
specified eBay site.

  Returned: Always
  Details: DetailLevel: ReturnAll, none
#    Returns: 'xs:dateTime'

=cut
       
sub getUpdateTime {
   my $self = shift;
   return $self->getResponseDataType()->getUpdateTime();
}





1;   
