#!/usr/bin/perl

package eBay::API::XML::DataType::ProductInfoType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ProductInfoType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ProductInfoType

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ProductInfoType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AmountType;
use eBay::API::XML::DataType::Enum::ProductStateCodeType;


my @gaProperties = ( [ 'AverageSoldPrice', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'AverageStartPrice', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'ProductState', 'ns:ProductStateCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::ProductStateCodeType', '' ]
	, [ 'Title', 'xs:string', '', '', '' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( [ 'productInfoID', 'xs:string', '', '', '' ]
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



=head2 setAverageSoldPrice()

The average sold price (winning bid, Buy It Now price, or fixed price), if any, of
completed items that were listed with Pre-filled Item Information from this product.

#    Argument: 'ns:AmountType'

=cut

sub setAverageSoldPrice {
  my $self = shift;
  $self->{'AverageSoldPrice'} = shift
}

=head2 getAverageSoldPrice()

  Calls: GetItemRecommendations
  Returned: Conditionally
  Context: PricingRecommendations

#    Returns: 'ns:AmountType'

=cut

sub getAverageSoldPrice {
  my $self = shift;
  return $self->_getDataTypeInstance( 'AverageSoldPrice'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setAverageStartPrice()

The average start price (minimum bid), if any, of completed auction items that were listed
with Pre-filled Item Information from this product.

#    Argument: 'ns:AmountType'

=cut

sub setAverageStartPrice {
  my $self = shift;
  $self->{'AverageStartPrice'} = shift
}

=head2 getAverageStartPrice()

  Calls: GetItemRecommendations
  Returned: Conditionally
  Context: PricingRecommendations

#    Returns: 'ns:AmountType'

=cut

sub getAverageStartPrice {
  my $self = shift;
  return $self->_getDataTypeInstance( 'AverageStartPrice'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setProductState()

Indicates that the product has changed or will soon change (usually due to a migration
from one catalog to another catalog). Typically, this field is 
returned for up to 90 days for a given product. After that, the product either no 
longer returns this field or the product is no longer returned (depending on the 
state change). 
As of mid-2008, this data is primarily applicable to catalogs used by the 
US, Germany, Austria, and Switzerland sites.
Other sites may undergo catalog changes in the future.

#    Argument: 'ns:ProductStateCodeType'

=cut

sub setProductState {
  my $self = shift;
  $self->{'ProductState'} = shift
}

=head2 getProductState()

  Calls: GetItemRecommendations
  Returned: Conditionally

#    Returns: 'ns:ProductStateCodeType'

=cut

sub getProductState {
  my $self = shift;
  return $self->{'ProductState'};
}


=head2 setTitle()

Title associated with the product. This value can be used as the basis for a
suggested listing title. If the title is longer than 55 characters, your application
should make sure the suggested title has a max length of 55 characters so that
it will be valid for the AddItem family of calls.

MaxLength: 1024

#    Argument: 'xs:string'

=cut

sub setTitle {
  my $self = shift;
  $self->{'Title'} = shift
}

=head2 getTitle()

  Calls: GetItemRecommendations
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getTitle {
  my $self = shift;
  return $self->{'Title'};
}




=head2 setProductInfoID()

Unique identifier for the product. See the Developer's Guide for information about
eBay product IDs. If the primary and secondary category are both catalog-enabled, this
ID corresponds to the primary category.

MaxLength: 4000

#    Argument: 'xs:string'

=cut

sub setProductInfoID {
  my $self = shift;
  $self->{'productInfoID'} = shift
}

=head2 getProductInfoID()

  Calls: GetItemRecommendations
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getProductInfoID {
  my $self = shift;
  return $self->{'productInfoID'};
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
