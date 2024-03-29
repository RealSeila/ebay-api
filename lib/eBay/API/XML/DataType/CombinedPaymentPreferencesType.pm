#!/usr/bin/perl

package eBay::API::XML::DataType::CombinedPaymentPreferencesType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CombinedPaymentPreferencesType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::CombinedPaymentPreferencesType

=head1 DESCRIPTION

Defines a seller's preferences for allowing buyers to combine more than one
purchase into one payment.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::CombinedPaymentPreferencesType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::CalculatedShippingPreferencesType;
use eBay::API::XML::DataType::FlatShippingPreferencesType;
use eBay::API::XML::DataType::Enum::CombinedPaymentOptionCodeType;
use eBay::API::XML::DataType::Enum::CombinedPaymentPeriodCodeType;


my @gaProperties = ( [ 'CalculatedShippingPreferences', 'ns:CalculatedShippingPreferencesType', ''
	     ,'eBay::API::XML::DataType::CalculatedShippingPreferencesType', '1' ]
	, [ 'CombinedPaymentOption', 'ns:CombinedPaymentOptionCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CombinedPaymentOptionCodeType', '' ]
	, [ 'CombinedPaymentPeriod', 'ns:CombinedPaymentPeriodCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CombinedPaymentPeriodCodeType', '' ]
	, [ 'FlatShippingPreferences', 'ns:FlatShippingPreferencesType', ''
	     ,'eBay::API::XML::DataType::FlatShippingPreferencesType', '1' ]
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



=head2 setCalculatedShippingPreferences()

Contains a seller's preferences for having shipping costs calculated
by eBay.

  Calls: SetUserPreferences
  RequiredInput: No

#    Argument: 'ns:CalculatedShippingPreferencesType'

=cut

sub setCalculatedShippingPreferences {
  my $self = shift;
  $self->{'CalculatedShippingPreferences'} = shift
}

=head2 getCalculatedShippingPreferences()

  Calls: GetUserPreferences
  Returned: Conditionally

#    Returns: 'ns:CalculatedShippingPreferencesType'

=cut

sub getCalculatedShippingPreferences {
  my $self = shift;
  return $self->_getDataTypeInstance( 'CalculatedShippingPreferences'
		,'eBay::API::XML::DataType::CalculatedShippingPreferencesType');
}


=head2 setCombinedPaymentOption()

Specifies whether or not a seller wants to allow buyers 
to combine purchases in order to receive a discount.

  Calls: SetUserPreferences
  RequiredInput: No

#    Argument: 'ns:CombinedPaymentOptionCodeType'

=cut

sub setCombinedPaymentOption {
  my $self = shift;
  $self->{'CombinedPaymentOption'} = shift
}

=head2 getCombinedPaymentOption()

  Calls: GetUserPreferences
  Returned: Conditionally

#    Returns: 'ns:CombinedPaymentOptionCodeType'

=cut

sub getCombinedPaymentOption {
  my $self = shift;
  return $self->{'CombinedPaymentOption'};
}


=head2 setCombinedPaymentPeriod()

Specifies the period in which the user will allow buyers to combine purchases in
order to receive a discount.

  Calls: SetUserPreferences
  RequiredInput: No

#    Argument: 'ns:CombinedPaymentPeriodCodeType'

=cut

sub setCombinedPaymentPeriod {
  my $self = shift;
  $self->{'CombinedPaymentPeriod'} = shift
}

=head2 getCombinedPaymentPeriod()

  Calls: GetUserPreferences
  Returned: Conditionally

#    Returns: 'ns:CombinedPaymentPeriodCodeType'

=cut

sub getCombinedPaymentPeriod {
  my $self = shift;
  return $self->{'CombinedPaymentPeriod'};
}


=head2 setFlatShippingPreferences()

Specifies a seller's preferences for flat-rate shipping.

  Calls: SetUserPreferences
  RequiredInput: No

#    Argument: 'ns:FlatShippingPreferencesType'

=cut

sub setFlatShippingPreferences {
  my $self = shift;
  $self->{'FlatShippingPreferences'} = shift
}

=head2 getFlatShippingPreferences()

  Calls: GetUserPreferences
  Returned: Conditionally

#    Returns: 'ns:FlatShippingPreferencesType'

=cut

sub getFlatShippingPreferences {
  my $self = shift;
  return $self->_getDataTypeInstance( 'FlatShippingPreferences'
		,'eBay::API::XML::DataType::FlatShippingPreferencesType');
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
