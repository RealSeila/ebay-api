#!/usr/bin/perl

package eBay::API::XML::Call::GetLiveAuctionBidders::GetLiveAuctionBiddersRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetLiveAuctionBiddersRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetLiveAuctionBidders::GetLiveAuctionBiddersRequestType

=head1 DESCRIPTION

Includes the list of bidders for the requested catalog.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetLiveAuctionBidders::GetLiveAuctionBiddersRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::PaginationType;
use eBay::API::XML::DataType::Enum::BidderStatusCodeType;


my @gaProperties = ( [ 'BidderStatus', 'ns:BidderStatusCodeType', '1'
	     ,'eBay::API::XML::DataType::Enum::BidderStatusCodeType', '' ]
	, [ 'Pagination', 'ns:PaginationType', ''
	     ,'eBay::API::XML::DataType::PaginationType', '1' ]
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



=head2 setBidderStatus()

The seller can ask to retrieve a subset of users in the bidder approval list
who are either "approved","denied", or "pending" or a combination of these.
If this field is not specified in the request, all records are returned.

  RequiredInput: No
#    Argument: reference to an array  
                      of 'ns:BidderStatusCodeType'

=cut

sub setBidderStatus {
  my $self = shift;
  $self->{'BidderStatus'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getBidderStatus()

#    Returns: reference to an array  
                      of 'ns:BidderStatusCodeType'

=cut

sub getBidderStatus {
  my $self = shift;
  return $self->_getDataTypeArray('BidderStatus');
}


=head2 setPagination()

Child elements control pagination of the output.
Use its EntriesPerPage property to control the number of bidders to return per call
and its PageNumber property to specify the page of data to return.

  RequiredInput: No
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


=head2 setUserCatalogID()

Number that identifies the seller's eBay Live Auctions catalog for which they
want to retrieve bidder requests.

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
