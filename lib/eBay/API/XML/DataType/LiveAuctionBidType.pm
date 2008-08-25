#!/usr/bin/perl

package eBay::API::XML::DataType::LiveAuctionBidType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. LiveAuctionBidType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::LiveAuctionBidType

=head1 DESCRIPTION

Contains the data for one listing found by a search .



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::LiveAuctionBidType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AmountType;
use eBay::API::XML::DataType::Enum::BidderStatusCodeType;


my @gaProperties = ( [ 'ApprovedBiddingLimit', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'BidderStatus', 'ns:BidderStatusCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::BidderStatusCodeType', '' ]
	, [ 'DeclinedComment', 'xs:string', '', '', '' ]
	, [ 'RequestedBiddingLimit', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
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



=head2 setApprovedBiddingLimit()

Maximum amount that the seller will allow the bidder to bid.

#    Argument: 'ns:AmountType'

=cut

sub setApprovedBiddingLimit {
  my $self = shift;
  $self->{'ApprovedBiddingLimit'} = shift
}

=head2 getApprovedBiddingLimit()

  Calls: GetLiveAuctionBidders
  Returned: Always

#    Returns: 'ns:AmountType'

=cut

sub getApprovedBiddingLimit {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ApprovedBiddingLimit'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setBidderStatus()

Indicates whether the seller has approved the user to bid on the
seller's Live Auctions (in the catalog identifed by UserCatalogID).

#    Argument: 'ns:BidderStatusCodeType'

=cut

sub setBidderStatus {
  my $self = shift;
  $self->{'BidderStatus'} = shift
}

=head2 getBidderStatus()

  Calls: GetLiveAuctionBidders
  Returned: Always

#    Returns: 'ns:BidderStatusCodeType'

=cut

sub getBidderStatus {
  my $self = shift;
  return $self->{'BidderStatus'};
}


=head2 setDeclinedComment()

Comments entered by the seller if the seller has denied the bidder's
approval request.

#    Argument: 'xs:string'

=cut

sub setDeclinedComment {
  my $self = shift;
  $self->{'DeclinedComment'} = shift
}

=head2 getDeclinedComment()

  Calls: GetLiveAuctionBidders
  Returned: Always

#    Returns: 'xs:string'

=cut

sub getDeclinedComment {
  my $self = shift;
  return $self->{'DeclinedComment'};
}


=head2 setRequestedBiddingLimit()

Maximum amount that the bidder would like to be able to bid.
This is returned if the auction house has requested that the bidder
enter an amount for the seller's approval.

#    Argument: 'ns:AmountType'

=cut

sub setRequestedBiddingLimit {
  my $self = shift;
  $self->{'RequestedBiddingLimit'} = shift
}

=head2 getRequestedBiddingLimit()

  Calls: GetLiveAuctionBidders
  Returned: Always

#    Returns: 'ns:AmountType'

=cut

sub getRequestedBiddingLimit {
  my $self = shift;
  return $self->_getDataTypeInstance( 'RequestedBiddingLimit'
		,'eBay::API::XML::DataType::AmountType');
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
