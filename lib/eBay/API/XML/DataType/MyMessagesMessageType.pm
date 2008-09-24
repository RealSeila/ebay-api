#!/usr/bin/perl

package eBay::API::XML::DataType::MyMessagesMessageType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. MyMessagesMessageType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::MyMessagesMessageType

=head1 DESCRIPTION

Contains the message information for each message specified in
MessageIDs. The amount and type of information returned varies based on
the requested detail level.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::MyMessagesMessageType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::ItemIDType;
use eBay::API::XML::DataType::MyMessagesFolderType;
use eBay::API::XML::DataType::MyMessagesForwardDetailsType;
use eBay::API::XML::DataType::MyMessagesMessageIDType;
use eBay::API::XML::DataType::MyMessagesResponseDetailsType;
use eBay::API::XML::DataType::Enum::ListingStatusCodeType;
use eBay::API::XML::DataType::Enum::MessageTypeCodeType;
use eBay::API::XML::DataType::Enum::QuestionTypeCodeType;


my @gaProperties = ( [ 'Content', 'xs:string', '', '', '' ]
	, [ 'ContentType', 'xs:string', '', '', '' ]
	, [ 'CreationDate', 'xs:dateTime', '', '', '' ]
	, [ 'ExpirationDate', 'xs:dateTime', '', '', '' ]
	, [ 'ExternalMessageID', 'xs:string', '', '', '' ]
	, [ 'Flagged', 'xs:boolean', '', '', '' ]
	, [ 'Folder', 'ns:MyMessagesFolderType', ''
	     ,'eBay::API::XML::DataType::MyMessagesFolderType', '1' ]
	, [ 'ForwardDetails', 'ns:MyMessagesForwardDetailsType', ''
	     ,'eBay::API::XML::DataType::MyMessagesForwardDetailsType', '1' ]
	, [ 'ItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'ListingStatus', 'ns:ListingStatusCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::ListingStatusCodeType', '' ]
	, [ 'MessageID', 'ns:MyMessagesMessageIDType', ''
	     ,'eBay::API::XML::DataType::MyMessagesMessageIDType', '1' ]
	, [ 'MessageType', 'ns:MessageTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::MessageTypeCodeType', '' ]
	, [ 'QuestionType', 'ns:QuestionTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::QuestionTypeCodeType', '' ]
	, [ 'Read', 'xs:boolean', '', '', '' ]
	, [ 'ReceiveDate', 'xs:dateTime', '', '', '' ]
	, [ 'RecipientUserID', 'xs:string', '', '', '' ]
	, [ 'ResponseDetails', 'ns:MyMessagesResponseDetailsType', ''
	     ,'eBay::API::XML::DataType::MyMessagesResponseDetailsType', '1' ]
	, [ 'SendToName', 'xs:string', '', '', '' ]
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



=head2 setContent()

The message body. Plain text. Returned only for messages created after September 2008 activation.
The API does not currently check the user email format preferences that can 
be specified in My Messages on the eBay.com Web site.

#    Argument: 'xs:string'

=cut

sub setContent {
  my $self = shift;
  $self->{'Content'} = shift
}

=head2 getContent()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnMessages

#    Returns: 'xs:string'

=cut

sub getContent {
  my $self = shift;
  return $self->{'Content'};
}


=head2 setContentType()

The content type of the body text. The three acceptable values
are "TEXT", "HTML",  and "XML" (case sensitive).

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

The date and time that a message was created by the sender.

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

The date and time at which a message expires.

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


=head2 setExternalMessageID()

An ID used by an external application to uniquely identify a
message. Returned only when specified by the external
application on message creation.
<br /><br />
This value is equivalent to the value used for MessageID in
GetMemberMessages.

#    Argument: 'xs:string'

=cut

sub setExternalMessageID {
  my $self = shift;
  $self->{'ExternalMessageID'} = shift
}

=head2 getExternalMessageID()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages

#    Returns: 'xs:string'

=cut

sub getExternalMessageID {
  my $self = shift;
  return $self->{'ExternalMessageID'};
}


=head2 setFlagged()

Whether or not a message has been flagged.

#    Argument: 'xs:boolean'

=cut

sub setFlagged {
  my $self = shift;
  $self->{'Flagged'} = shift
}

=head2 isFlagged()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages

#    Returns: 'xs:boolean'

=cut

sub isFlagged {
  my $self = shift;
  return $self->{'Flagged'};
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


=head2 setItemID()

A unique eBay Item ID associated with a message.

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
  MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

#    Returns: 'ns:ItemIDType'

=cut

sub getItemID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemID'
		,'eBay::API::XML::DataType::ItemIDType');
}


=head2 setListingStatus()

Specifies an active or ended listing's status in eBay's processing workflow.
If a listing ends with a sale (or sales), eBay needs to update the sale details
(e.g., total price and buyer/high bidder) and the final value fee. This processing
can take several minutes. If you retrieve a sold item and no details about the buyer/high bidder
are returned or no final value fee is available, use this listing status information
to determine whether eBay has finished processing the listing.
<br><br> <span class="tablenote"><b>Note:</b> 
Starting in September 2008, for the GetMyMessages call the listing status reflects the status of the listing at
the time the question was created. The listing status for this call may not match
the listing status returned by other calls such as GetItemTransactions.
This is returned only if Messages.Message.MessageType is AskSellerQuestion.
As of early July 2008, this tag is not returned for the Sandbox environment.
</span>

#    Argument: 'ns:ListingStatusCodeType'

=cut

sub setListingStatus {
  my $self = shift;
  $self->{'ListingStatus'} = shift
}

=head2 getListingStatus()

  Calls: GetMyMessages
  Returned: Conditionally
  TagStatus: ComingSoon

#    Returns: 'ns:ListingStatusCodeType'

=cut

sub getListingStatus {
  my $self = shift;
  return $self->{'ListingStatus'};
}


=head2 setMessageID()

An ID that uniquely identifies a message for a given user.
<br/>
<br/>
This value is not the same as the value used for the
GetMemberMessages MessageID. Use the GetMemberMessages value
(used as the GetMyMessages ExternalID) instead.

#    Argument: 'ns:MyMessagesMessageIDType'

=cut

sub setMessageID {
  my $self = shift;
  $self->{'MessageID'} = shift
}

=head2 getMessageID()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages

#    Returns: 'ns:MyMessagesMessageIDType'

=cut

sub getMessageID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'MessageID'
		,'eBay::API::XML::DataType::MyMessagesMessageIDType');
}


