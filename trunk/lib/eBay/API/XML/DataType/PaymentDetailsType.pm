#!/usr/bin/perl

package eBay::API::XML::DataType::PaymentDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PaymentDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::PaymentDetailsType

=head1 DESCRIPTION

Data associated with payment (payment durations).



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::PaymentDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'DaysToFullPayment', 'xs:int', '', '', '' ]
	, [ 'HoursToDeposit', 'xs:int', '', '', '' ]
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



=head2 setDaysToFullPayment()

Applies to vehicle categories on the US and Canada eBay Motors sites
(not Parts and Accessories categories).
Number of days after a listing closes that the buyer can take to pay
the full cost of the vehicle. The choices are 3, 7, 10, and 14,
and the default is 7. PayPal and credit cards cannot be used
to pay the full cost of a vehicle, so the listing must
offer MOCC (cashier's check), PersonalCheck, LoanCheck, CashInPerson,
and/or PaymentSeeDescription as payment methods.

Default: 7

  Calls: AddItem
         GetItemRecommendations
         RelistItem
         ReviseItem
         VerifyAddItem
  RequiredInput: No

#    Argument: 'xs:int'

=cut

sub setDaysToFullPayment {
  my $self = shift;
  $self->{'DaysToFullPayment'} = shift
}

=head2 getDaysToFullPayment()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

#    Returns: 'xs:int'

=cut

sub getDaysToFullPayment {
  my $self = shift;
  return $self->{'DaysToFullPayment'};
}


=head2 setHoursToDeposit()

Applies to US eBay Motors site (except Parts and Accessories category).
Number of hours after a listing closes that the buyer can put down a deposit
on an item (if the seller specified a deposit).
Only takes effect if listing also includes the
Deposit Amount and Deposit Type attributes (see AttributeSetArray).
The choices are 24, 48, and 72, and the default is 48.
Deposits can only be paid using PayPal, so the listing must offer
PayPal as a payment method (in addition to the payment methods
offered for the full payment).

Default: 48

  Calls: AddItem
         GetItemRecommendations
         RelistItem
         ReviseItem
         VerifyAddItem
  RequiredInput: No

#    Argument: 'xs:int'

=cut

sub setHoursToDeposit {
  my $self = shift;
  $self->{'HoursToDeposit'} = shift
}

=head2 getHoursToDeposit()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

#    Returns: 'xs:int'

=cut

sub getHoursToDeposit {
  my $self = shift;
  return $self->{'HoursToDeposit'};
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
