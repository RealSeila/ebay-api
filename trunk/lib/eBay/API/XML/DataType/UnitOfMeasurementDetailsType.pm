#!/usr/bin/perl

package eBay::API::XML::DataType::UnitOfMeasurementDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. UnitOfMeasurementDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::UnitOfMeasurementDetailsType

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::UnitOfMeasurementDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::UnitOfMeasurementType;


my @gaProperties = ( [ 'UnitOfMeasurement', 'ns:UnitOfMeasurementType', '1'
	     ,'eBay::API::XML::DataType::UnitOfMeasurementType', '1' ]
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



=head2 setUnitOfMeasurement()

Contains a suggested unit of measure name plus one or more synonyms.

#    Argument: reference to an array  
                      of 'ns:UnitOfMeasurementType'

=cut

sub setUnitOfMeasurement {
  my $self = shift;
  $self->{'UnitOfMeasurement'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getUnitOfMeasurement()

  Calls: GeteBayDetails
  Returned: Conditionally

#    Returns: reference to an array  
                      of 'ns:UnitOfMeasurementType'

=cut

sub getUnitOfMeasurement {
  my $self = shift;
  return $self->_getDataTypeArray('UnitOfMeasurement');
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
