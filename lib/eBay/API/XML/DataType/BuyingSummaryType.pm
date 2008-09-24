#!/usr/bin/perl

package eBay::API::XML::DataType::BuyingSummaryType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. BuyingSummaryType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::BuyingSummaryType

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::BuyingSummaryType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AmountType;


my @gaProperties = ( [ 'BestOfferCount', 'xs:int', '', '', '' ]
	, [ 'BiddingCount', 'xs:int', '', '', '' ]
	, [ 'TotalWinningCost', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'TotalWonCost', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'WinningCount', 'xs:int', '', '', '' ]
	, [ 'WonCount', 'xs:int', '', '', '' ]
	, [ 'WonDurationInDays', 'xs:int', '', '', '' ]
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



=head2 setBestOfferCount()

The number of items the user has made best offers on.

#    Argument: 'xs:int'

=cut

sub setBestOfferCount {
  my $self = shift;
  $self->{'BestOfferCount'} = shift
}

=head2 getBestOfferCount()

  Calls: GetMyeBayBuying
  Returned: Always
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:int'

=cut

sub getBestOfferCount {
  my $self = shift;
  return $self->{'BestOfferCount'};
}


=head2 setBiddingCount()

The number of items the user has bid on.

#    Argument: 'xs:int'

=cut

sub setBiddingCount {
  my $self = shift;
  $self->{'BiddingCount'} = shift
}

=head2 getBiddingCount()

  Calls: GetMyeBayBuying
  Returned: Always
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:int'

=cut

sub getBiddingCount {
  my $self = shift;
  return $self->{'BiddingCount'};
}


=head2 setTotalWinningCost()

The total cost of items the user is presently winning.

#    Argument: 'ns:AmountType'

=cut

sub setTotalWinningCost {
  my $self = shift;
  $self->{'TotalWinningCost'} = shift
}

=head2 getTotalWinningCost()

  Calls: GetMyeBayBuying
  Returned: Always
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getTotalWinningCost {
  my $self = shift;
  return $self->_getDataTypeInstance( 'TotalWinningCost'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setTotalWonCost()

The total cost of items the user has bid on and won.

#    Argument: 'ns:AmountType'

=cut

sub setTotalWonCost {
  my $self = shift;
  $self->{'TotalWonCost'} = shift
}

=head2 getTotalWonCost()

  Calls: GetMyeBayBuying
  Returned: Always
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:AmountType'

=cut

sub getTotalWonCost {
  my $self = shift;
  return $self->_getDataTypeInstance( 'TotalWonCost'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setWinningCount()

The number of items the user has bid on and is winning, but that have not yet ended.

#    Argument: 'xs:int'

=cut

sub setWinningCount {
  my $self = shift;
  $self->{'WinningCount'} = shift
}

=head2 getWinningCount()

  Calls: GetMyeBayBuying
  Returned: Always
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:int'

=cut

sub getWinningCount {
  my $self = shift;
  return $self->{'WinningCount'};
}


=head2 setWonCount()

The number of items the user has bid on and won.

#    Argument: 'xs:int'

=cut

sub setWonCount {
  my $self = shift;
  $self->{'WonCount'} = shift
}

=head2 getWonCount()

  Calls: GetMyeBayBuying
  Returned: Always
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:int'

=cut

sub getWonCount {
  my $self = shift;
  return $self->{'WonCount'};
}


=head2 setWonDurationInDays()

The time period for which won items are displayed. Default is 31 days.

#    Argument: 'xs:int'

=cut

sub setWonDurationInDays {
  my $self = shift;
  $self->{'WonDurationInDays'} = shift
}

=head2 getWonDurationInDays()

  Calls: GetMyeBayBuying
  Returned: Always
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:int'

=cut

sub getWonDurationInDays {
  my $self = shift;
  return $self->{'WonDurationInDays'};
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
