#!/usr/bin/perl

package eBay::API::XML::Call::GetMyMessages;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetMyMessages.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetMyMessages

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetMyMessages inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetMyMessages::GetMyMessagesRequestType;
use eBay::API::XML::Call::GetMyMessages::GetMyMessagesResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetMyMessages';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetMyMessages::GetMyMessagesRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetMyMessages::GetMyMessagesResponseType';
}

#
# input properties
#

=head2 setAlertIDs()

Contains a list of up to 10 AlertID values.
When AlertID values are used as input, you must
generally specify either AlertID values, or
MessageID values, or both.

  RequiredInput: Conditionally
#    Argument: 'ns:MyMessagesAlertIDArrayType'

=cut
       
sub setAlertIDs {
   my $self   = shift;
   my $pAlertIDs = shift;
   $self->getRequestDataType()->setAlertIDs($pAlertIDs);
}

=head2 setEndTime()

Used as end of date range filter.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut
       
sub setEndTime {
   my $self   = shift;
   my $sEndTime = shift;
   $self->getRequestDataType()->setEndTime($sEndTime);
}

=head2 setExternalMessageIDs()

An ID that Uniquely identifies a message for a given user.If provided at the
time of message creation this ID will be used to retrieve messages and will
take precedence over message ID.

  RequiredInput: Conditionally
#    Argument: 'ns:MyMessagesExternalMessageIDArrayType'

=cut
       
sub setExternalMessageIDs {
   my $self   = shift;
   my $pExternalMessageIDs = shift;
   $self->getRequestDataType()->setExternalMessageIDs($pExternalMessageIDs);
}

=head2 setFolderID()

An ID that uniquely identifies the My Messages folder from which to retrieve alerts or messages.

  RequiredInput: No
#    Argument: 'xs:long'

=cut
       
sub setFolderID {
   my $self   = shift;
   my $sFolderID = shift;
   $self->getRequestDataType()->setFolderID($sFolderID);
}

=head2 setMessageIDs()

Contains a list of up to 10 MessageID values.
When MessageID values are used as input, you must
generally specify either AlertID values, or
MessageID values, or both.

  RequiredInput: Conditionally
#    Argument: 'ns:MyMessagesMessageIDArrayType'

=cut
       
sub setMessageIDs {
   my $self   = shift;
   my $pMessageIDs = shift;
   $self->getRequestDataType()->setMessageIDs($pMessageIDs);
}

=head2 setStartTime()

Used as beginning of date range filter.

  RequiredInput: No
#    Argument: 'xs:dateTime'

=cut
       
sub setStartTime {
   my $self   = shift;
   my $sStartTime = shift;
   $self->getRequestDataType()->setStartTime($sStartTime);
}



#
# output properties
#

=head2 getAlerts()

Contains the alert information for each alert
specified in AlertIDs. The amount and type of
information returned varies based on the
requested detail level. Contains one
MyMessagesAlertType object per alert. Returned
as an empty node if user has no alerts.

  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages
#    Returns: 'ns:MyMessagesAlertArrayType'

=cut
       
sub getAlerts {
   my $self = shift;
   return $self->getResponseDataType()->getAlerts();
}

=head2 getMessages()

Contains the message information for each
message specified in MessageIDs. The amount and
type of information returned varies based on the
requested detail level. Contains one
MyMessagesMessageType object per message.
Returned as an empty node if user has no
messages.

  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages
#    Returns: 'ns:MyMessagesMessageArrayType'

=cut
       
sub getMessages {
   my $self = shift;
   return $self->getResponseDataType()->getMessages();
}

=head2 getSummary()

Summary data for a given user's alerts and
messages. This includes the numbers of
new alerts and messages, unresolved alerts,
flagged messages, and total alerts and messages.
The amount and type of data returned is the same
whether or not the request included specific
AlertID or MessageID values.
Always/Conditionally returned logic assumes a
detail level of ReturnMessages.

  Returned: Conditionally
  Details: DetailLevel: ReturnSummary
#    Returns: 'ns:MyMessagesSummaryType'

=cut
       
sub getSummary {
   my $self = shift;
   return $self->getResponseDataType()->getSummary();
}





1;   
