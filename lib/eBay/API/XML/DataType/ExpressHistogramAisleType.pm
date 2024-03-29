#!/usr/bin/perl

package eBay::API::XML::DataType::ExpressHistogramAisleType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ExpressHistogramAisleType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ExpressHistogramAisleType

=head1 DESCRIPTION

Details about an Express aisle and matching item and catalog product counts
in that aisle, if any.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ExpressHistogramAisleType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::ExpressHistogramDomainDetailsType;
use eBay::API::XML::DataType::ExpressHistogramProductType;


my @gaProperties = ( [ 'DomainDetails', 'ns:ExpressHistogramDomainDetailsType', ''
	     ,'eBay::API::XML::DataType::ExpressHistogramDomainDetailsType', '1' ]
	, [ 'ProductType', 'ns:ExpressHistogramProductType', '1'
	     ,'eBay::API::XML::DataType::ExpressHistogramProductType', '1' ]
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



=head2 setDomainDetails()

Identifies the aisle and provides matching item and eBay catalog product
counts in the specified aisle, if any. Only returned if an aisle matched the
request.<br>
<br>
If this node is missing but Aisle.ProductType is present, it means that the
product type specified in Aisle.ProductType is not grouped into an aisle. In
the Express Web site UI, such product types are elevated to (treated as)
aisles from the user's perspective (or as Departments, if
Department.DomainDetails is also missing). However, the API always maintains
the Department/Aisle/ProductType structure to help you distinguish between
actual departments, aisles, and stand-alone product types.

#    Argument: 'ns:ExpressHistogramDomainDetailsType'

=cut

sub setDomainDetails {
  my $self = shift;
  $self->{'DomainDetails'} = shift
}

=head2 getDomainDetails()

#    Returns: 'ns:ExpressHistogramDomainDetailsType'

=cut

sub getDomainDetails {
  my $self = shift;
  return $self->_getDataTypeInstance( 'DomainDetails'
		,'eBay::API::XML::DataType::ExpressHistogramDomainDetailsType');
}


=head2 setProductType()

Contains item and catalog product counts for an Express product type.
Only returned when HistogramDetails is configured to return product types.<br>
<br>
An Aisle node can contain multiple ProductType nodes.

#    Argument: reference to an array  
                      of 'ns:ExpressHistogramProductType'

=cut

sub setProductType {
  my $self = shift;
  $self->{'ProductType'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getProductType()

#    Returns: reference to an array  
                      of 'ns:ExpressHistogramProductType'

=cut

sub getProductType {
  my $self = shift;
  return $self->_getDataTypeArray('ProductType');
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
