#!/usr/bin/perl

package eBay::API::XML::Call::GetSellerList;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetSellerList.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetSellerList

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetSellerList inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetSellerList::GetSellerListRequestType;
use eBay::API::XML::Call::GetSellerList::GetSellerListResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetSellerList';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetSellerList::GetSellerListRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetSellerList::GetSellerListResponseType';
}

#
# input properties
#

=head2 setAdminEndedItemsOnly()

Specifies whether to return only items that were administratively ended 
based on a policy violation.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setAdminEndedItemsOnly {
   my $self   = shift;
   my $sAdminEndedItemsOnly = shift;
   $self->getRequestDataType()->setAdminEndedItemsOnly($sAdminEndedItemsOnly);
}

=head2 setCategoryID()

The category ID for the items retrieved. 
If you specify CategoryID in a GetSellerList call, 
the response contains only items in the category you specify.

  RequiredInput: No
#    Argument: 'xs:int'

=cut
       
sub setCategoryID {
   my $self   = shift;
   my $sCategoryID = shift;
   $self->getRequestDataType()->setCategoryID($sCategoryID);
}

=head2 setEndTimeFrom()

Specifies the earliest (oldest) date to use in a date range filter based on item end time.
Specify either the end-time range or the start-time range filter in every request. Each of the
time ranges must be a value less than 120 days.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut
       
sub setEndTimeFrom {
   my $self   = shift;
   my $sEndTimeFrom = shift;
   $self->getRequestDataType()->setEndTimeFrom($sEndTimeFrom);
}

=head2 setEndTimeTo()

Specifies the latest (most recent) date to use in a date range filter based on item end time.
Must be specified if EndTimeFrom is specified.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut
       
sub setEndTimeTo {
   my $self   = shift;
   my $sEndTimeTo = shift;
   $self->getRequestDataType()->setEndTimeTo($sEndTimeTo);
}

=head2 setGranularityLevel()

Specifies the subset of item and user fields to return.
See GetSellerList in the eBay Web Services guide for a list
of the fields that are returned for each granularity level.
For GetSellerList, use DetailLevel or GranularityLevel in a request, but not both.
For GetSellerList, if GranularityLevel is specified, DetailLevel is ignored.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=GetSellerList_BP
Title: GetSellerList Best Practices
PresentDetails: Yes

  RequiredInput: No
#    Argument: 'ns:GranularityLevelCodeType'

=cut
       
sub setGranularityLevel {
   my $self   = shift;
   my $sGranularityLevel = shift;
   $self->getRequestDataType()->setGranularityLevel($sGranularityLevel);
}

=head2 setIncludeWatchCount()

Specifies whether to include WatchCount in Item nodes returned.
WatchCount is only returned with DetailLevel ReturnAll.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setIncludeWatchCount {
   my $self   = shift;
   my $sIncludeWatchCount = shift;
   $self->getRequestDataType()->setIncludeWatchCount($sIncludeWatchCount);
}

=head2 setMotorsDealerUsers()

Specifies the list of Motors Dealer sellers for which a special set of
metrics can be requested. Applies to eBay Motors Pro applications only.

  RequiredInput: No
#    Argument: 'ns:UserIDArrayType'

=cut
       
sub setMotorsDealerUsers {
   my $self   = shift;
   my $pMotorsDealerUsers = shift;
   $self->getRequestDataType()->setMotorsDealerUsers($pMotorsDealerUsers);
}

=head2 setPagination()

Contains the data controlling the pagination of the returned values: how many items
are returned per page of data (per call) and the number of the page to return with
the current call.

  RequiredInput: Yes
#    Argument: 'ns:PaginationType'

=cut
       
sub setPagination {
   my $self   = shift;
   my $pPagination = shift;
   $self->getRequestDataType()->setPagination($pPagination);
}

=head2 setSKUArray()

Specifies a set of seller SKUs to use as a filter. Only items with the specified SKUs are
returned. Do not specify this tag if you do not want to filter by SKU. Corresponds to the SKU property
that is part of ItemType and that can be provided when, for example, you use the AddItem call.

  RequiredInput: No
#    Argument: 'ns:SKUArrayType'

=cut
       
sub setSKUArray {
   my $self   = shift;
   my $pSKUArray = shift;
   $self->getRequestDataType()->setSKUArray($pSKUArray);
}

=head2 setSort()

