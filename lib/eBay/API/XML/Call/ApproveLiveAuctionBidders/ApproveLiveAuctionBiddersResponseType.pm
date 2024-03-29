#!/usr/bin/perl

package eBay::API::XML::Call::ApproveLiveAuctionBidders::ApproveLiveAuctionBiddersResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ApproveLiveAuctionBiddersResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::ApproveLiveAuctionBidders::ApproveLiveAuctionBiddersResponseType

=head1 DESCRIPTION

Provides the Live Auction sellers with the ability to approve, decline,
and set the bidding limit of the bidders that have signed up for a catalog.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::ApproveLiveAuctionBidders::ApproveLiveAuctionBiddersResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::LiveAuctionApprovalStatusArrayType;


my @gaProperties = ( [ 'BidderUpdateStatus', 'ns:LiveAuctionApprovalStatusArrayType', ''
	     ,'eBay::API::XML::DataType::LiveAuctionApprovalStatusArrayType', '1' ]
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



=head2 setBidderUpdateStatus()

Contains the results of the request for each item.
Mulitple bidders can be approved with one call.

#    Argument: 'ns:LiveAuctionApprovalStatusArrayType'

=cut

sub setBidderUpdateStatus {
  my $self = shift;
  $self->{'BidderUpdateStatus'} = shift
}

=head2 getBidderUpdateStatus()

  Returned: Always
#    Returns: 'ns:LiveAuctionApprovalStatusArrayType'

=cut

sub getBidderUpdateStatus {
  my $self = shift;
  return $self->_getDataTypeInstance( 'BidderUpdateStatus'
		,'eBay::API::XML::DataType::LiveAuctionApprovalStatusArrayType');
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
