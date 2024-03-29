#!/usr/bin/perl

package eBay::API::XML::Call::ReviseMyMessages;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ReviseMyMessages.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::ReviseMyMessages

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::ReviseMyMessages inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::ReviseMyMessages::ReviseMyMessagesRequestType;
use eBay::API::XML::Call::ReviseMyMessages::ReviseMyMessagesResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'ReviseMyMessages';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::ReviseMyMessages::ReviseMyMessagesRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::ReviseMyMessages::ReviseMyMessagesResponseType';
}

#
# input properties
#

=head2 setAlertIDs()

Contains a list of up to 10 AlertID values.
<br /><br />
Either AlertIDs, MessageIDs, or both must be included in
the request. Alerts cannot be flagged. Alerts cannot be
moved into a new folder until they have been resolved.
<br /><br />
Resolve alerts by marking Read (if no action is
required), or by using ActionURL (if action is
required).

  RequiredInput: Conditionally
#    Argument: 'ns:MyMessagesAlertIDArrayType'

=cut
       
sub setAlertIDs {
   my $self   = shift;
   my $pAlertIDs = shift;
   $self->getRequestDataType()->setAlertIDs($pAlertIDs);
}

=head2 setFlagged()

Changes the flagged states of all messages specified in
a request by their MessageID values. At least one of
Read, Flagged, or FolderID must be specified in the
request. Messages in the Sent box cannot be moved,
marked as Read, or Flagged. Alerts cannot be flagged.

  RequiredInput: Conditionally
#    Argument: 'xs:boolean'

=cut
       
sub setFlagged {
   my $self   = shift;
   my $sFlagged = shift;
   $self->getRequestDataType()->setFlagged($sFlagged);
}

=head2 setFolderID()

An ID that uniquely identifies the My Messages folder to
move alerts and messages into. At least one of Read,
Flagged, or FolderID must be specified in the request.
<br /><br />
Alerts cannot be moved until they are resolved. Messages
in the Sent box cannot be moved, marked as Read, or
Flagged.

  RequiredInput: Conditionally
#    Argument: 'xs:long'

=cut
       
sub setFolderID {
   my $self   = shift;
   my $sFolderID = shift;
   $self->getRequestDataType()->setFolderID($sFolderID);
}

=head2 setMessageIDs()

Contains a list of up to 10 MessageID values.
<br /><br />
Either AlertIDs, MessageIDs, or both must be included in
the request. Messages in the Sent box cannot be moved,
marked as Read, or Flagged.

  RequiredInput: Conditionally
#    Argument: 'ns:MyMessagesMessageIDArrayType'

=cut
       
sub setMessageIDs {
   my $self   = shift;
   my $pMessageIDs = shift;
   $self->getRequestDataType()->setMessageIDs($pMessageIDs);
}

=head2 setRead()

Changes the read states of all alerts and
messages specified in a request by their AlertID
or MessageID values. At least one of Read,
Flagged, or FolderID must be specified in the
request. Messages in the Sent box cannot be moved,
marked as Read, or Flagged.
<br /><br />
Note that alerts and messages retrieved
with the API are not automatically marked Read,
and must be marked Read with this call.

  RequiredInput: Conditionally
#    Argument: 'xs:boolean'

=cut
       
sub setRead {
   my $self   = shift;
   my $sRead = shift;
   $self->getRequestDataType()->setRead($sRead);
}



#
# output properties
#





1;   
