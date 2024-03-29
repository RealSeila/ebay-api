#!/usr/bin/perl

package eBay::API::XML::Call::GetVeROReportStatus::GetVeROReportStatusResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetVeROReportStatusResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetVeROReportStatus::GetVeROReportStatusResponseType

=head1 DESCRIPTION

Contains status information for items reported by the VeRO Program member.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetVeROReportStatus::GetVeROReportStatusResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::PaginationResultType;
use eBay::API::XML::DataType::VeROReportedItemDetailsType;
use eBay::API::XML::DataType::Enum::VeROReportPacketStatusCodeType;


my @gaProperties = ( [ 'HasMoreItems', 'xs:boolean', '', '', '' ]
	, [ 'ItemsPerPage', 'xs:int', '', '', '' ]
	, [ 'PageNumber', 'xs:int', '', '', '' ]
	, [ 'PaginationResult', 'ns:PaginationResultType', ''
	     ,'eBay::API::XML::DataType::PaginationResultType', '1' ]
	, [ 'ReportedItemDetails', 'ns:VeROReportedItemDetailsType', ''
	     ,'eBay::API::XML::DataType::VeROReportedItemDetailsType', '1' ]
	, [ 'VeROReportPacketID', 'xs:long', '', '', '' ]
	, [ 'VeROReportPacketStatus', 'ns:VeROReportPacketStatusCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::VeROReportPacketStatusCodeType', '' ]
                    );
push @gaProperties, @{eBay::API::XML::ResponseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::ResponseDataType::getAttributesList()};

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



=head2 setHasMoreItems()

If true, there are more items yet to be retrieved. Additional
calls with higher page numbers or more items per page must
be made to retrieve these items. Not returned if no items match the
request.

#    Argument: 'xs:boolean'

=cut

sub setHasMoreItems {
  my $self = shift;
  $self->{'HasMoreItems'} = shift
}

=head2 isHasMoreItems()

  Returned: Conditionally
#    Returns: 'xs:boolean'

=cut

sub isHasMoreItems {
  my $self = shift;
  return $self->{'HasMoreItems'};
}


=head2 setItemsPerPage()

Indicates the maximum number of ItemType objects that can be returned in
ReportedItemDetails for any given call.

Max: 200
Min: 1

#    Argument: 'xs:int'

=cut

sub setItemsPerPage {
  my $self = shift;
  $self->{'ItemsPerPage'} = shift
}

=head2 getItemsPerPage()

  Returned: Conditionally
#    Returns: 'xs:int'

=cut

sub getItemsPerPage {
  my $self = shift;
  return $self->{'ItemsPerPage'};
}


=head2 setPageNumber()

Indicates the page of data returned by the current call. For instance,
for the first set of items can be returned, this field has a value of
one.

Max: Min: 1

#    Argument: 'xs:int'

=cut

sub setPageNumber {
  my $self = shift;
  $self->{'PageNumber'} = shift
}

=head2 getPageNumber()

  Returned: Conditionally
#    Returns: 'xs:int'

=cut

sub getPageNumber {
  my $self = shift;
  return $self->{'PageNumber'};
}


=head2 setPaginationResult()

Contains information regarding the pagination of data (if pagination is
used), including total number of pages and total number of entries.

#    Argument: 'ns:PaginationResultType'

=cut

sub setPaginationResult {
  my $self = shift;
  $self->{'PaginationResult'} = shift
}

=head2 getPaginationResult()

  Returned: Conditionally
#    Returns: 'ns:PaginationResultType'

=cut

sub getPaginationResult {
  my $self = shift;
  return $self->_getDataTypeInstance( 'PaginationResult'
		,'eBay::API::XML::DataType::PaginationResultType');
}


=head2 setReportedItemDetails()

Contains the list of the reported item details.
Returns empty if no items are available that match the request.

#    Argument: 'ns:VeROReportedItemDetailsType'

=cut

sub setReportedItemDetails {
  my $self = shift;
  $self->{'ReportedItemDetails'} = shift
}

=head2 getReportedItemDetails()

  Returned: Conditionally
#    Returns: 'ns:VeROReportedItemDetailsType'

=cut

sub getReportedItemDetails {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ReportedItemDetails'
		,'eBay::API::XML::DataType::VeROReportedItemDetailsType');
}


=head2 setVeROReportPacketID()

The packet ID for status being returned.

Max: Default: Min: 
#    Argument: 'xs:long'

=cut

sub setVeROReportPacketID {
  my $self = shift;
  $self->{'VeROReportPacketID'} = shift
}

=head2 getVeROReportPacketID()

  Returned: Conditionally
#    Returns: 'xs:long'

=cut

sub getVeROReportPacketID {
  my $self = shift;
  return $self->{'VeROReportPacketID'};
}


=head2 setVeROReportPacketStatus()

Status of the packet.

#    Argument: 'ns:VeROReportPacketStatusCodeType'

=cut

sub setVeROReportPacketStatus {
  my $self = shift;
  $self->{'VeROReportPacketStatus'} = shift
}

=head2 getVeROReportPacketStatus()

  Returned: Conditionally
#    Returns: 'ns:VeROReportPacketStatusCodeType'

=cut

sub getVeROReportPacketStatus {
  my $self = shift;
  return $self->{'VeROReportPacketStatus'};
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
