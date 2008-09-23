#!/usr/bin/perl

package eBay::API::XML::Call::GetVeROReportStatus;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetVeROReportStatus.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetVeROReportStatus

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetVeROReportStatus inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetVeROReportStatus::GetVeROReportStatusRequestType;
use eBay::API::XML::Call::GetVeROReportStatus::GetVeROReportStatusResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetVeROReportStatus';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetVeROReportStatus::GetVeROReportStatusRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetVeROReportStatus::GetVeROReportStatusResponseType';
}

#
# input properties
#

=head2 setIncludeReportedItemDetails()

Set to true to return reported item details when you specify VeROReportPacketID in the request.

Default: false

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setIncludeReportedItemDetails {
   my $self   = shift;
   my $sIncludeReportedItemDetails = shift;
   $self->getRequestDataType()->setIncludeReportedItemDetails($sIncludeReportedItemDetails);
}

=head2 setItemID()

Item ID for an item reported for alleged infringement. Applies to items 
reported with VeROReportItems or by other means (e.g., through the 
web flow).

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: No
#    Argument: 'ns:ItemIDType'

=cut
       
sub setItemID {
   my $self   = shift;
   my $pItemID = shift;
   $self->getRequestDataType()->setItemID($pItemID);
}

=head2 setPagination()

Contains the data controlling the pagination of the returned values: how
many items are returned per page of data (per call) and the number of the 
page to return with the current call.

  RequiredInput: No
#    Argument: 'ns:PaginationType'

=cut
       
sub setPagination {
   my $self   = shift;
   my $pPagination = shift;
   $self->getRequestDataType()->setPagination($pPagination);
}

=head2 setTimeFrom()

Limits returned items to only those that were submited on or after the 
date-time specified. If specified, TimeTo must also be specified. 
Express the date-time in the format YYYY-MM-DD HH:MM:SS, and in GMT.
(For information on how to convert between your local time zone
and GMT, see Time Values Note.) Applies to items reported with 
VeROReportItems or by other means (e.g., through the web flow).
Infringement reporting data is maintained for two years after the date of 
submission. 
This field is ignored if VeROReportPacketID or ItemID is specified.

  RequiredInput: No
#    Argument: 'xs:dateTime'

=cut
       
sub setTimeFrom {
   my $self   = shift;
   my $sTimeFrom = shift;
   $self->getRequestDataType()->setTimeFrom($sTimeFrom);
}

=head2 setTimeTo()

Limits returned items to only those that were submited on or before the 
date-time specified. If specified, TimeFrom must also be specified. 
Express date-time in the format YYYY-MM-DD HH:MM:SS, and in GMT.
(For information on how to convert between your local time zone
and GMT, see Time Values Note.) Applies to items reported with 
VeROReportItems or by other means (e.g., through the web flow).
Infringement reporting data is maintained for two years after the date of 
submission. 
This field is ignored if VeROReportPacketID or ItemID is specified.

  RequiredInput: No
#    Argument: 'xs:dateTime'

=cut
       
sub setTimeTo {
   my $self   = shift;
   my $sTimeTo = shift;
   $self->getRequestDataType()->setTimeTo($sTimeTo);
}

=head2 setVeROReportPacketID()

Packet identifier associated with the reported items for which you want to 
retrieve status. By default, reported item details are not returned when 
you specify the packet ID in the request. Applies only to items reported 
with VeROReportItems.

Max: Default: Min: 
  RequiredInput: No
#    Argument: 'xs:long'

=cut
       
sub setVeROReportPacketID {
   my $self   = shift;
   my $sVeROReportPacketID = shift;
   $self->getRequestDataType()->setVeROReportPacketID($sVeROReportPacketID);
}



#
# output properties
#

=head2 isHasMoreItems()

If true, there are more items yet to be retrieved. Additional
calls with higher page numbers or more items per page must
be made to retrieve these items. Not returned if no items match the
request.

  Returned: Conditionally
#    Returns: 'xs:boolean'

=cut
       
sub isHasMoreItems {
   my $self = shift;
   return $self->getResponseDataType()->isHasMoreItems();
}

=head2 getItemsPerPage()

Indicates the maximum number of ItemType objects that can be returned in
ReportedItemDetails for any given call.

  Returned: Conditionally
#    Returns: 'xs:int'

=cut
       
sub getItemsPerPage {
   my $self = shift;
   return $self->getResponseDataType()->getItemsPerPage();
}

=head2 getPageNumber()

Indicates the page of data returned by the current call. For instance,
for the first set of items can be returned, this field has a value of
one.

  Returned: Conditionally
#    Returns: 'xs:int'

=cut
       
sub getPageNumber {
   my $self = shift;
   return $self->getResponseDataType()->getPageNumber();
}

=head2 getPaginationResult()

Contains information regarding the pagination of data (if pagination is
used), including total number of pages and total number of entries.

  Returned: Conditionally
#    Returns: 'ns:PaginationResultType'

=cut
       
sub getPaginationResult {
   my $self = shift;
   return $self->getResponseDataType()->getPaginationResult();
}

=head2 getReportedItemDetails()

Contains the list of the reported item details.
Returns empty if no items are available that match the request.

  Returned: Conditionally
#    Returns: 'ns:VeROReportedItemDetailsType'

=cut
       
sub getReportedItemDetails {
   my $self = shift;
   return $self->getResponseDataType()->getReportedItemDetails();
}

=head2 getVeROReportPacketID()

The packet ID for status being returned.

  Returned: Conditionally
#    Returns: 'xs:long'

=cut
       
sub getVeROReportPacketID {
   my $self = shift;
   return $self->getResponseDataType()->getVeROReportPacketID();
}

=head2 getVeROReportPacketStatus()

Status of the packet.

  Returned: Conditionally
#    Returns: 'ns:VeROReportPacketStatusCodeType'

=cut
       
sub getVeROReportPacketStatus {
   my $self = shift;
   return $self->getResponseDataType()->getVeROReportPacketStatus();
}





1;   
