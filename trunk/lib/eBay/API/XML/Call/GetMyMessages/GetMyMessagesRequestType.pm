#!/usr/bin/perl

package eBay::API::XML::Call::GetMyMessages::GetMyMessagesRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetMyMessagesRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetMyMessages::GetMyMessagesRequestType

=head1 DESCRIPTION

Used to retrieve information about the messages and alerts sent
to a given user. Depending on the detail level, this information
can include message and alert counts, resolution and flagged
status, message and/or alert headers, and message and/or alert
body text.
<br /><br />
Note that this call requires a DetailLevel in the
request. Omitting the Detail Level returns an error.
<br /><br />
ItemID is not returned with this call. Use GetMemberMessages instead.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetMyMessages::GetMyMessagesRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::MyMessagesAlertIDArrayType;
use eBay::API::XML::DataType::MyMessagesExternalMessageIDArrayType;
use eBay::API::XML::DataType::MyMessagesMessageIDArrayType;


my @gaProperties = ( [ 'AlertIDs', 'ns:MyMessagesAlertIDArrayType', ''
	     ,'eBay::API::XML::DataType::MyMessagesAlertIDArrayType', '1' ]
	, [ 'EndTime', 'xs:dateTime', '', '', '' ]
	, [ 'ExternalMessageIDs', 'ns:MyMessagesExternalMessageIDArrayType', ''
	     ,'eBay::API::XML::DataType::MyMessagesExternalMessageIDArrayType', '1' ]
	, [ 'FolderID', 'xs:long', '', '', '' ]
	, [ 'MessageIDs', 'ns:MyMessagesMessageIDArrayType', ''
	     ,'eBay::API::XML::DataType::MyMessagesMessageIDArrayType', '1' ]
	, [ 'StartTime', 'xs:dateTime', '', '', '' ]
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



=head2 setAlertIDs()

Contains a list of up to 10 AlertID values.
When AlertID values are used as input, you must
generally specify either AlertID values, or
MessageID values, or both.

  RequiredInput: Conditionally
#    Argument: 'ns:MyMessagesAlertIDArrayType'

=cut

sub setAlertIDs {
  my $self = shift;
  $self->{'AlertIDs'} = shift
}

=head2 getAlertIDs()

#    Returns: 'ns:MyMessagesAlertIDArrayType'

=cut

sub getAlertIDs {
  my $self = shift;
  return $self->_getDataTypeInstance( 'AlertIDs'
		,'eBay::API::XML::DataType::MyMessagesAlertIDArrayType');
}


=head2 setEndTime()

Used as end of date range filter.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut

sub setEndTime {
  my $self = shift;
  $self->{'EndTime'} = shift
}

=head2 getEndTime()

#    Returns: 'xs:dateTime'

=cut

sub getEndTime {
  my $self = shift;
  return $self->{'EndTime'};
}


=head2 setExternalMessageIDs()

An ID that Uniquely identifies a message for a given user.If provided at the
time of message creation this ID will be used to retrieve messages and will
take precedence over message ID.

  RequiredInput: Conditionally
#    Argument: 'ns:MyMessagesExternalMessageIDArrayType'

=cut

sub setExternalMessageIDs {
  my $self = shift;
  $self->{'ExternalMessageIDs'} = shift
}

=head2 getExternalMessageIDs()

#    Returns: 'ns:MyMessagesExternalMessageIDArrayType'

=cut

sub getExternalMessageIDs {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ExternalMessageIDs'
		,'eBay::API::XML::DataType::MyMessagesExternalMessageIDArrayType');
}


=head2 setFolderID()

An ID that uniquely identifies the My Messages folder from which to retrieve alerts or messages.

  RequiredInput: No
#    Argument: 'xs:long'

=cut

sub setFolderID {
  my $self = shift;
  $self->{'FolderID'} = shift
}

=head2 getFolderID()

#    Returns: 'xs:long'

=cut

sub getFolderID {
  my $self = shift;
  return $self->{'FolderID'};
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
  my $self = shift;
  $self->{'MessageIDs'} = shift
}

=head2 getMessageIDs()

#    Returns: 'ns:MyMessagesMessageIDArrayType'

=cut

sub getMessageIDs {
  my $self = shift;
  return $self->_getDataTypeInstance( 'MessageIDs'
		,'eBay::API::XML::DataType::MyMessagesMessageIDArrayType');
}


=head2 setStartTime()

Used as beginning of date range filter.

  RequiredInput: No
#    Argument: 'xs:dateTime'

=cut

sub setStartTime {
  my $self = shift;
  $self->{'StartTime'} = shift
}

=head2 getStartTime()

#    Returns: 'xs:dateTime'

=cut

sub getStartTime {
  my $self = shift;
  return $self->{'StartTime'};
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
