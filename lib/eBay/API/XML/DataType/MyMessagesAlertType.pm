#!/usr/bin/perl

package eBay::API::XML::DataType::MyMessagesAlertType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. MyMessagesAlertType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::MyMessagesAlertType

=head1 DESCRIPTION

Returns an alert header and full alert
information.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::MyMessagesAlertType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::ItemIDType;
use eBay::API::XML::DataType::MyMessagesAlertIDType;
use eBay::API::XML::DataType::MyMessagesFolderType;
use eBay::API::XML::DataType::MyMessagesForwardDetailsType;
use eBay::API::XML::DataType::MyMessagesResponseDetailsType;
use eBay::API::XML::DataType::Enum::MyMessagesAlertResolutionStatusCode;


my @gaProperties = ( [ 'ActionURL', 'xs:string', '', '', '' ]
	, [ 'AlertID', 'ns:MyMessagesAlertIDType', ''
	     ,'eBay::API::XML::DataType::MyMessagesAlertIDType', '1' ]
	, [ 'ContentType', 'xs:string', '', '', '' ]
	, [ 'CreationDate', 'xs:dateTime', '', '', '' ]
	, [ 'ExpirationDate', 'xs:dateTime', '', '', '' ]
	, [ 'ExternalAlertID', 'xs:string', '', '', '' ]
	, [ 'Folder', 'ns:MyMessagesFolderType', ''
	     ,'eBay::API::XML::DataType::MyMessagesFolderType', '1' ]
	, [ 'ForwardDetails', 'ns:MyMessagesForwardDetailsType', ''
	     ,'eBay::API::XML::DataType::MyMessagesForwardDetailsType', '1' ]
	, [ 'IsTimedResolution', 'xs:boolean', '', '', '' ]
	, [ 'ItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'LastReadDate', 'xs:dateTime', '', '', '' ]
	, [ 'Priority', 'xs:string', '', '', '' ]
	, [ 'Read', 'xs:boolean', '', '', '' ]
	, [ 'ReceiveDate', 'xs:dateTime', '', '', '' ]
	, [ 'RecipientUserID', 'xs:string', '', '', '' ]
	, [ 'ResolutionDate', 'xs:dateTime', '', '', '' ]
	, [ 'ResolutionStatus', 'ns:MyMessagesAlertResolutionStatusCode', ''
	     ,'eBay::API::XML::DataType::Enum::MyMessagesAlertResolutionStatusCode', '' ]
	, [ 'ResponseDetails', 'ns:MyMessagesResponseDetailsType', ''
	     ,'eBay::API::XML::DataType::MyMessagesResponseDetailsType', '1' ]
	, [ 'Sender', 'xs:string', '', '', '' ]
	, [ 'Subject', 'xs:string', '', '', '' ]
	, [ 'Text', 'xs:string', '', '', '' ]
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



=head2 setActionURL()

A URL that the recipient must visit to resolve
an alert. May be returned as an empty tag if there is no applicable URL.

#    Argument: 'xs:string'

=cut

sub setActionURL {
  my $self = shift;
  $self->{'ActionURL'} = shift
}

=head2 getActionURL()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages

#    Returns: 'xs:string'

=cut

sub getActionURL {
  my $self = shift;
  return $self->{'ActionURL'};
}


=head2 setAlertID()

An ID that uniquely identifies an alert for a
given user.

#    Argument: 'ns:MyMessagesAlertIDType'

=cut

sub setAlertID {
  my $self = shift;
  $self->{'AlertID'} = shift
}

=head2 getAlertID()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages

#    Returns: 'ns:MyMessagesAlertIDType'

=cut

sub getAlertID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'AlertID'
		,'eBay::API::XML::DataType::MyMessagesAlertIDType');
}


=head2 setContentType()

The content type of the body text. The two
acceptable values are "TEXT" and "HTML" (case
sensitive).

#    Argument: 'xs:string'

=cut

sub setContentType {
  my $self = shift;
  $self->{'ContentType'} = shift
}

