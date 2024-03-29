#!/usr/bin/perl

package eBay::API::XML::Call::ApproveLiveAuctionBidders::ApproveLiveAuctionBiddersRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ApproveLiveAuctionBiddersRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::ApproveLiveAuctionBidders::ApproveLiveAuctionBiddersRequestType

=head1 DESCRIPTION

Provides Live Auction sellers with the ability to approve, decline,
and set the bidding limit of the bidders that have signed up for a catalog.
Includes the list of bidders for the requested item as part of the
general item listing data.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::ApproveLiveAuctionBidders::ApproveLiveAuctionBiddersRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::AmountType;
use eBay::API::XML::DataType::BidApprovalArrayType;


my @gaProperties = ( [ 'AllApprovedBiddingLimit', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'ApproveAllPending', 'xs:boolean', '', '', '' ]
	, [ 'BidApproval', 'ns:BidApprovalArrayType', ''
	     ,'eBay::API::XML::DataType::BidApprovalArrayType', '1' ]
	, [ 'UserCatalogID', 'xs:int', '', '', '' ]
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



=head2 setAllApprovedBiddingLimit()

This is the amount that bidders are beings approved for.
This is required if user has set ApproveAllPending to true.
It only applies to bidder requests that are in pending status.

  RequiredInput: Conditionally
#    Argument: 'ns:AmountType'

=cut

sub setAllApprovedBiddingLimit {
  my $self = shift;
  $self->{'AllApprovedBiddingLimit'} = shift
}

=head2 getAllApprovedBiddingLimit()

#    Returns: 'ns:AmountType'

=cut

sub getAllApprovedBiddingLimit {
  my $self = shift;
  return $self->_getDataTypeInstance( 'AllApprovedBiddingLimit'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setApproveAllPending()

This will approve all bidders in the catalog in the pending status only.
This is an optional field. If provided and set to true, do not send BidApproval.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setApproveAllPending {
  my $self = shift;
  $self->{'ApproveAllPending'} = shift
}

=head2 isApproveAllPending()

#    Returns: 'xs:boolean'

=cut

sub isApproveAllPending {
  my $self = shift;
  return $self->{'ApproveAllPending'};
}


=head2 setBidApproval()

Approval details for a specific set of bidders.

  RequiredInput: No
#    Argument: 'ns:BidApprovalArrayType'

=cut

sub setBidApproval {
  my $self = shift;
  $self->{'BidApproval'} = shift
}

=head2 getBidApproval()

#    Returns: 'ns:BidApprovalArrayType'

=cut

sub getBidApproval {
  my $self = shift;
  return $self->_getDataTypeInstance( 'BidApproval'
		,'eBay::API::XML::DataType::BidApprovalArrayType');
}


=head2 setUserCatalogID()

Number that identifies the seller's eBay Live Auctions catalog for which
they want to set bidding limits and approve or decline bidders.

  RequiredInput: Yes
#    Argument: 'xs:int'

=cut

sub setUserCatalogID {
  my $self = shift;
  $self->{'UserCatalogID'} = shift
}

=head2 getUserCatalogID()

#    Returns: 'xs:int'

=cut

sub getUserCatalogID {
  my $self = shift;
  return $self->{'UserCatalogID'};
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
