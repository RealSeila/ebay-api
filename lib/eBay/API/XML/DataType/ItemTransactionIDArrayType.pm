#!/usr/bin/perl

package eBay::API::XML::DataType::ItemTransactionIDArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ItemTransactionIDArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ItemTransactionIDArrayType

=head1 DESCRIPTION

Container of ItemTransactionIDs.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ItemTransactionIDArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::ItemTransactionIDType;


my @gaProperties = ( [ 'ItemTransactionID', 'ns:ItemTransactionIDType', '1'
	     ,'eBay::API::XML::DataType::ItemTransactionIDType', '1' ]
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



=head2 setItemTransactionID()

An ItemID-TransactionID container.
Note: OrderID is not returned when the GetOrderTransactions request includes
ItemTransactionID, even if the transaction is part of an order.
To get the OrderID for a transaction, call GetItemTransaction with
IncludeContainingOrder = true.

  Calls: GetOrderTransactions
  RequiredInput: Conditionally

#    Argument: reference to an array  
                      of 'ns:ItemTransactionIDType'

=cut

sub setItemTransactionID {
  my $self = shift;
  $self->{'ItemTransactionID'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getItemTransactionID()

#    Returns: reference to an array  
                      of 'ns:ItemTransactionIDType'

=cut

sub getItemTransactionID {
  my $self = shift;
  return $self->_getDataTypeArray('ItemTransactionID');
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
