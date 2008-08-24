#!/usr/bin/perl

package eBay::API::XML::Call::GetShippingDiscountProfiles;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetShippingDiscountProfiles.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetShippingDiscountProfiles

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetShippingDiscountProfiles inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetShippingDiscountProfiles::GetShippingDiscountProfilesRequestType;
use eBay::API::XML::Call::GetShippingDiscountProfiles::GetShippingDiscountProfilesResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetShippingDiscountProfiles';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetShippingDiscountProfiles::GetShippingDiscountProfilesRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetShippingDiscountProfiles::GetShippingDiscountProfilesResponseType';
}

#
# input properties
#



#
# output properties
#

=head2 getCalculatedHandlingDiscount()

The data for the specific packaging/handling details for combined payment.
Returned only if it has been defined.

  Returned: Conditionally
#    Returns: 'ns:CalculatedHandlingDiscountType'

=cut
       
sub getCalculatedHandlingDiscount {
   my $self = shift;
   return $self->getResponseDataType()->getCalculatedHandlingDiscount();
}

=head2 getCalculatedShippingDiscount()

Details of an individual discount profile defined by the
user for calculated shipping--one for each profile defined by the user.
Empty if no shipping discount profiles were defined.

  Returned: Always
#    Returns: 'ns:CalculatedShippingDiscountType'

=cut
       
sub getCalculatedShippingDiscount {
   my $self = shift;
   return $self->getResponseDataType()->getCalculatedShippingDiscount();
}

=head2 getCombinedDuration()

Only those items purchased within CombinedDuration days of each other can
be combined into an order and benefit from any shipping discounts.

  Returned: Always
#    Returns: 'ns:CombinedPaymentPeriodCodeType'

=cut
       
sub getCombinedDuration {
   my $self = shift;
   return $self->getResponseDataType()->getCombinedDuration();
}

=head2 getCurrencyID()

The ID of the currency to be used for shipping cost discounts and
insurance for combined payment. A discount profile can only be associated
with a listing if the currency ID of the profile matches the currency ID
of the listing.

  Returned: Always
#    Returns: 'ns:CurrencyCodeType'

=cut
       
sub getCurrencyID {
   my $self = shift;
   return $self->getResponseDataType()->getCurrencyID();
}

=head2 getFlatShippingDiscount()

Details of an individual discount profile defined by the
user for flat rate shipping--one for each profile defined by the user.
Empty if no shipping discount profiles were defined.

  Returned: Always
#    Returns: 'ns:FlatShippingDiscountType'

=cut
       
sub getFlatShippingDiscount {
   my $self = shift;
   return $self->getResponseDataType()->getFlatShippingDiscount();
}

=head2 getInternationalShippingInsurance()

The data for the international insurance for combined payment.
Returned only if it has been defined.

  Returned: Conditionally
#    Returns: 'ns:ShippingInsuranceType'

=cut
       
sub getInternationalShippingInsurance {
   my $self = shift;
   return $self->getResponseDataType()->getInternationalShippingInsurance();
}

=head2 isPromotionalShippingDiscount()

Indicates whether the user defined a promotional discount (the discount is active
as soon as it exists).

  Returned: Always
#    Returns: 'xs:boolean'

=cut
       
sub isPromotionalShippingDiscount {
   my $self = shift;
   return $self->getResponseDataType()->isPromotionalShippingDiscount();
}

=head2 getPromotionalShippingDiscountDetails()

The data for the specific promotional shipping discount.
Returned only if it has been defined.

  Returned: Conditionally
#    Returns: 'ns:PromotionalShippingDiscountDetailsType'

=cut
       
sub getPromotionalShippingDiscountDetails {
   my $self = shift;
   return $self->getResponseDataType()->getPromotionalShippingDiscountDetails();
}

=head2 getShippingInsurance()

The data for the domestic insurance for combined payment.
Returned only if it has been defined.

  Returned: Conditionally
#    Returns: 'ns:ShippingInsuranceType'

=cut
       
sub getShippingInsurance {
   my $self = shift;
   return $self->getResponseDataType()->getShippingInsurance();
}





1;   