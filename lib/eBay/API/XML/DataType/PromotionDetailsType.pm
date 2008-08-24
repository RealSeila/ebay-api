#!/usr/bin/perl

package eBay::API::XML::DataType::PromotionDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PromotionDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::PromotionDetailsType

=head1 DESCRIPTION

Contains information about a promoted item.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::PromotionDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AmountType;
use eBay::API::XML::DataType::Enum::PromotionItemPriceTypeCodeType;


my @gaProperties = ( [ 'BidCount', 'xs:int', '', '', '' ]
	, [ 'ConvertedPromotionPrice', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'PromotionPrice', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'PromotionPriceType', 'ns:PromotionItemPriceTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::PromotionItemPriceTypeCodeType', '' ]
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



=head2 setBidCount()

Bid count if the item is an auction item and has bids.

#    Argument: 'xs:int'

=cut

sub setBidCount {
  my $self = shift;
  $self->{'BidCount'} = shift
}

=head2 getBidCount()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetCrossPromotions
  Returned: Conditionally

#    Returns: 'xs:int'

=cut

sub getBidCount {
  my $self = shift;
  return $self->{'BidCount'};
}


=head2 setConvertedPromotionPrice()

The converted price of the cross-promoted item. Output only. Emitted
only when the item is listed on a site other than the site specified in the
request. Returns the price in the currency of the site specified in the
request. Not related to the Promotional Price Display feature.

#    Argument: 'ns:AmountType'

=cut

sub setConvertedPromotionPrice {
  my $self = shift;
  $self->{'ConvertedPromotionPrice'} = shift
}

=head2 getConvertedPromotionPrice()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetCrossPromotions
  Returned: Conditionally

#    Returns: 'ns:AmountType'

=cut

sub getConvertedPromotionPrice {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ConvertedPromotionPrice'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setPromotionPrice()

The price of the cross-promoted item in the currency of the site upon which
the item is listed. Output only. If the item is listed on a site different
from the site specified in the request, then ConvertedPromotionPrice is also
returned. Not related to the Promotional Price Display feature.

#    Argument: 'ns:AmountType'

=cut

sub setPromotionPrice {
  my $self = shift;
  $self->{'PromotionPrice'} = shift
}

=head2 getPromotionPrice()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetCrossPromotions
  Returned: Always

#    Returns: 'ns:AmountType'

=cut

sub getPromotionPrice {
  my $self = shift;
  return $self->_getDataTypeInstance( 'PromotionPrice'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setPromotionPriceType()

The listing type for the promoted item and how the item price is used. Not
related to the Promotional Price Display feature.

#    Argument: 'ns:PromotionItemPriceTypeCodeType'

=cut

sub setPromotionPriceType {
  my $self = shift;
  $self->{'PromotionPriceType'} = shift
}

=head2 getPromotionPriceType()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetCrossPromotions
  Returned: Always

#    Returns: 'ns:PromotionItemPriceTypeCodeType'

=cut

sub getPromotionPriceType {
  my $self = shift;
  return $self->{'PromotionPriceType'};
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
