#!/usr/bin/perl

package eBay::API::XML::DataType::PromotionalSaleDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PromotionalSaleDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::PromotionalSaleDetailsType

=head1 DESCRIPTION

If a seller has reduced the price of a listed item with the Promotional Price Display feature,
this type contains the original price of the discounted item and other information.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::PromotionalSaleDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AmountType;


my @gaProperties = ( [ 'EndTime', 'xs:dateTime', '', '', '' ]
	, [ 'OriginalPrice', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'StartTime', 'xs:dateTime', '', '', '' ]
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



=head2 setEndTime()

End time of a discount for an item whose price a seller has reduced with the Promotional Price Display feature.

#    Argument: 'xs:dateTime'

=cut

sub setEndTime {
  my $self = shift;
  $self->{'EndTime'} = shift
}

=head2 getEndTime()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: WatchList

  Calls: GetMyeBaySelling
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: ActiveList

#    Returns: 'xs:dateTime'

=cut

sub getEndTime {
  my $self = shift;
  return $self->{'EndTime'};
}


=head2 setOriginalPrice()

Original price of an item whose price a seller has reduced with the Promotional Price Display feature.

#    Argument: 'ns:AmountType'

=cut

sub setOriginalPrice {
  my $self = shift;
  $self->{'OriginalPrice'} = shift
}

=head2 getOriginalPrice()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: WatchList

  Calls: GetMyeBaySelling
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: ActiveList

#    Returns: 'ns:AmountType'

=cut

sub getOriginalPrice {
  my $self = shift;
  return $self->_getDataTypeInstance( 'OriginalPrice'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setStartTime()

Start time of a discount for an item whose price a seller has reduced with the Promotional Price Display feature.

#    Argument: 'xs:dateTime'

=cut

sub setStartTime {
  my $self = shift;
  $self->{'StartTime'} = shift
}

=head2 getStartTime()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: WatchList

  Calls: GetMyeBaySelling
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: ActiveList

#    Returns: 'xs:dateTime'

=cut

sub getStartTime {
  my $self = shift;
  return $self->{'StartTime'};
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
