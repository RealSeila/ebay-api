#!/usr/bin/perl

package eBay::API::XML::Call::GetAdFormatLeads::GetAdFormatLeadsRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetAdFormatLeadsRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetAdFormatLeads::GetAdFormatLeadsRequestType

=head1 DESCRIPTION

Retrieves sales lead information for a lead generation listing.
GetAdFormatLeadsRequest returns the number of leads for an ad and any contact
information that the prospective buyer submitted.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetAdFormatLeads::GetAdFormatLeadsRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::ItemIDType;
use eBay::API::XML::DataType::Enum::MessageStatusTypeCodeType;


my @gaProperties = ( [ 'EndCreationTime', 'xs:dateTime', '', '', '' ]
	, [ 'IncludeMemberMessages', 'xs:boolean', '', '', '' ]
	, [ 'ItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'StartCreationTime', 'xs:dateTime', '', '', '' ]
	, [ 'Status', 'ns:MessageStatusTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::MessageStatusTypeCodeType', '' ]
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



=head2 setEndCreationTime()

Used with StartCreationTime to limit the returned leads for a user to only
those with a creation date less than or equal to the specified date and
time.

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


=head2 setIncludeMemberMessages()

Boolean which indicates whether to return mail messages for this lead in a MemberMessage node.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setIncludeMemberMessages {
  my $self = shift;
  $self->{'IncludeMemberMessages'} = shift
}

=head2 isIncludeMemberMessages()

#    Returns: 'xs:boolean'

=cut

sub isIncludeMemberMessages {
  my $self = shift;
  return $self->{'IncludeMemberMessages'};
}


=head2 setItemID()

The unique identifier of an item listed on the eBay site.
Returned by eBay when the item is created. This ID must correspond
to an ad format item.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: No
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


=head2 setStartCreationTime()

Used with EndCreationTime to limit the returned leads for a user to only
those with a creation date greater than or equal to the specified date and
time.

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


=head2 setStatus()

Filters the leads based on their status.

  RequiredInput: No
#    Argument: 'ns:MessageStatusTypeCodeType'

=cut

sub setStatus {
  my $self = shift;
  $self->{'Status'} = shift
}

=head2 getStatus()

#    Returns: 'ns:MessageStatusTypeCodeType'

=cut

sub getStatus {
  my $self = shift;
  return $self->{'Status'};
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
