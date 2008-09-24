#!/usr/bin/perl

package eBay::API::XML::DataType::MeasureType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. MeasureType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::MeasureType

=head1 DESCRIPTION

Basic type for specifying measures and the system of measurement.
A decimal value (e.g., 10.25) is meaningful
as a measure when accompanied by a definition of the unit of measure (e.g., Pounds),
in which case the value specifies the quantity of that unit.
A MeasureType expresses both the value (a decimal) and, optionally, the unit and
the system of measurement.
Details such as shipping weights are specified as measure types.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::MeasureType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::MeasurementSystemCodeType;


my @gaProperties = ( [ 'content', 'xs:decimal', '', '', '' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( [ 'measurementSystem', 'ns:MeasurementSystemCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::MeasurementSystemCodeType', '' ]
	, [ 'unit', 'xs:token', '', '', '' ]
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



=head2 setValue()

#    Argument: 'xs:decimal'

=cut

sub setValue {
  my $self = shift;
  $self->{'content'} = shift
}

=head2 getValue()

#    Returns: 'xs:decimal'

=cut

sub getValue {
  my $self = shift;
  return $self->{'content'};
}




=head2 setMeasurementSystem()

The system of measurement (e.g., English).

  Calls: AddItem
  RequiredInput: No

#    Argument: 'ns:MeasurementSystemCodeType'

=cut

sub setMeasurementSystem {
  my $self = shift;
  $self->{'measurementSystem'} = shift
}

=head2 getMeasurementSystem()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetShippingDiscountProfiles
  Returned: Conditionally

#    Returns: 'ns:MeasurementSystemCodeType'

=cut

sub getMeasurementSystem {
  my $self = shift;
  return $self->{'measurementSystem'};
}


=head2 setUnit()

The unit of measure (e.g., lbs, oz, in). Currently ignored and assumed to be "inches" 
when used as input for PackageDepth, PackageWidth, PackageLength, WeightMajor, WeightMinor.

  Calls: AddItem
  RequiredInput: No

#    Argument: 'xs:token'

=cut

sub setUnit {
  my $self = shift;
  $self->{'unit'} = shift
}

=head2 getUnit()

  Calls: GetItemShipping
         GetSellerTransactions
         GetShippingDiscountProfiles
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

#    Returns: 'xs:token'

=cut

sub getUnit {
  my $self = shift;
  return $self->{'unit'};
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