=head2 getContentType()

#    Returns: 'xs:string'

=cut

sub getContentType {
  my $self = shift;
  return $self->{'ContentType'};
}


=head2 setCreationDate()

The date and time an alert was created by a sender.

#    Argument: 'xs:dateTime'

=cut

sub setCreationDate {
  my $self = shift;
  $self->{'CreationDate'} = shift
}

=head2 getCreationDate()

#    Returns: 'xs:dateTime'

=cut

sub getCreationDate {
  my $self = shift;
  return $self->{'CreationDate'};
}


=head2 setExpirationDate()

The date and time at which an alert expires.

#    Argument: 'xs:dateTime'

=cut

sub setExpirationDate {
  my $self = shift;
  $self->{'ExpirationDate'} = shift
}

=head2 getExpirationDate()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages

#    Returns: 'xs:dateTime'

=cut

sub getExpirationDate {
  my $self = shift;
  return $self->{'ExpirationDate'};
}


=head2 setExternalAlertID()

An ID used by an external application to
uniquely identify an alert.

#    Argument: 'xs:string'

=cut

sub setExternalAlertID {
  my $self = shift;
  $self->{'ExternalAlertID'} = shift
}

=head2 getExternalAlertID()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders

#    Returns: 'xs:string'

=cut

sub getExternalAlertID {
  my $self = shift;
  return $self->{'ExternalAlertID'};
}


=head2 setFolder()

Details relating to a My Messages folder.

#    Argument: 'ns:MyMessagesFolderType'

=cut

sub setFolder {
  my $self = shift;
  $self->{'Folder'} = shift
}

=head2 getFolder()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages

#    Returns: 'ns:MyMessagesFolderType'

=cut

sub getFolder {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Folder'
		,'eBay::API::XML::DataType::MyMessagesFolderType');
}


=head2 setForwardDetails()

Details relating to the forwarding of an alert
or message. Only returned if the alert or message is
forwarded.

#    Argument: 'ns:MyMessagesForwardDetailsType'

=cut

sub setForwardDetails {
  my $self = shift;
  $self->{'ForwardDetails'} = shift
}

=head2 getForwardDetails()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages

#    Returns: 'ns:MyMessagesForwardDetailsType'

=cut

sub getForwardDetails {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ForwardDetails'
		,'eBay::API::XML::DataType::MyMessagesForwardDetailsType');
}


=head2 setIsTimedResolution()

Indicates whether or not a time-delayed
resolution is applicable for an alert.

#    Argument: 'xs:boolean'

=cut

sub setIsTimedResolution {
  my $self = shift;
  $self->{'IsTimedResolution'} = shift
}

=head2 isIsTimedResolution()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages

#    Returns: 'xs:boolean'

=cut

sub isIsTimedResolution {
  my $self = shift;
  return $self->{'IsTimedResolution'};
}


=head2 setItemID()

A unique eBay item ID associated with an
alert.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

#    Argument: 'ns:ItemIDType'

=cut

sub setItemID {
  my $self = shift;
  $self->{'ItemID'} = shift
}

=head2 getItemID()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders

#    Returns: 'ns:ItemIDType'

=cut

sub getItemID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemID'
		,'eBay::API::XML::DataType::ItemIDType');
}


=head2 setLastReadDate()

The date and time an alert was last viewed by
a given user.

#    Argument: 'xs:dateTime'

=cut

sub setLastReadDate {
  my $self = shift;
  $self->{'LastReadDate'} = shift
}

=head2 getLastReadDate()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages

#    Returns: 'xs:dateTime'

=cut

sub getLastReadDate {
  my $self = shift;
  return $self->{'LastReadDate'};
}


=head2 setPriority()

A number ranging from 0 to 10000 (inclusive),
with 10000 having the highest priority.

#    Argument: 'xs:string'

=cut

sub setPriority {
  my $self = shift;
  $self->{'Priority'} = shift
}

=head2 getPriority()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages

#    Returns: 'xs:string'