=head2 setMessageType()

Specifies the type of message being retrieved through GetMyMessages.

#    Argument: 'ns:MessageTypeCodeType'

=cut

sub setMessageType {
  my $self = shift;
  $self->{'MessageType'} = shift
}

=head2 getMessageType()

  Calls: GetMyMessages
  Returned: Conditionally

#    Returns: 'ns:MessageTypeCodeType'

=cut

sub getMessageType {
  my $self = shift;
  return $self->{'MessageType'};
}


=head2 setQuestionType()

Specifies the context of the question. Corresponds to the
message subject. Applies if Messages.Message.MessageType is
AskSellerQuestion.
<br><br> <span class="tablenote"><b>Note:</b>
This tag will be returned with data starting in September 2008. As of early July 2008,
this tag is not returned for the Sandbox environment.
</span>

#    Argument: 'ns:QuestionTypeCodeType'

=cut

sub setQuestionType {
  my $self = shift;
  $self->{'QuestionType'} = shift
}

=head2 getQuestionType()

  Calls: GetMyMessages
  Returned: Conditionally
  TagStatus: ComingSoon

#    Returns: 'ns:QuestionTypeCodeType'

=cut

sub getQuestionType {
  my $self = shift;
  return $self->{'QuestionType'};
}


=head2 setRead()

Whether or not a message has been viewed by a given user. Note that retrieving a message with the
API does not mark it as read.

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

The date and time that a message was received by My Messages and stored in a
database for the recipient.

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


=head2 setResponseDetails()

Details relating to the response to an alert or message.

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


=head2 setSendToName()

The displayable name of the user or eBay
application to which the message is sent. Only
returned for M2M, and if a value exists.

#    Argument: 'xs:string'

=cut

sub setSendToName {
  my $self = shift;
  $self->{'SendToName'} = shift
}

=head2 getSendToName()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages

#    Returns: 'xs:string'

=cut

sub getSendToName {
  my $self = shift;
  return $self->{'SendToName'};
}


=head2 setSender()

The display name of the eBay user that sent the message.

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

The subject of the message.

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

The message body. This can be either plain
text or HTML, depending on which format the message
was originally written in. Note that the API does
not currently check the user email format
preferences that can be specified in My Messages on
the eBay.com Web site.

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
