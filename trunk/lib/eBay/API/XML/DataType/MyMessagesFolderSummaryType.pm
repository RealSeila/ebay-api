#!/usr/bin/perl

package eBay::API::XML::DataType::MyMessagesFolderSummaryType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. MyMessagesFolderSummaryType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::MyMessagesFolderSummaryType

=head1 DESCRIPTION

Summary details for a specified My Messages folder.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::MyMessagesFolderSummaryType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'FolderID', 'xs:long', '', '', '' ]
	, [ 'FolderName', 'xs:string', '', '', '' ]
	, [ 'NewAlertCount', 'xs:int', '', '', '' ]
	, [ 'NewMessageCount', 'xs:int', '', '', '' ]
	, [ 'TotalAlertCount', 'xs:int', '', '', '' ]
	, [ 'TotalMessageCount', 'xs:int', '', '', '' ]
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



=head2 setFolderID()

An ID that uniquely identifies a My Messages
folder. Always returned for detail level
ReturnSummary.

#    Argument: 'xs:long'

=cut

sub setFolderID {
  my $self = shift;
  $self->{'FolderID'} = shift
}

=head2 getFolderID()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary

#    Returns: 'xs:long'

=cut

sub getFolderID {
  my $self = shift;
  return $self->{'FolderID'};
}


=head2 setFolderName()

The name of a specified My Messages folder. For
GetMyMessages, Inbox (FolderID = 0) and Sent (FolderID = 1)
are not returned.

#    Argument: 'xs:string'

=cut

sub setFolderName {
  my $self = shift;
  $self->{'FolderName'} = shift
}

=head2 getFolderName()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnSummary

#    Returns: 'xs:string'

=cut

sub getFolderName {
  my $self = shift;
  return $self->{'FolderName'};
}


=head2 setNewAlertCount()

The number of new alerts in a given folder.
Always returned for detail level ReturnSummary.

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

The number of new messages in a given folder.
Always returned for detail level ReturnSummary.

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

The total number of alerts in a given folder.
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

The total number of messages in a given
folder. Always returned for detail level
ReturnSummary.

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
