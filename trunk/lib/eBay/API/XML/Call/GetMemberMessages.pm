#!/usr/bin/perl

package eBay::API::XML::Call::GetMemberMessages;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetMemberMessages.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetMemberMessages

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetMemberMessages inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetMemberMessages::GetMemberMessagesRequestType;
use eBay::API::XML::Call::GetMemberMessages::GetMemberMessagesResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetMemberMessages';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetMemberMessages::GetMemberMessagesRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetMemberMessages::GetMemberMessagesResponseType';
}

#
# input properties
#

=head2 setDisplayToPublic()

Specifies if the message should be displayed on the
website with the item listing.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setDisplayToPublic {
   my $self   = shift;
   my $sDisplayToPublic = shift;
   $self->getRequestDataType()->setDisplayToPublic($sDisplayToPublic);
}

=head2 setEndCreationTime()

Used as end of date range filter. If specified, filters
the returned messages to only those with a creation date
less than or equal to the specified date and time.
<br><br>
For CEM messages, StartCreationTime and EndCreationTime
must be provided.
<br><br>
For ASQ messages, either the ItemID, or a date range
(specified with StartCreationTime and EndCreationTime),
or both must be included.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut
       
sub setEndCreationTime {
   my $self   = shift;
   my $sEndCreationTime = shift;
   $self->getRequestDataType()->setEndCreationTime($sEndCreationTime);
}

=head2 setItemID()

The ID of the item the message is about.
<br><br>
For ASQ messages, either the ItemID, or a date range
(specified with StartCreationTime and EndCreationTime),
or both must be included. ItemID is otherwise ignored.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: Conditionally
#    Argument: 'ns:ItemIDType'

=cut
       
sub setItemID {
   my $self   = shift;
   my $pItemID = shift;
   $self->getRequestDataType()->setItemID($pItemID);
}

=head2 setMailMessageType()

The type of message.

  RequiredInput: Yes
#    Argument: 'ns:MessageTypeCodeType'

=cut
       
sub setMailMessageType {
   my $self   = shift;
   my $sMailMessageType = shift;
   $self->getRequestDataType()->setMailMessageType($sMailMessageType);
}

=head2 setMemberMessageID()

An ID that uniquely identifies the message for a given user to be retrieved.
Used for the AskSellerQuestion notification only.

  RequiredInput: No
#    Argument: 'xs:string'

=cut
       
sub setMemberMessageID {
   my $self   = shift;
   my $sMemberMessageID = shift;
   $self->getRequestDataType()->setMemberMessageID($sMemberMessageID);
}

=head2 setMessageStatus()

The status of the message.

  RequiredInput: Conditionally
#    Argument: 'ns:MessageStatusTypeCodeType'

=cut
       
sub setMessageStatus {
   my $self   = shift;
   my $sMessageStatus = shift;
   $self->getRequestDataType()->setMessageStatus($sMessageStatus);
}

=head2 setPagination()

Standard pagination argument used to reduce response.

  RequiredInput: Yes
#    Argument: 'ns:PaginationType'

=cut
       
sub setPagination {
   my $self   = shift;
   my $pPagination = shift;
   $self->getRequestDataType()->setPagination($pPagination);
}

=head2 setSenderID()

An eBay ID that uniquely identifies a user. For
GetMemberMessages, this is the sender of the message. If
included in the request, returns only messages from the
specified sender.

  RequiredInput: No
#    Argument: 'ns:UserIDType'

=cut
       
sub setSenderID {
   my $self   = shift;
   my $pSenderID = shift;
   $self->getRequestDataType()->setSenderID($pSenderID);
}

=head2 setStartCreationTime()

Used as beginning of date range filter. If specified,
filters the returned messages to only those with a
creation date greater than or equal to the specified
date and time.
<br><br>
For CEM messages, StartCreationTime and EndCreationTime
must be provided.
<br><br>
For ASQ messages, either the ItemID, or a date range
(specified with StartCreationTime and EndCreationTime),
or both must be included.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut
       
sub setStartCreationTime {
   my $self   = shift;
   my $sStartCreationTime = shift;
   $self->getRequestDataType()->setStartCreationTime($sStartCreationTime);
}



#
# output properties
#

=head2 isHasMoreItems()

Specifies whether the response has more items.

  Returned: Always
#    Returns: 'xs:boolean'

=cut
       
sub isHasMoreItems {
   my $self = shift;
   return $self->getResponseDataType()->isHasMoreItems();
}

=head2 getMemberMessage()

The returned member messages. Returned if messages that meet the request criteria exist.

  Returned: Conditionally
#    Returns: 'ns:MemberMessageExchangeArrayType'

=cut
       
sub getMemberMessage {
   my $self = shift;
   return $self->getResponseDataType()->getMemberMessage();
}

=head2 getPaginationResult()

Shows the pagination of data returned by requests.

  Returned: Always
#    Returns: 'ns:PaginationResultType'

=cut
       
sub getPaginationResult {
   my $self = shift;
   return $self->getResponseDataType()->getPaginationResult();
}





1;   