=cut

sub getPriority {
  my $self = shift;
  return $self->{'Priority'};
}


=head2 setRead()

Whether or not an alert was viewed by a given
user. Note that retrieving an alert with the API
does not mark it as read.

#    Argument: 'xs:boolean'

=cut

sub setRead {
  my $self = shift;
  $self->{'Read'} = shift
}

=head2 isRead()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages

#    Returns: 'xs:boolean'

=cut

sub isRead {
  my $self = shift;
  return $self->{'Read'};
}


=head2 setReceiveDate()

The date and time that an alert was received
by My Messages and stored in a database for the
recipient.

#    Argument: 'xs:dateTime'

=cut

sub setReceiveDate {
  my $self = shift;
  $self->{'ReceiveDate'} = shift
}

=head2 getReceiveDate()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages

#    Returns: 'xs:dateTime'

=cut

sub getReceiveDate {
  my $self = shift;
  return $self->{'ReceiveDate'};
}


=head2 setRecipientUserID()

The displayable user ID of the recipient.

#    Argument: 'xs:string'

=cut

sub setRecipientUserID {
  my $self = shift;
  $self->{'RecipientUserID'} = shift
}

=head2 getRecipientUserID()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages

#    Returns: 'xs:string'

=cut

sub getRecipientUserID {
  my $self = shift;
  return $self->{'RecipientUserID'};
}


=head2 setResolutionDate()

The date and time at which an alert is resolved.

#    Argument: 'xs:dateTime'

=cut

sub setResolutionDate {
  my $self = shift;
  $self->{'ResolutionDate'} = shift
}

=head2 getResolutionDate()

#    Returns: 'xs:dateTime'

=cut

sub getResolutionDate {
  my $self = shift;
  return $self->{'ResolutionDate'};
}


=head2 setResolutionStatus()

Whether or not an alert was resolved, and how.

#    Argument: 'ns:MyMessagesAlertResolutionStatusCode'

=cut

sub setResolutionStatus {
  my $self = shift;
  $self->{'ResolutionStatus'} = shift
}

=head2 getResolutionStatus()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages

#    Returns: 'ns:MyMessagesAlertResolutionStatusCode'

=cut

sub getResolutionStatus {
  my $self = shift;
  return $self->{'ResolutionStatus'};
}


=head2 setResponseDetails()

Details relating to the response to an alert
or message.

#    Argument: 'ns:MyMessagesResponseDetailsType'

=cut

sub setResponseDetails {
  my $self = shift;
  $self->{'ResponseDetails'} = shift
}

=head2 getResponseDetails()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages

#    Returns: 'ns:MyMessagesResponseDetailsType'

=cut

sub getResponseDetails {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ResponseDetails'
		,'eBay::API::XML::DataType::MyMessagesResponseDetailsType');
}


=head2 setSender()

The display name of the eBay application that
sends the alert.

#    Argument: 'xs:string'

=cut

sub setSender {
  my $self = shift;
  $self->{'Sender'} = shift
}

=head2 getSender()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages

#    Returns: 'xs:string'

=cut

sub getSender {
  my $self = shift;
  return $self->{'Sender'};
}


=head2 setSubject()

The subject of the alert.

#    Argument: 'xs:string'

=cut

sub setSubject {
  my $self = shift;
  $self->{'Subject'} = shift
}

=head2 getSubject()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages

#    Returns: 'xs:string'

=cut

sub getSubject {
  my $self = shift;
  return $self->{'Subject'};
}


=head2 setText()

The alert body. This can be either plain text
or HTML, depending on which format the alert was
originally written in. Note that the API does not
currently check the user email format preferences
that can be specified in My Messages on the eBay.com
Web site.

#    Argument: 'xs:string'

=cut

sub setText {
  my $self = shift;
  $self->{'Text'} = shift
}

=head2 getText()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnMessages

#    Returns: 'xs:string'

=cut

sub getText {
  my $self = shift;
  return $self->{'Text'};
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
