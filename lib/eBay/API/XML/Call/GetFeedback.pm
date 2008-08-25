#!/usr/bin/perl

package eBay::API::XML::Call::GetFeedback;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetFeedback.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetFeedback

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetFeedback inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetFeedback::GetFeedbackRequestType;
use eBay::API::XML::Call::GetFeedback::GetFeedbackResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetFeedback';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetFeedback::GetFeedbackRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetFeedback::GetFeedbackResponseType';
}

#
# input properties
#

=head2 setCommentType()

Returns feedback of a specified type (positive, negative, or neutral) 
in a FeedbackDetailArray. You can include two CommentTypes in your call
if you want to exclude the third type from your results. If no CommentType is specified, all of the feedback details will be returned.

  RequiredInput: No
#    Argument: reference to an array  
                      of 'ns:CommentTypeCodeType'

=cut
       
sub setCommentType {
   my $self   = shift;
   my $sCommentType = shift;
   $self->getRequestDataType()->setCommentType($sCommentType);
}

=head2 setFeedbackID()

An ID that uniquely identifies a feedback record to be retrieved.
Used by the Feedback notification only.

  RequiredInput: No
#    Argument: 'xs:string'

=cut
       
sub setFeedbackID {
   my $self   = shift;
   my $sFeedbackID = shift;
   $self->getRequestDataType()->setFeedbackID($sFeedbackID);
}

=head2 setItemID()

Specifies the item ID whose feedback data is to be returned. If not specified, then the feedback for all items is returned. When an 
Item ID is specified, the maximum number of feedback records returned
is 100 and Pagination is ignored.

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

Controls the pagination of the result set. Child elements, EntriesPerPage
and PageNumber, specify the maximum number of individual feedback records to return per call and which page of data to return. Only applicable if a
detail level value of ReturnAll is specified and the UserID or no ID (requester option) is specified. Feedback summary data is not paginated (but is still returned when
pagination is used).
<br>
Valid Pagination.EntriesPerPage input for GetFeedback is limited to 25,
50, 100, and 200. Other values will be treated as the closest valid input
less than the value specified or 25. If a value of zero or less or a
value greater than 200 is specified, the call fails with an error.
When pagination is used and feedback detail entries are being returned,
the summary data is returned after the last feedback detail entry on the
last page of data.

  RequiredInput: No
  OnlyTheseValues: 25, 50, 100, 200
#    Argument: 'ns:PaginationType'

=cut
       
sub setPagination {
   my $self   = shift;
   my $pPagination = shift;
   $self->getRequestDataType()->setPagination($pPagination);
}

=head2 setTransactionID()

Transaction ID whose feedback record should be returned. If not specified, 
then the feedback for all transactions will be returned. When a Transaction ID is specified, since only one record is returned, 
Pagination is ignored.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, transaction IDs are usually 9 to 12 digits.)

  RequiredInput: No
#    Argument: 'xs:string'

=cut
       
sub setTransactionID {
   my $self   = shift;
   my $sTransactionID = shift;
   $self->getRequestDataType()->setTransactionID($sTransactionID);
}

=head2 setUserID()

Specifies the user whose feedback data is to be returned. If not specified, then the feedback returned is for the requesting user.

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

=head2 getEntriesPerPage()

Indicates the number of entries (feedback detail) that are being 
returned per page of data (i.e., per call).  
Only returned if entries are returned.

  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll
#    Returns: 'xs:int'

=cut
       
sub getEntriesPerPage {
   my $self = shift;
   return $self->getResponseDataType()->getEntriesPerPage();
}

=head2 getFeedbackDetailArray()

Contains the individual feedback records for the user, transaction, or
item is specified in the request. There is one FeedbackDetailType
object for each feedback record. Only populated with data when a detail level of ReturnAll is specified in the request. Not returned if you specify FeedbackID in the request.

  Returned: Conditionally
  Details: DetailLevel: ReturnAll
#    Returns: 'ns:FeedbackDetailArrayType'

=cut
       
sub getFeedbackDetailArray {
   my $self = shift;
   return $self->getResponseDataType()->getFeedbackDetailArray();
}

=head2 getFeedbackDetailItemTotal()

Indicates the number of FeedbackDetailType objects returned in the
FeedbackDetailArray property. Only applicable if feedback details are
returned.

  Returned: Conditionally
  Details: DetailLevel: ReturnAll
#    Returns: 'xs:int'

=cut
       
sub getFeedbackDetailItemTotal {
   my $self = shift;
   return $self->getResponseDataType()->getFeedbackDetailItemTotal();
}

=head2 getFeedbackScore()

Indicates the total feedback score for the user.

  Returned: Always
  Details: DetailLevel: none, ReturnAll
#    Returns: 'xs:int'

=cut
       
sub getFeedbackScore {
   my $self = shift;
   return $self->getResponseDataType()->getFeedbackScore();
}

=head2 getFeedbackSummary()

Summary feedback data for the user. Contains counts of positive, neutral,
and negative feedback for predefined time periods. Only applicable if feedback details are returned.

  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll
#    Returns: 'ns:FeedbackSummaryType'

=cut
       
sub getFeedbackSummary {
   my $self = shift;
   return $self->getResponseDataType()->getFeedbackSummary();
}

=head2 getPageNumber()

Indicates which page of data was just returned. Will be the same as the
value specified in Pagination.PageNumber. (If the input is
higher than the total number of pages, the call fails with an error.)
Only returned if items are returned.

  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll
#    Returns: 'xs:int'

=cut
       
sub getPageNumber {
   my $self = shift;
   return $self->getResponseDataType()->getPageNumber();
}

=head2 getPaginationResult()

Contains information regarding the pagination of data (if pagination is
used), including total number of pages and total number of entries. This
is only applicable when a User ID or no ID (requester option) is specified.

  Returned: Always
  Details: DetailLevel: none, ReturnAll
#    Returns: 'ns:PaginationResultType'

=cut
       
sub getPaginationResult {
   my $self = shift;
   return $self->getResponseDataType()->getPaginationResult();
}





1;   
