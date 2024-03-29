#!/usr/bin/perl

package eBay::API::XML::DataType::PaginatedTransactionArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PaginatedTransactionArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::PaginatedTransactionArrayType

=head1 DESCRIPTION

Contains a paginated list of transactions.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::PaginatedTransactionArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::PaginationResultType;
use eBay::API::XML::DataType::TransactionArrayType;


my @gaProperties = ( [ 'PaginationResult', 'ns:PaginationResultType', ''
	     ,'eBay::API::XML::DataType::PaginationResultType', '1' ]
	, [ 'TransactionArray', 'ns:TransactionArrayType', ''
	     ,'eBay::API::XML::DataType::TransactionArrayType', '1' ]
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



=head2 setPaginationResult()

Provides information about the list of transactions,
including number of pages and number of entries.

#    Argument: 'ns:PaginationResultType'

=cut

sub setPaginationResult {
  my $self = shift;
  $self->{'PaginationResult'} = shift
}

=head2 getPaginationResult()

  Calls: GetItemsAwaitingFeedback
  Returned: Always

#    Returns: 'ns:PaginationResultType'

=cut

sub getPaginationResult {
  my $self = shift;
  return $self->_getDataTypeInstance( 'PaginationResult'
		,'eBay::API::XML::DataType::PaginationResultType');
}


=head2 setTransactionArray()

Contains a list of transactions. Returned as an
empty tag if no applicable transactions exist.

#    Argument: 'ns:TransactionArrayType'

=cut

sub setTransactionArray {
  my $self = shift;
  $self->{'TransactionArray'} = shift
}

=head2 getTransactionArray()

  Calls: GetItemsAwaitingFeedback
  Returned: Always

#    Returns: 'ns:TransactionArrayType'

=cut

sub getTransactionArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'TransactionArray'
		,'eBay::API::XML::DataType::TransactionArrayType');
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
