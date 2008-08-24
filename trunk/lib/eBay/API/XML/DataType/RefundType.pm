#!/usr/bin/perl

package eBay::API::XML::DataType::RefundType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. RefundType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::RefundType

=head1 DESCRIPTION

Contains information about a single refund. A refund contains information
about the amount refunded for a transaction to a single buyer. This refund
contains information about the amount refunded from seller, refunded time
and total amount refunded to buyer (amount from seller + half)



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::RefundType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AmountType;


my @gaProperties = ( [ 'RefundFromSeller', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'RefundTime', 'xs:dateTime', '', '', '' ]
	, [ 'TotalRefundToBuyer', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
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



=head2 setRefundFromSeller()

Total amount refunded by the seller for this transaction.
Applicable to Half.com (for GetOrders).

#    Argument: 'ns:AmountType'

=cut

sub setRefundFromSeller {
  my $self = shift;
  $self->{'RefundFromSeller'} = shift
}

=head2 getRefundFromSeller()

  Calls: GetOrders
  Returned: Conditionally
  Details: DetailLevel: none

#    Returns: 'ns:AmountType'

=cut

sub getRefundFromSeller {
  my $self = shift;
  return $self->_getDataTypeInstance( 'RefundFromSeller'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setRefundTime()

The date and time at which the refund was issued. Applicable to Half.com (for GetOrders).

#    Argument: 'xs:dateTime'

=cut

sub setRefundTime {
  my $self = shift;
  $self->{'RefundTime'} = shift
}

=head2 getRefundTime()

  Calls: GetOrders
  Returned: Conditionally
  Details: DetailLevel: none

#    Returns: 'xs:dateTime'

=cut

sub getRefundTime {
  my $self = shift;
  return $self->{'RefundTime'};
}


=head2 setTotalRefundToBuyer()

Total amount refunded to the buyer for this transaction.
Applicable to Half.com (for GetOrders).

#    Argument: 'ns:AmountType'

=cut

sub setTotalRefundToBuyer {
  my $self = shift;
  $self->{'TotalRefundToBuyer'} = shift
}

=head2 getTotalRefundToBuyer()

  Calls: GetOrders
  Returned: Conditionally
  Details: DetailLevel: none

#    Returns: 'ns:AmountType'

=cut

sub getTotalRefundToBuyer {
  my $self = shift;
  return $self->_getDataTypeInstance( 'TotalRefundToBuyer'
		,'eBay::API::XML::DataType::AmountType');
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
