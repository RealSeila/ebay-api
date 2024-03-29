#!/usr/bin/perl

package eBay::API::XML::Call::GetSellerPayments::GetSellerPaymentsRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetSellerPaymentsRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetSellerPayments::GetSellerPaymentsRequestType

=head1 DESCRIPTION

Retrieves a summary of pending or paid payments that Half.com created for the
seller identified by the authentication token in the request. Only retrieves
payments that occurred within a particular pay period. Each payment is for one
transaction for one item in one order. An order can contain transactions for
multiple items from multiple sellers, but this call only retrieves payments that
are relevant to one seller. The financial value of a payment is typically based on
an amount that a buyer paid to Half.com for a transaction, with adjustments for
shipping costs and Half.com's commission. For most sellers, each month contains
two pay periods: One from the 1st to the 15th of the month, and one from the 16th
to the last day of the month. Sellers can refer to their account information on
the Half.com site to determine their pay periods. (You cannot retrieve a seller's
pay periods by using eBay Web Services.) When a buyer makes a purchase and an
order is created, Half.com creates a payment for the seller and marks it as
Pending in the seller's Half.com account. Within a certain number of days after
the pay period ends, Half.com settles payments for that period and marks each
completed payment as Paid. See the Half.com Web site online help for more
information about how payments are managed.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetSellerPayments::GetSellerPaymentsRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::PaginationType;
use eBay::API::XML::DataType::Enum::RCSPaymentStatusCodeType;


my @gaProperties = ( [ 'Pagination', 'ns:PaginationType', ''
	     ,'eBay::API::XML::DataType::PaginationType', '1' ]
	, [ 'PaymentStatus', 'ns:RCSPaymentStatusCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::RCSPaymentStatusCodeType', '' ]
	, [ 'PaymentTimeFrom', 'xs:dateTime', '', '', '' ]
	, [ 'PaymentTimeTo', 'xs:dateTime', '', '', '' ]
                    );
push @gaProperties, @{eBay::API::XML::RequestDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::RequestDataType::getAttributesList()};

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



=head2 setPagination()

If many payments are available, you may need to call GetSellerPayments
multiple times to retrieve all the data. Each result set is returned as a
page of entries. Use this Pagination information to indicate the maximum
number of entries to retrieve per page (i.e., per call), the page number
to retrieve, and other data.

  RequiredInput: No
#    Argument: 'ns:PaginationType'

=cut

sub setPagination {
  my $self = shift;
  $self->{'Pagination'} = shift
}

=head2 getPagination()

#    Returns: 'ns:PaginationType'

=cut

sub getPagination {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Pagination'
		,'eBay::API::XML::DataType::PaginationType');
}


=head2 setPaymentStatus()

Filter to retrieve only items with the specified payment status (Paid or
Pending). "Pending payments" are payments that Half.com has created but
that have not yet been sent to the seller's financial institution. Pending
payments are typically available once a buyer pays for an order. As
Half.com processes payments by using periodic batch jobs, the
GetSellerPayments response might not include a transaction's payment for
up to 20 minutes after the buyer has paid. You can retrieve pending
payments for the current pay period. Pending payments that have not been
settled yet can also be retrieved for previous pay periods. "Paid
payments" are payments that Half.com processed during previous pay
periods. Paid payments might not appear in the seller's financial
institution account balance until a certain number of days after the
current pay period ends (see the Half.com online help for details). You
can only retrieve paid payments for one previous pay period at a time.

  RequiredInput: Yes
  AllValuesExcept: Canceled
#    Argument: 'ns:RCSPaymentStatusCodeType'

=cut

sub setPaymentStatus {
  my $self = shift;
  $self->{'PaymentStatus'} = shift
}

=head2 getPaymentStatus()

#    Returns: 'ns:RCSPaymentStatusCodeType'

=cut

sub getPaymentStatus {
  my $self = shift;
  return $self->{'PaymentStatus'};
}


=head2 setPaymentTimeFrom()

Time range filter that retrieves Half.com payments that were created within
a single pay period. Sellers can refer to the Half.com site to determine
their pay periods. PaymentTimeFrom is the earliest (oldest) time and
PaymentTimeTo is the latest (most recent) time in the range. Half.com pay
periods start and end at midnight Pacific time, but the time values are
stored in the database in GMT (not Pacific time). See "Time Values" in the
eBay Web Services guide for information about converting between GMT and
Pacific time. <br>
<br>
If you specify a PaymentStatus of Pending, add a buffer of one hour (or one
day) to both ends of the time range to retrieve more data than you need, and
then filter the results on the client side as needed. If any pending
payments match the request, the response may include all payments since the
beginning of the period. <br>
<br>
If you specify a PaymentStatus of Paid, the time range must contain one
full pay period. That is, PaymentTimeFrom must be earlier or equal the
start time of the pay period, and PaymentTimeTo must be later than or
equal to the end time of the pay period. Otherwise, no paid payments are
returned. For example, if the pay period starts on 2005-09-16 and ends on
2005-09-30, you could specify an earlier PaymentTimeFrom value of
2005-09-16T00:00:00.000Z and a later PaymentTimeTo value of
2005-10-01T12:00:00.000Z. <br>
<br>
If you specify a time range that covers two pay periods, only the payments
from the most recent pay period are returned. The earliest time you can
specify is 18 months ago.

  RequiredInput: Yes
#    Argument: 'xs:dateTime'

=cut

sub setPaymentTimeFrom {
  my $self = shift;
  $self->{'PaymentTimeFrom'} = shift
}

=head2 getPaymentTimeFrom()

#    Returns: 'xs:dateTime'

=cut

sub getPaymentTimeFrom {
  my $self = shift;
  return $self->{'PaymentTimeFrom'};
}


=head2 setPaymentTimeTo()

Time range filter that retrieves Half.com payments for a single pay
period. See the description of PaymentTimeTo for details about using this
time range filter. For paid payments, this value should be equal to or
later than the end of the last day of the pay period, where the time is
converted to GMT. For example, if the period ends on 2005-09-30, you could
specify 2005-10-01T09:00:00.000Z, which is later than the end of the last
day.

  RequiredInput: Yes
#    Argument: 'xs:dateTime'

=cut

sub setPaymentTimeTo {
  my $self = shift;
  $self->{'PaymentTimeTo'} = shift
}

=head2 getPaymentTimeTo()

#    Returns: 'xs:dateTime'

=cut

sub getPaymentTimeTo {
  my $self = shift;
  return $self->{'PaymentTimeTo'};
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
