#!/usr/bin/perl

package eBay::API::XML::DataType::OrderArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. OrderArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::OrderArrayType

=head1 DESCRIPTION

An array of Orders.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::OrderArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::OrderType;


my @gaProperties = ( [ 'Order', 'ns:OrderType', '1'
	     ,'eBay::API::XML::DataType::OrderType', '1' ]
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



=head2 setOrder()

Also applicable to Half.com.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=WorkingWithCombinedPayment
Title: Working with Combined Payment

#    Argument: reference to an array  
                      of 'ns:OrderType'

=cut

sub setOrder {
  my $self = shift;
  $self->{'Order'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getOrder()

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

  Calls: GetOrderTransactions
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: reference to an array  
                      of 'ns:OrderType'

=cut

sub getOrder {
  my $self = shift;
  return $self->_getDataTypeArray('Order');
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