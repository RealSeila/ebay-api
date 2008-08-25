#!/usr/bin/perl

package eBay::API::XML::Call::GetOrders::GetOrdersResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetOrdersResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetOrders::GetOrdersResponseType

=head1 DESCRIPTION

Returns the set of orders that match the order IDs or filter criteria specified.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetOrders::GetOrdersResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::OrderArrayType;
use eBay::API::XML::DataType::PaginationResultType;


my @gaProperties = ( [ 'HasMoreOrders', 'xs:boolean', '', '', '' ]
	, [ 'OrderArray', 'ns:OrderArrayType', ''
	     ,'eBay::API::XML::DataType::OrderArrayType', '1' ]
	, [ 'OrdersPerPage', 'xs:int', '', '', '' ]
	, [ 'PageNumber', 'xs:int', '', '', '' ]
	, [ 'PaginationResult', 'ns:PaginationResultType', ''
	     ,'eBay::API::XML::DataType::PaginationResultType', '1' ]
	, [ 'ReturnedOrderCountActual', 'xs:int', '', '', '' ]
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



=head2 setHasMoreOrders()

Applies only to Half.com. If true, there are more orders yet to be
retrieved. Additional GetOrders calls with higher page numbers or more
entries per page must be made to retrieve these orders. If false, no more
orders are available or no orders match the request (based on the input
filters).

#    Argument: 'xs:boolean'

=cut

sub setHasMoreOrders {
  my $self = shift;
  $self->{'HasMoreOrders'} = shift
}

=head2 isHasMoreOrders()

  Returned: Always
  Details: DetailLevel: none
#    Returns: 'xs:boolean'

=cut

sub isHasMoreOrders {
  my $self = shift;
  return $self->{'HasMoreOrders'};
}


=head2 setOrderArray()

The set of orders that match the order IDs or filter criteria specified.
Also applicable to Half.com (only returns orders that have not been marked as shipped).

#    Argument: 'ns:OrderArrayType'

=cut

sub setOrderArray {
  my $self = shift;
  $self->{'OrderArray'} = shift
}

=head2 getOrderArray()

  Returned: Always
  Details: DetailLevel: none
#    Returns: 'ns:OrderArrayType'

=cut

sub getOrderArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'OrderArray'
		,'eBay::API::XML::DataType::OrderArrayType');
}


=head2 setOrdersPerPage()

Applies only to Half.com. Indicates the number of orders that can be
returned per page of data (i.e., per call). This is the same as the value
specified in the Pagination.EntriesPerPage input (or the default value, if
EntriesPerPage was not specified). This is not necessarily the actual
number of orders returned per page (see ReturnedOrderCountActual).

#    Argument: 'xs:int'

=cut

sub setOrdersPerPage {
  my $self = shift;
  $self->{'OrdersPerPage'} = shift
}

=head2 getOrdersPerPage()

  Returned: Always
  Details: DetailLevel: none
#    Returns: 'xs:int'

=cut

sub getOrdersPerPage {
  my $self = shift;
  return $self->{'OrdersPerPage'};
}


=head2 setPageNumber()

Applies only to Half.com. Indicates which page of data holds the current
result set. Will be the same as the value specified in the
Pagination.PageNumber input. If orders are returned, the first page is 1.

#    Argument: 'xs:int'

=cut

sub setPageNumber {
  my $self = shift;
  $self->{'PageNumber'} = shift
}

=head2 getPageNumber()

  Returned: Always
  Details: DetailLevel: none
#    Returns: 'xs:int'

=cut

sub getPageNumber {
  my $self = shift;
  return $self->{'PageNumber'};
}


=head2 setPaginationResult()

Applies only to Half.com. Contains information regarding the pagination of
data (if pagination is used), including total number of pages and total
number of entries.

#    Argument: 'ns:PaginationResultType'

=cut

sub setPaginationResult {
  my $self = shift;
  $self->{'PaginationResult'} = shift
}

=head2 getPaginationResult()

  Returned: Always
  Details: DetailLevel: none
#    Returns: 'ns:PaginationResultType'

=cut

sub getPaginationResult {
  my $self = shift;
  return $self->_getDataTypeInstance( 'PaginationResult'
		,'eBay::API::XML::DataType::PaginationResultType');
}


=head2 setReturnedOrderCountActual()

Applies only to Half.com. Indicates the total number of orders returned.

#    Argument: 'xs:int'

=cut

sub setReturnedOrderCountActual {
  my $self = shift;
  $self->{'ReturnedOrderCountActual'} = shift
}

=head2 getReturnedOrderCountActual()

  Returned: Always
  Details: DetailLevel: none
#    Returns: 'xs:int'

=cut

sub getReturnedOrderCountActual {
  my $self = shift;
  return $self->{'ReturnedOrderCountActual'};
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