Specifies the order in which returned items are sorted (based on the end dates of the
item listings). Valid values:<br>
0 = No sorting<br>
1 = Sort in descending order<br>
2 = Sort in ascending order<br>

  RequiredInput: No
#    Argument: 'xs:int'

=cut
       
sub setSort {
   my $self   = shift;
   my $sSort = shift;
   $self->getRequestDataType()->setSort($sSort);
}

=head2 setStartTimeFrom()

Specifies the earliest (oldest) date to use in a date range filter based on item
start time. Specify either the end time range or start time range filter in every request.
Each of the time ranges must be a value less than 120 days.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut
       
sub setStartTimeFrom {
   my $self   = shift;
   my $sStartTimeFrom = shift;
   $self->getRequestDataType()->setStartTimeFrom($sStartTimeFrom);
}

=head2 setStartTimeTo()

Specifies the latest (most recent) date to use in a date range filter based on item
start time. Must be specified if StartTimeFrom is specified.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut
       
sub setStartTimeTo {
   my $self   = shift;
   my $sStartTimeTo = shift;
   $self->getRequestDataType()->setStartTimeTo($sStartTimeTo);
}

=head2 setUserID()

Specifies the seller whose items will be returned. UserID is an optional input.
If not specified, retrieves events for the user identified by
the authentication token passed in the request. Note that since user information is anonymous to everyone except the bidder and the seller (during an active auction), only sellers looking for information about
their own listings and bidders who know the user IDs of their sellers
will be able to make this API call successfully. See <a href="http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AnonymousUserInfo">Working with Anonymous User Information</a>in the eBay Web Services Guide for more information.

  RequiredInput: No
#    Argument: 'ns:UserIDType'

=cut
       
sub setUserID {
   my $self   = shift;
   my $pUserID = shift;
   $self->getRequestDataType()->setUserID($pUserID);
}



#
# output properties
#

=head2 isHasMoreItems()

If true, there are more items yet to be retrieved. Additional
GetSellerList calls with higher page numbers or more items per page must
be made to retrieve these items. Not returned if no items match the
request.

  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll
#    Returns: 'xs:boolean'

=cut
       
sub isHasMoreItems {
   my $self = shift;
   return $self->getResponseDataType()->isHasMoreItems();
}

=head2 getItemArray()

Contains the list of the seller's items, one ItemType object per item.
Returns empty if no items are available that match the request.

  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll
#    Returns: 'ns:ItemArrayType'

=cut
       
sub getItemArray {
   my $self = shift;
   return $self->getResponseDataType()->getItemArray();
}

=head2 getItemsPerPage()

Indicates the number of items that are being returned per page of data
(i.e., per call). Will be the same as the value specified in the
Pagination.EntriesPerPage input. Only returned if items are returned.

  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll
#    Returns: 'xs:int'

=cut
       
sub getItemsPerPage {
   my $self = shift;
   return $self->getResponseDataType()->getItemsPerPage();
}

=head2 getPageNumber()

Indicates which page of data was just returned. Will be the same as the
value specified in the Pagination.PageNumber input. (If the input is
higher than the total number of pages, the call fails with an error.)
Only returned if items are returned.

  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll
#    Returns: 'xs:int'

=cut
       
sub getPageNumber {
   my $self = shift;
   return $self->getResponseDataType()->getPageNumber();
}

=head2 getPaginationResult()

Contains information regarding the pagination of data (if pagination is
used), including total number of pages and total number of entries.

  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll
#    Returns: 'ns:PaginationResultType'

=cut
       
sub getPaginationResult {
   my $self = shift;
   return $self->getResponseDataType()->getPaginationResult();
}

=head2 getReturnedItemCountActual()

Indicates the total number of items returned (i.e., the number of
ItemType objects in ItemArray).

  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll
#    Returns: 'xs:int'

=cut
       
sub getReturnedItemCountActual {
   my $self = shift;
   return $self->getResponseDataType()->getReturnedItemCountActual();
}

=head2 getSeller()

Indicates the seller whose items are returned. The seller is the eBay
member whose UserID was passed in the request. If UserID was not
specified, the seller is the user who made the request (identified by
eBayAuthToken).

  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll
           GranularityLevel: Fine

#    Returns: 'ns:UserType'

=cut
       
sub getSeller {
   my $self = shift;
   return $self->getResponseDataType()->getSeller();
}





1;   
