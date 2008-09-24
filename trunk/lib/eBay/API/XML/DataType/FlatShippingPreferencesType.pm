#!/usr/bin/perl

package eBay::API::XML::DataType::FlatShippingPreferencesType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. FlatShippingPreferencesType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::FlatShippingPreferencesType

=head1 DESCRIPTION

Flat shipping preferences.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::FlatShippingPreferencesType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AmountType;
use eBay::API::XML::DataType::FlatRateInsuranceRangeCostType;
use eBay::API::XML::DataType::Enum::FlatShippingRateOptionCodeType;
use eBay::API::XML::DataType::Enum::InsuranceOptionCodeType;


my @gaProperties = ( [ 'AmountPerAdditionalItem', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'DeductionAmountPerAdditionalItem', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'FlatRateInsuranceRangeCost', 'ns:FlatRateInsuranceRangeCostType', '1'
	     ,'eBay::API::XML::DataType::FlatRateInsuranceRangeCostType', '1' ]
	, [ 'FlatShippingRateOption', 'ns:FlatShippingRateOptionCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::FlatShippingRateOptionCodeType', '' ]
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



=head2 setAmountPerAdditionalItem()

If the user specifies ChargeAmountForEachAdditionalItem for
FlatShippingRateOption, then this value is used to specify how much to charge
for each additional item.

  Calls: SetUserPreferences
  RequiredInput: No

#    Argument: 'ns:AmountType'

=cut

sub setAmountPerAdditionalItem {
  my $self = shift;
  $self->{'AmountPerAdditionalItem'} = shift
}

=head2 getAmountPerAdditionalItem()

  Calls: GetUserPreferences
  Returned: Conditionally

#    Returns: 'ns:AmountType'

=cut

sub getAmountPerAdditionalItem {
  my $self = shift;
  return $self->_getDataTypeInstance( 'AmountPerAdditionalItem'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setDeductionAmountPerAdditionalItem()

If the user specifies DeductAmountFromEachAdditionalItem for
FlatShippingRateOption, then this value is used to specify how much to deduct
for each additional item shipped.

  Calls: SetUserPreferences
  RequiredInput: No

#    Argument: 'ns:AmountType'

=cut

sub setDeductionAmountPerAdditionalItem {
  my $self = shift;
  $self->{'DeductionAmountPerAdditionalItem'} = shift
}

=head2 getDeductionAmountPerAdditionalItem()

  Calls: GetUserPreferences
  Returned: Conditionally

#    Returns: 'ns:AmountType'

=cut

sub getDeductionAmountPerAdditionalItem {
  my $self = shift;
  return $self->_getDataTypeInstance( 'DeductionAmountPerAdditionalItem'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setFlatRateInsuranceRangeCost()

For the given range, specifies the cost of insurance. If the InsuranceOption
is either Optional or Required, then 6 instances of this field must be
specified, one for each cost range.

  Calls: SetUserPreferences
  RequiredInput: No

#    Argument: reference to an array  
                      of 'ns:FlatRateInsuranceRangeCostType'

=cut

sub setFlatRateInsuranceRangeCost {
  my $self = shift;
  $self->{'FlatRateInsuranceRangeCost'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getFlatRateInsuranceRangeCost()

  Calls: GetUserPreferences
  Returned: Conditionally

#    Returns: reference to an array  
                      of 'ns:FlatRateInsuranceRangeCostType'

=cut

sub getFlatRateInsuranceRangeCost {
  my $self = shift;
  return $self->_getDataTypeArray('FlatRateInsuranceRangeCost');
}


=head2 setFlatShippingRateOption()

Specifies how the user wants flat-rate shipping to be calculated.

  Calls: SetUserPreferences
  RequiredInput: No

#    Argument: 'ns:FlatShippingRateOptionCodeType'

=cut

sub setFlatShippingRateOption {
  my $self = shift;
  $self->{'FlatShippingRateOption'} = shift
}

=head2 getFlatShippingRateOption()

  Calls: GetUserPreferences
  Returned: Conditionally

#    Returns: 'ns:FlatShippingRateOptionCodeType'

=cut

sub getFlatShippingRateOption {
  my $self = shift;
  return $self->{'FlatShippingRateOption'};
}


=head2 setInsuranceOption()

Whether the seller offers shipping insurance and, if
so, whether the insurance is optional or required. Flat and
calculated shipping.

  Calls: SetUserPreferences
  RequiredInput: No
  AllValuesExcept: NotOfferedOnSite

#    Argument: 'ns:InsuranceOptionCodeType'

=cut

sub setInsuranceOption {
  my $self = shift;
  $self->{'InsuranceOption'} = shift
}

=head2 getInsuranceOption()

  Calls: GetUserPreferences
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
