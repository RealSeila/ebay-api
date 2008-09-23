#!/usr/bin/perl

package eBay::API::XML::DataType::ShippingInsuranceType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ShippingInsuranceType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ShippingInsuranceType

=head1 DESCRIPTION

Details about insurance for combined payment.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ShippingInsuranceType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::FlatRateInsuranceRangeCostType;
use eBay::API::XML::DataType::Enum::InsuranceOptionCodeType;


my @gaProperties = ( [ 'FlatRateInsuranceRangeCost', 'ns:FlatRateInsuranceRangeCostType', '1'
	     ,'eBay::API::XML::DataType::FlatRateInsuranceRangeCostType', '1' ]
	, [ 'InsuranceOption', 'ns:InsuranceOptionCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::InsuranceOptionCodeType', '' ]
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



=head2 setFlatRateInsuranceRangeCost()

A pairing of range of item price total and insurance cost.
For SetShippingDiscountProfiles, if InsuranceOption is Optional or Required, you must
submit all range pairs. For those ranges that do not apply, set the cost to 0.

  Calls: SetShippingDiscountProfiles
  RequiredInput: Conditionally

#    Argument: reference to an array  
                      of 'ns:FlatRateInsuranceRangeCostType'

=cut

sub setFlatRateInsuranceRangeCost {
  my $self = shift;
  $self->{'FlatRateInsuranceRangeCost'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getFlatRateInsuranceRangeCost()

  Calls: GetShippingDiscountProfiles
  Returned: Conditionally

#    Returns: reference to an array  
                      of 'ns:FlatRateInsuranceRangeCostType'

=cut

sub getFlatRateInsuranceRangeCost {
  my $self = shift;
  return $self->_getDataTypeArray('FlatRateInsuranceRangeCost');
}


=head2 setInsuranceOption()

Whether the seller offers shipping insurance and, if
so, whether the insurance is optional or required. Flat and
calculated shipping.

  Calls: SetShippingDiscountProfiles
  RequiredInput: Conditionally
  AllValuesExcept: NotOfferedOnSite

#    Argument: 'ns:InsuranceOptionCodeType'

=cut

sub setInsuranceOption {
  my $self = shift;
  $self->{'InsuranceOption'} = shift
}

=head2 getInsuranceOption()

  Calls: GetShippingDiscountProfiles
  Returned: Conditionally

#    Returns: 'ns:InsuranceOptionCodeType'

=cut

sub getInsuranceOption {
  my $self = shift;
  return $self->{'InsuranceOption'};
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
