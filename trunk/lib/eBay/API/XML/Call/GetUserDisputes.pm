#!/usr/bin/perl

package eBay::API::XML::Call::GetUserDisputes;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetUserDisputes.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetUserDisputes

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetUserDisputes inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetUserDisputes::GetUserDisputesRequestType;
use eBay::API::XML::Call::GetUserDisputes::GetUserDisputesResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetUserDisputes';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetUserDisputes::GetUserDisputesRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetUserDisputes::GetUserDisputesResponseType';
}

#
# input properties
#

=head2 setDisputeFilterType()

A filter that specifies a subset of disputes to return. The return list
includes both Item Not Received and Unpaid Item disputes.

  RequiredInput: No
#    Argument: 'ns:DisputeFilterTypeCodeType'

=cut
       
sub setDisputeFilterType {
   my $self   = shift;
   my $sDisputeFilterType = shift;
   $self->getRequestDataType()->setDisputeFilterType($sDisputeFilterType);
}

=head2 setDisputeSortType()

The value and sequence to use to sort the returned disputes.

  RequiredInput: No
#    Argument: 'ns:DisputeSortTypeCodeType'

=cut
       
sub setDisputeSortType {
   my $self   = shift;
   my $sDisputeSortType = shift;
   $self->getRequestDataType()->setDisputeSortType($sDisputeSortType);
}

=head2 setModTimeFrom()

A filter that retrieves disputes whose DisputeModifiedTime is later
than or equal to this value. Specify the time value in GMT.
See the eBay Web Services documentation for information about specifying time values.
For more precise control of the date range filter, it is a good practice to also
specify ModTimeTo. Otherwise, the end of the date range is the present time.
Filtering by date range is optional. You can use date range filters in combination
with other filters like DisputeFilterType to control the amount of data returned.

  RequiredInput: No
#    Argument: 'xs:dateTime'

=cut
       
sub setModTimeFrom {
   my $self   = shift;
   my $sModTimeFrom = shift;
   $self->getRequestDataType()->setModTimeFrom($sModTimeFrom);
}

=head2 setModTimeTo()

A filter that retrieves disputes whose DisputeModifiedTime is earlier
than or equal to this value. Specify the time value in GMT.
See the eBay Web Services documentation for information about specifying time values.
For more precise control of the date range filter, it is a good practice to also
specify ModTimeFrom. Otherwise, all available disputes modified prior to the ModTimeTo value are returned.
Filtering by date range is optional. You can use date range filters in combination
with other filters like DisputeFilterType to control the amount of data returned.

  RequiredInput: No
#    Argument: 'xs:dateTime'

=cut
       
sub setModTimeTo {
   my $self   = shift;
   my $sModTimeTo = shift;
   $self->getRequestDataType()->setModTimeTo($sModTimeTo);
}

=head2 setPagination()

The virtual page number of the result set to display. A result set has a number of disputes
divided into virtual pages, with 200 disputes per page. The response can only display one page.
The first page in the result set is number 1. Required. If not specified, a warning is returned
and Pagination.PageNumber is set to 1 by default.

  RequiredInput: Yes
#    Argument: 'ns:PaginationType'

=cut
       
sub setPagination {
   my $self   = shift;
   my $pPagination = shift;
   $self->getRequestDataType()->setPagination($pPagination);
}



#
# output properties
#

=head2 getDisputeArray()

The array of disputes returned.

  Returned: Always
  Details: DetailLevel: ReturnSummary, ReturnAll, none
#    Returns: 'ns:DisputeArrayType'

=cut
       
sub getDisputeArray {
   my $self = shift;
   return $self->getResponseDataType()->getDisputeArray();
}

=head2 getDisputeFilterCount()

The number of disputes that involve the requester as
buyer or seller and match a given filter type.

  Returned: Always
  Details: DetailLevel: ReturnSummary, ReturnAll, none
#    Returns: reference to an array  
                      of 'ns:DisputeFilterCountType'

=cut
       
sub getDisputeFilterCount {
   my $self = shift;
   return $self->getResponseDataType()->getDisputeFilterCount();
}

=head2 getEndingDisputeID()

The index of the last dispute in the current result set, relative
to the total number of disputes available.
Primarily useful for interpreting paginated results.
For example, if 228 disputes are available and
200 results are returned per page: The first page returns
an EndingDisputeID value of 200 and the second page returns an
EndingDisputeID value of 228.

  Returned: Always
  Details: DetailLevel: ReturnSummary, ReturnAll, none
#    Returns: 'ns:DisputeIDType'

=cut
       
sub getEndingDisputeID {
   my $self = shift;
   return $self->getResponseDataType()->getEndingDisputeID();
}

=head2 getItemsPerPage()

The number of disputes on each virtual page in the result set.
The virtual page returned is determined by PageNumber.
Default is 200.

  Returned: Always
  Details: DetailLevel: ReturnSummary, ReturnAll, none
#    Returns: 'xs:int'

=cut
       
sub getItemsPerPage {
   my $self = shift;
   return $self->getResponseDataType()->getItemsPerPage();
}

=head2 getPageNumber()

The page of the total result set returned in the call. The entire result set
is virtual and the call returns only one page of it.

  Returned: Always
  Details: DetailLevel: ReturnSummary, ReturnAll, none
#    Returns: 'xs:int'

=cut
       
sub getPageNumber {
   my $self = shift;
   return $self->getResponseDataType()->getPageNumber();
}

=head2 getPaginationResult()

The result of the pagination, including the total number
of virtual pages in the result set and the total number of
disputes returned.

  Returned: Always
  Details: DetailLevel: ReturnSummary, ReturnAll, none
#    Returns: 'ns:PaginationResultType'

=cut
       
sub getPaginationResult {
   my $self = shift;
   return $self->getResponseDataType()->getPaginationResult();
}

=head2 getStartingDisputeID()

The index of the first dispute in the current result set, relative
to the total number of disputes available.
Primarily useful for interpreting paginated results.
For example, if 228 disputes are available and
200 results are returned per page: The first page returns
a StartingDisputeID value of 1 and the second page returns a
StartingDisputeID value of 201.

  Returned: Always
  Details: DetailLevel: ReturnSummary, ReturnAll, none
#    Returns: 'ns:DisputeIDType'

=cut
       
sub getStartingDisputeID {
   my $self = shift;
   return $self->getResponseDataType()->getStartingDisputeID();
}





1;   
