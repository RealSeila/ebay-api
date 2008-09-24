#!/usr/bin/perl

package eBay::API::XML::Call::GetMemberMessages::GetMemberMessagesRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetMemberMessagesRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetMemberMessages::GetMemberMessagesRequestType

=head1 DESCRIPTION

Retrieves a list of the messages buyers have posted about your
active item listings.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetMemberMessages::GetMemberMessagesRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::ItemIDType;
use eBay::API::XML::DataType::PaginationType;
use eBay::API::XML::DataType::UserIDType;
use eBay::API::XML::DataType::Enum::MessageStatusTypeCodeType;
use eBay::API::XML::DataType::Enum::MessageTypeCodeType;


my @gaProperties = ( [ 'DisplayToPublic', 'xs:boolean', '', '', '' ]
	, [ 'EndCreationTime', 'xs:dateTime', '', '', '' ]
	, [ 'ItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'MailMessageType', 'ns:MessageTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::MessageTypeCodeType', '' ]
	, [ 'MemberMessageID', 'xs:string', '', '', '' ]
	, [ 'MessageStatus', 'ns:MessageStatusTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::MessageStatusTypeCodeType', '' ]
	, [ 'Pagination', 'ns:PaginationType', ''
	     ,'eBay::API::XML::DataType::PaginationType', '1' ]
	, [ 'SenderID', 'ns:UserIDType', ''
	     ,'eBay::API::XML::DataType::UserIDType', '1' ]
	, [ 'StartCreationTime', 'xs:dateTime', '', '', '' ]
                    );
push @gaProperties, @{eBay::API::XML::RequestDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::RequestDataType::getAttributesList()};

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



=head2 setDisplayToPublic()

Specifies if the message should be displayed on the
website with the item listing.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setDisplayToPublic {
  my $self = shift;
  $self->{'DisplayToPublic'} = shift
}

=head2 isDisplayToPublic()

#    Returns: 'xs:boolean'

=cut

sub isDisplayToPublic {
  my $self = shift;
  return $self->{'DisplayToPublic'};
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
  my $self = shift;
  $self->{'EndCreationTime'} = shift
}

=head2 getEndCreationTime()

#    Returns: 'xs:dateTime'

=cut

sub getEndCreationTime {
  my $self = shift;
  return $self->{'EndCreationTime'};
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
  my $self = shift;
  $self->{'ItemID'} = shift
}

=head2 getItemID()

#    Returns: 'ns:ItemIDType'

=cut

sub getItemID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemID'
		,'eBay::API::XML::DataType::ItemIDType');
}


=head2 setMailMessageType()

The type of message.

  RequiredInput: Yes
#    Argument: 'ns:MessageTypeCodeType'

=cut

sub setMailMessageType {
  my $self = shift;
  $self->{'MailMessageType'} = shift
}

=head2 getMailMessageType()

#    Returns: 'ns:MessageTypeCodeType'

=cut

sub getMailMessageType {
  my $self = shift;
  return $self->{'MailMessageType'};
}


=head2 setMemberMessageID()

An ID that uniquely identifies the message for a given user to be retrieved.
Used for the AskSellerQuestion notification only.

  RequiredInput: No
#    Argument: 'xs:string'

=cut

sub setMemberMessageID {
  my $self = shift;
  $self->{'MemberMessageID'} = shift
}

=head2 getMemberMessageID()

#    Returns: 'xs:string'

=cut

sub getMemberMessageID {
  my $self = shift;
  return $self->{'MemberMessageID'};
}


=head2 setMessageStatus()

The status of the message.

  RequiredInput: Conditionally
#    Argument: 'ns:MessageStatusTypeCodeType'

=cut

sub setMessageStatus {
  my $self = shift;
  $self->{'MessageStatus'} = shift
}

=head2 getMessageStatus()

#    Returns: 'ns:MessageStatusTypeCodeType'

=cut

sub getMessageStatus {
  my $self = shift;
  return $self->{'MessageStatus'};
}


=head2 setPagination()

Standard pagination argument used to reduce response.

  RequiredInput: Yes
#    Argument: 'ns:PaginationType'

=cut

sub setPagination {
  my $self = shift;
  $self->{'Pagination'} = shift
}

=head2 getPagination()

#    Returns: 'ns:PaginationType'

=cut

sub getPagination {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Pagination'
		,'eBay::API::XML::DataType::PaginationType');
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
  my $self = shift;
  $self->{'SenderID'} = shift
}

=head2 getSenderID()

#    Returns: 'ns:UserIDType'

=cut

sub getSenderID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'SenderID'
		,'eBay::API::XML::DataType::UserIDType');
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
  my $self = shift;
  $self->{'StartCreationTime'} = shift
}

=head2 getStartCreationTime()

#    Returns: 'xs:dateTime'

=cut

sub getStartCreationTime {
  my $self = shift;
  return $self->{'StartCreationTime'};
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