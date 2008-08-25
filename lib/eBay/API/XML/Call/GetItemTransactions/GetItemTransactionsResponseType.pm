#!/usr/bin/perl

package eBay::API::XML::Call::GetItemTransactions::GetItemTransactionsResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetItemTransactionsResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetItemTransactions::GetItemTransactionsResponseType

=head1 DESCRIPTION

Returns an array of transaction data for the item specified in the request.
The results can be used to create a report of data that is commonly
necessary for end-of-auction processing.
Zero, one, or many Transaction objects can be returned in the array.
The set of transactions returned is limited to those that were modified between
the times specified in the request's ModTimeFrom and ModTime filters.
Also returns the item object that spawned the transactions.
If pagination filters were specified in the request, returns meta-data describing
the effects of those filters on the current response and the estimated effects if
the same filters are used in subsequent calls.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetItemTransactions::GetItemTransactionsResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::ItemType;
use eBay::API::XML::DataType::PaginationResultType;
use eBay::API::XML::DataType::TransactionArrayType;


my @gaProperties = ( [ 'HasMoreTransactions', 'xs:boolean', '', '', '' ]
	, [ 'Item', 'ns:ItemType', ''
	     ,'eBay::API::XML::DataType::ItemType', '1' ]
	, [ 'PageNumber', 'xs:int', '', '', '' ]
	, [ 'PaginationResult', 'ns:PaginationResultType', ''
	     ,'eBay::API::XML::DataType::PaginationResultType', '1' ]
	, [ 'PayPalPreferred', 'xs:boolean', '', '', '' ]
	, [ 'ReturnedTransactionCountActual', 'xs:int', '', '', '' ]
	, [ 'TransactionArray', 'ns:TransactionArrayType', ''
	     ,'eBay::API::XML::DataType::TransactionArrayType', '1' ]
	, [ 'TransactionsPerPage', 'xs:int', '', '', '' ]
                    );
push @gaProperties, @{eBay::API::XML::ResponseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::ResponseDataType::getAttributesList()};

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



=head2 setHasMoreTransactions()

Indicates whether there are additional transactions to retrieve.
That is, indicates whether more pages of data are available to be
returned, given the filters that were specified in the request.
Returns false for the last page of data.

#    Argument: 'xs:boolean'

=cut

sub setHasMoreTransactions {
  my $self = shift;
  $self->{'HasMoreTransactions'} = shift
}

=head2 isHasMoreTransactions()

  Returned: Always
  Details: DetailLevel: none, ReturnAll, ItemReturnDescription
#    Returns: 'xs:boolean'

=cut

sub isHasMoreTransactions {
  my $self = shift;
  return $self->{'HasMoreTransactions'};
}


=head2 setItem()

Item object that spawned the transaction. It is a purchase from this item's listing
that the transaction represents.

#    Argument: 'ns:ItemType'

=cut

sub setItem {
  my $self = shift;
  $self->{'Item'} = shift
}

=head2 getItem()

  Returned: Always
  Details: DetailLevel: none, ReturnAll, ItemReturnDescription
#    Returns: 'ns:ItemType'

=cut

sub getItem {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Item'
		,'eBay::API::XML::DataType::ItemType');
}


=head2 setPageNumber()

Page number for the page of transactions the response returned.

#    Argument: 'xs:int'

=cut

sub setPageNumber {
  my $self = shift;
  $self->{'PageNumber'} = shift
}

=head2 getPageNumber()

  Returned: Always
  Details: DetailLevel: none, ReturnAll, ItemReturnDescription
#    Returns: 'xs:int'

=cut

sub getPageNumber {
  my $self = shift;
  return $self->{'PageNumber'};
}


=head2 setPaginationResult()

Contains the total number of pages (TotalNumberOfPages) and the total number
of entries (TotalNumberOfEntries) that could be returned given repeated calls
that use the same selection criteria as the call that returned this response.

#    Argument: 'ns:PaginationResultType'

=cut

sub setPaginationResult {
  my $self = shift;
  $self->{'PaginationResult'} = shift
}

=head2 getPaginationResult()

  Returned: Always
  Details: DetailLevel: none, ReturnAll, ItemReturnDescription
#    Returns: 'ns:PaginationResultType'

=cut

sub getPaginationResult {
  my $self = shift;
  return $self->_getDataTypeInstance( 'PaginationResult'
		,'eBay::API::XML::DataType::PaginationResultType');
}


=head2 setPayPalPreferred()

Indicates whether the item's seller has the preference enabled that shows
that the seller prefers PayPal as the method of payment for an item. This
preference is indicated on an item's View Item page and is intended to
influence a buyer to use PayPal
to pay for the item.

#    Argument: 'xs:boolean'

=cut

sub setPayPalPreferred {
  my $self = shift;
  $self->{'PayPalPreferred'} = shift
}

=head2 isPayPalPreferred()

  Returned: Always
  Details: DetailLevel: none, ReturnAll, ItemReturnDescription
#    Returns: 'xs:boolean'

=cut

sub isPayPalPreferred {
  my $self = shift;
  return $self->{'PayPalPreferred'};
}


=head2 setReturnedTransactionCountActual()

Number of transactions retrieved in the current page of results just returned.
May be a lower value than TransactionsPerPage if the page returned is the last
page and more than one page of data exists.

#    Argument: 'xs:int'

=cut

sub setReturnedTransactionCountActual {
  my $self = shift;
  $self->{'ReturnedTransactionCountActual'} = shift
}

=head2 getReturnedTransactionCountActual()

  Returned: Always
  Details: DetailLevel: none, ReturnAll, ItemReturnDescription
#    Returns: 'xs:int'

=cut

sub getReturnedTransactionCountActual {
  my $self = shift;
  return $self->{'ReturnedTransactionCountActual'};
}


=head2 setTransactionArray()

List of Transaction objects representing the transactions resulting
from the listing. Each Transaction object contains the data for one purchase
(of one or more items in the same listing). The Transaction.Item field is not
returned because the Item object is returned at the root level of the response.
See the reference guide for more information about the fields that are returned.

#    Argument: 'ns:TransactionArrayType'

=cut

sub setTransactionArray {
  my $self = shift;
  $self->{'TransactionArray'} = shift
}

=head2 getTransactionArray()

  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll, ItemReturnDescription
#    Returns: 'ns:TransactionArrayType'

=cut

sub getTransactionArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'TransactionArray'
		,'eBay::API::XML::DataType::TransactionArrayType');
}


=head2 setTransactionsPerPage()

Number of transactions returned per page (per call). May be a higher value
than ReturnedTransactionCountActual if the page returned is the last page
and more than one page of data exists.

#    Argument: 'xs:int'

=cut

sub setTransactionsPerPage {
  my $self = shift;
  $self->{'TransactionsPerPage'} = shift
}

=head2 getTransactionsPerPage()

  Returned: Always
  Details: DetailLevel: none, ReturnAll, ItemReturnDescription
#    Returns: 'xs:int'

=cut

sub getTransactionsPerPage {
  my $self = shift;
  return $self->{'TransactionsPerPage'};
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
