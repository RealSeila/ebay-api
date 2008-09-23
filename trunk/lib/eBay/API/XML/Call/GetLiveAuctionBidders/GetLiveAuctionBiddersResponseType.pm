#!/usr/bin/perl

package eBay::API::XML::Call::GetLiveAuctionBidders::GetLiveAuctionBiddersResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetLiveAuctionBiddersResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetLiveAuctionBidders::GetLiveAuctionBiddersResponseType

=head1 DESCRIPTION

Includes the list of bidders for the requested catalog.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetLiveAuctionBidders::GetLiveAuctionBiddersResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::BidderDetailArrayType;
use eBay::API::XML::DataType::PaginationResultType;


my @gaProperties = ( [ 'BidderDetails', 'ns:BidderDetailArrayType', ''
	     ,'eBay::API::XML::DataType::BidderDetailArrayType', '1' ]
	, [ 'PageNumber', 'xs:int', '', '', '' ]
	, [ 'PaginationResult', 'ns:PaginationResultType', ''
	     ,'eBay::API::XML::DataType::PaginationResultType', '1' ]
	, [ 'TotalApproved', 'xs:int', '', '', '' ]
	, [ 'TotalDenied', 'xs:int', '', '', '' ]
	, [ 'TotalPending', 'xs:int', '', '', '' ]
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



=head2 setBidderDetails()

Contains the bidder details that match the bidder query
passed in the request.
Returned when bidder search results are found.

#    Argument: 'ns:BidderDetailArrayType'

=cut

sub setBidderDetails {
  my $self = shift;
  $self->{'BidderDetails'} = shift
}

=head2 getBidderDetails()

  Returned: Conditionally
#    Returns: 'ns:BidderDetailArrayType'

=cut

sub getBidderDetails {
  my $self = shift;
  return $self->_getDataTypeInstance( 'BidderDetails'
		,'eBay::API::XML::DataType::BidderDetailArrayType');
}


=head2 setPageNumber()

The page number for the page of data returned.

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

Shows the pagination of data returned by requests. Only returned
if Pagination was specified in the request.

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


=head2 setTotalApproved()

Total number of bidders in Approved state.

#    Argument: 'xs:int'

=cut

sub setTotalApproved {
  my $self = shift;
  $self->{'TotalApproved'} = shift
}

=head2 getTotalApproved()

  Returned: Always
#    Returns: 'xs:int'

=cut

sub getTotalApproved {
  my $self = shift;
  return $self->{'TotalApproved'};
}


=head2 setTotalDenied()

Total number of bidders in Denied state.

#    Argument: 'xs:int'

=cut

sub setTotalDenied {
  my $self = shift;
  $self->{'TotalDenied'} = shift
}

=head2 getTotalDenied()

  Returned: Always
#    Returns: 'xs:int'

=cut

sub getTotalDenied {
  my $self = shift;
  return $self->{'TotalDenied'};
}


=head2 setTotalPending()

Total number of bidders in Pending state.

#    Argument: 'xs:int'

=cut

sub setTotalPending {
  my $self = shift;
  $self->{'TotalPending'} = shift
}

=head2 getTotalPending()

  Returned: Always
#    Returns: 'xs:int'

=cut

sub getTotalPending {
  my $self = shift;
  return $self->{'TotalPending'};
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
