#!/usr/bin/perl

package eBay::API::XML::DataType::SellingSummaryType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SellingSummaryType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::SellingSummaryType

=head1 DESCRIPTION

Contains summary information about the items the seller is selling.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::SellingSummaryType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AmountType;


my @gaProperties = ( [ 'ActiveAuctionCount', 'xs:int', '', '', '' ]
	, [ 'AuctionBidCount', 'xs:int', '', '', '' ]
	, [ 'AuctionSellingCount', 'xs:int', '', '', '' ]
	, [ 'SoldDurationInDays', 'xs:int', '', '', '' ]
	, [ 'TotalAuctionSellingValue', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'TotalSoldCount', 'xs:int', '', '', '' ]
	, [ 'TotalSoldValue', 'ns:AmountType', ''
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



=head2 setActiveAuctionCount()

The number of currently active auctions that will sell. That
is, there is at least one bidder, and any reserve price has
been met. Equivalent to the "Will Sell" value in My eBay.

#    Argument: 'xs:int'

=cut

sub setActiveAuctionCount {
  my $self = shift;
  $self->{'ActiveAuctionCount'} = shift
}

=head2 getActiveAuctionCount()

  Calls: GetMyeBaySelling
  Returned: Always
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:int'

=cut

sub getActiveAuctionCount {
  my $self = shift;
  return $self->{'ActiveAuctionCount'};
}


=head2 setAuctionBidCount()

The total number of bids made on the seller's active listings.

#    Argument: 'xs:int'

=cut

sub setAuctionBidCount {
  my $self = shift;
  $self->{'AuctionBidCount'} = shift
}

=head2 getAuctionBidCount()

  Calls: GetMyeBaySelling
  Returned: Always
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:int'

=cut

sub getAuctionBidCount {
  my $self = shift;
  return $self->{'AuctionBidCount'};
}


=head2 setAuctionSellingCount()

The total number of currently active auctions for a given
seller. Note that this does not include listings that are
FixedPriceItem or StoresFixedPrice. Equivalent to the
"Auction Quantity" value in My eBay.

#    Argument: 'xs:int'

=cut

sub setAuctionSellingCount {
  my $self = shift;
  $self->{'AuctionSellingCount'} = shift
}

=head2 getAuctionSellingCount()

  Calls: GetMyeBaySelling
  Returned: Always
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:int'

=cut

sub getAuctionSellingCount {
  my $self = shift;
  return $self->{'AuctionSellingCount'};
}


=head2 setSoldDurationInDays()

The average duration, in days, of all items sold.

#    Argument: 'xs:int'

=cut

sub setSoldDurationInDays {
  my $self = shift;
  $self->{'SoldDurationInDays'} = shift
}

=head2 getSoldDurationInDays()

  Calls: GetMyeBaySelling
  Returned: Always
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:int'

=cut

sub getSoldDurationInDays {
  my $self = shift;
  return $self->{'SoldDurationInDays'};
}


=head2 setTotalAuctionSellingValue()

The total value of all items the seller has for sale in all listings.

#    Argument: 'ns:AmountType'

=cut

sub setTotalAuctionSellingValue {
  my $self = shift;
  $self->{'TotalAuctionSellingValue'} = shift
}

=head2 getTotalAuctionSellingValue()

  Calls: GetMyeBaySelling
  Returned: Always
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getTotalAuctionSellingValue {
  my $self = shift;
  return $self->_getDataTypeInstance( 'TotalAuctionSellingValue'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setTotalSoldCount()

The total number of items the seller has sold.

SeeLink: URL: https://ebay.custhelp.com/cgi-bin/ebay.cfg/php/enduser/std_adp.php?p_faqid=1111
Title: Discrepancies Between Results of GetMyeBaySelling and GetSellerTransactions

#    Argument: 'xs:int'

=cut

sub setTotalSoldCount {
  my $self = shift;
  $self->{'TotalSoldCount'} = shift
}

=head2 getTotalSoldCount()

  Calls: GetMyeBaySelling
  Returned: Always
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:int'

=cut

sub getTotalSoldCount {
  my $self = shift;
  return $self->{'TotalSoldCount'};
}


=head2 setTotalSoldValue()

The total monetary value of the items the seller has sold.

SeeLink: URL: https://ebay.custhelp.com/cgi-bin/ebay.cfg/php/enduser/std_adp.php?p_faqid=1111
Title: Discrepancies Between Results of GetMyeBaySelling and GetSellerTransactions

#    Argument: 'ns:AmountType'

=cut

sub setTotalSoldValue {
  my $self = shift;
  $self->{'TotalSoldValue'} = shift
}

=head2 getTotalSoldValue()

  Calls: GetMyeBaySelling
  Returned: Always
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getTotalSoldValue {
  my $self = shift;
  return $self->_getDataTypeInstance( 'TotalSoldValue'
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
