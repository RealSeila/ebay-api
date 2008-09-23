#!/usr/bin/perl

package eBay::API::XML::DataType::PromotionalSaleArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PromotionalSaleArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::PromotionalSaleArrayType

=head1 DESCRIPTION

An array of promotional sales.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::PromotionalSaleArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::PromotionalSaleType;


my @gaProperties = ( [ 'PromotionalSale', 'ns:PromotionalSaleType', '1'
	     ,'eBay::API::XML::DataType::PromotionalSaleType', '1' ]
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



=head2 setPromotionalSale()

Contains promotional sale information based on the request.
If you did not specify a PromotionalSaleID in the request,
then all promotional sales for the seller are returned.

#    Argument: reference to an array  
                      of 'ns:PromotionalSaleType'

=cut

sub setPromotionalSale {
  my $self = shift;
  $self->{'PromotionalSale'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getPromotionalSale()

  Calls: GetPromotionalSaleDetails
  Returned: Conditionally

#    Returns: reference to an array  
                      of 'ns:PromotionalSaleType'

=cut

sub getPromotionalSale {
  my $self = shift;
  return $self->_getDataTypeArray('PromotionalSale');
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