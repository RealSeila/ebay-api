#!/usr/bin/perl

package eBay::API::XML::DataType::PaginatedOrderTransactionArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PaginatedOrderTransactionArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::PaginatedOrderTransactionArrayType

=head1 DESCRIPTION

Contains a paginated list of orders, transactions, or both, with each
item an OrderTransactionType.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::PaginatedOrderTransactionArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::OrderTransactionArrayType;
use eBay::API::XML::DataType::PaginationResultType;


my @gaProperties = ( [ 'OrderTransactionArray', 'ns:OrderTransactionArrayType', ''
	     ,'eBay::API::XML::DataType::OrderTransactionArrayType', '1' ]
	, [ 'PaginationResult', 'ns:PaginationResultType', ''
	     ,'eBay::API::XML::DataType::PaginationResultType', '1' ]
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



=head2 setOrderTransactionArray()

Contains the list of orders, transactions, or both.

#    Argument: 'ns:OrderTransactionArrayType'

=cut

sub setOrderTransactionArray {
  my $self = shift;
  $self->{'OrderTransactionArray'} = shift
}

=head2 getOrderTransactionArray()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: WonList
           DeletedFromWonList

  Calls: GetMyeBaySelling
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: SoldList
           DeletedFromSoldList

#    Returns: 'ns:OrderTransactionArrayType'

=cut

sub getOrderTransactionArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'OrderTransactionArray'
		,'eBay::API::XML::DataType::OrderTransactionArrayType');
}


=head2 setPaginationResult()

Specifies information about the list, including number of pages and
number of entries.

#    Argument: 'ns:PaginationResultType'

=cut

sub setPaginationResult {
  my $self = shift;
  $self->{'PaginationResult'} = shift
}

=head2 getPaginationResult()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: WonList
           DeletedFromWonList

  Calls: GetMyeBaySelling
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
  Context: SoldList
           DeletedFromSoldList

#    Returns: 'ns:PaginationResultType'

=cut

sub getPaginationResult {
  my $self = shift;
  return $self->_getDataTypeInstance( 'PaginationResult'
		,'eBay::API::XML::DataType::PaginationResultType');
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
