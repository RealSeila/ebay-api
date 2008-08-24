#!/usr/bin/perl

package eBay::API::XML::DataType::OrderIDArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. OrderIDArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::OrderIDArrayType

=head1 DESCRIPTION

A list of unique identifiers for orders.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::OrderIDArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::OrderIDType;


my @gaProperties = ( [ 'OrderID', 'ns:OrderIDType', '1'
	     ,'eBay::API::XML::DataType::OrderIDType', '1' ]
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



=head2 setOrderID()

A unique identifier for an order.

  Calls: GetOrders
         GetOrderTransactions
  RequiredInput: Conditionally

#    Argument: reference to an array  
                      of 'ns:OrderIDType'

=cut

sub setOrderID {
  my $self = shift;
  $self->{'OrderID'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getOrderID()

#    Returns: reference to an array  
                      of 'ns:OrderIDType'

=cut

sub getOrderID {
  my $self = shift;
  return $self->_getDataTypeArray('OrderID');
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
