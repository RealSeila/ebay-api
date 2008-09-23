#!/usr/bin/perl

package eBay::API::XML::DataType::MyMessagesSummaryType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. MyMessagesSummaryType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::MyMessagesSummaryType

=head1 DESCRIPTION

Summary data for a given user's alerts and messages.
This includes the numbers of new alerts and messages,
unresolved alerts, flagged messages, and total alerts
and messages.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::MyMessagesSummaryType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::MyMessagesFolderSummaryType;


my @gaProperties = ( [ 'FlaggedMessageCount', 'xs:int', '', '', '' ]
	, [ 'FolderSummary', 'ns:MyMessagesFolderSummaryType', '1'
	     ,'eBay::API::XML::DataType::MyMessagesFolderSummaryType', '1' ]
	, [ 'NewAlertCount', 'xs:int', '', '', '' ]
	, [ 'NewMessageCount', 'xs:int', '', '', '' ]
	, [ 'TotalAlertCount', 'xs:int', '', '', '' ]
	, [ 'TotalMessageCount', 'xs:int', '', '', '' ]
	, [ 'UnresolvedAlertCount', 'xs:int', '', '', '' ]
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



=head2 setFlaggedMessageCount()

The number of messages that have been flagged.
Always returned for detail level ReturnSummary.

#    Argument: 'xs:int'

=cut

sub setFlaggedMessageCount {
  my $self = shift;
  $self->{'FlaggedMessageCount'} = shift
}

=head2 getFlaggedMessageCount()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary

#    Returns: 'xs:int'

=cut

sub getFlaggedMessageCount {
  my $self = shift;
  return $self->{'FlaggedMessageCount'};
}


=head2 setFolderSummary()

Folder summary for each folder. Always
returned for detail level ReturnSummary.

#    Argument: reference to an array  
                      of 'ns:MyMessagesFolderSummaryType'

=cut

sub setFolderSummary {
  my $self = shift;
  $self->{'FolderSummary'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getFolderSummary()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary

#    Returns: reference to an array  
                      of 'ns:MyMessagesFolderSummaryType'

=cut

sub getFolderSummary {
  my $self = shift;
  return $self->_getDataTypeArray('FolderSummary');
}


=head2 setNewAlertCount()

The number of new alerts that a given user
has. Always returned for detail level ReturnSummary.

#    Argument: 'xs:int'

=cut

sub setNewAlertCount {
  my $self = shift;
  $self->{'NewAlertCount'} = shift
}

=head2 getNewAlertCount()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary

#    Returns: 'xs:int'

=cut

sub getNewAlertCount {
  my $self = shift;
  return $self->{'NewAlertCount'};
}


=head2 setNewMessageCount()

The number of new messages that a given user has. Always returned for detail level ReturnSummary.

#    Argument: 'xs:int'

=cut

sub setNewMessageCount {
  my $self = shift;
  $self->{'NewMessageCount'} = shift
}

=head2 getNewMessageCount()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary

#    Returns: 'xs:int'

=cut

sub getNewMessageCount {
  my $self = shift;
  return $self->{'NewMessageCount'};
}


=head2 setTotalAlertCount()

The total number of alerts for a given user.
Always returned for detail level ReturnSummary.

#    Argument: 'xs:int'

=cut

sub setTotalAlertCount {
  my $self = shift;
  $self->{'TotalAlertCount'} = shift
}

=head2 getTotalAlertCount()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary

#    Returns: 'xs:int'

=cut

sub getTotalAlertCount {
  my $self = shift;
  return $self->{'TotalAlertCount'};
}


=head2 setTotalMessageCount()

The total number of messages for a given user.
Always returned for detail level ReturnSummary.

#    Argument: 'xs:int'

=cut

sub setTotalMessageCount {
  my $self = shift;
  $self->{'TotalMessageCount'} = shift
}

=head2 getTotalMessageCount()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary

#    Returns: 'xs:int'

=cut

sub getTotalMessageCount {
  my $self = shift;
  return $self->{'TotalMessageCount'};
}


=head2 setUnresolvedAlertCount()

The number of alerts that are not yet
resolved. Always returned for detail level
ReturnSummary.

#    Argument: 'xs:int'

=cut

sub setUnresolvedAlertCount {
  my $self = shift;
  $self->{'UnresolvedAlertCount'} = shift
}

=head2 getUnresolvedAlertCount()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary

#    Returns: 'xs:int'

=cut

sub getUnresolvedAlertCount {
  my $self = shift;
  return $self->{'UnresolvedAlertCount'};
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