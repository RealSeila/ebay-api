#!/usr/bin/perl

package eBay::API::XML::Call::GeteBayDetails;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GeteBayDetails.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GeteBayDetails

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GeteBayDetails inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GeteBayDetails::GeteBayDetailsRequestType;
use eBay::API::XML::Call::GeteBayDetails::GeteBayDetailsResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GeteBayDetails';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GeteBayDetails::GeteBayDetailsRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GeteBayDetails::GeteBayDetailsResponseType';
}

#
# input properties
#

=head2 setDetailName()

A designation of what kind of information you wish returned
for the specified eBay site. If omitted, all details are
returned.
The possible values for input (the enumeration values of
DetailNameCodeType) are the same name as fields returned by
the response. See the documentation for the
GeteBayDetails response to better understand the DetailName
options.

  RequiredInput: No
#    Argument: reference to an array  
                      of 'ns:DetailNameCodeType'

=cut
       
sub setDetailName {
   my $self   = shift;
   my $sDetailName = shift;
   $self->getRequestDataType()->setDetailName($sDetailName);
}



#
# output properties
#

=head2 getCountryDetails()

Details about a specific country. GeteBayDetails returns all countries in
the system, regardless of the site to which you sent the request.

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:CountryDetailsType'

=cut
       
sub getCountryDetails {
   my $self = shift;
   return $self->getResponseDataType()->getCountryDetails();
}

=head2 getCurrencyDetails()

Details about a specific currency that can be used for listing on an eBay
site. GeteBayDetails returns all site currencies in the system, regardless
of the site to which you sent the request.

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:CurrencyDetailsType'

=cut
       
sub getCurrencyDetails {
   my $self = shift;
   return $self->getResponseDataType()->getCurrencyDetails();
}

=head2 getDispatchTimeMaxDetails()

Details about a specific max dispatch time. A dispatch time specifies the
maximum number of business days a seller commits to for shipping an item
to domestic buyers after receiving a cleared payment. GeteBayDetails
returns all dispatch times in the system, regardless of the site to which
you sent the request.

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:DispatchTimeMaxDetailsType'

=cut
       
sub getDispatchTimeMaxDetails {
   my $self = shift;
   return $self->getResponseDataType()->getDispatchTimeMaxDetails();
}

=head2 getItemSpecificDetails()

The site's validation rules (e.g., string lengths) for custom Item Specifics.

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:ItemSpecificDetailsType'

=cut
       
sub getItemSpecificDetails {
   my $self = shift;
   return $self->getResponseDataType()->getItemSpecificDetails();
}

=head2 getPaymentOptionDetails()

Details about a specific buyer payment method. GeteBayDetails only returns
payment methods that are applicable to the site to which you sent the
request.

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:PaymentOptionDetailsType'

=cut
       
sub getPaymentOptionDetails {
   my $self = shift;
   return $self->getResponseDataType()->getPaymentOptionDetails();
}

=head2 getRegionDetails()

[Ignorable region values for all sites.]

  Returned: Conditionally
  Ignore: 
#    Returns: reference to an array  
                      of 'ns:RegionDetailsType'

=cut
       
sub getRegionDetails {
   my $self = shift;
   return $self->getResponseDataType()->getRegionDetails();
}

=head2 getRegionOfOriginDetails()

Details about the region of origin, specific to a site.

  Returned: Conditionally
  Ignore: 
#    Returns: reference to an array  
                      of 'ns:RegionOfOriginDetailsType'

=cut
       
sub getRegionOfOriginDetails {
   my $self = shift;
   return $self->getResponseDataType()->getRegionOfOriginDetails();
}

=head2 getReturnPolicyDetails()

gives details about the returnpolicy related attributes .

  Returned: Conditionally
#    Returns: 'ns:ReturnPolicyDetailsType'

=cut
       
sub getReturnPolicyDetails {
   my $self = shift;
   return $self->getResponseDataType()->getReturnPolicyDetails();
}

=head2 getShippingCarrierDetails()

The kinds of carrier supported by this shipping service.

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:ShippingCarrierDetailsType'

=cut
       
sub getShippingCarrierDetails {
   my $self = shift;
   return $self->getResponseDataType()->getShippingCarrierDetails();
}

=head2 getShippingLocationDetails()

Details about a location or region to which the seller is willing to ship.
GeteBayDetails returns all shipping locations in the system, regardless of
the site to which you sent the request.

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:ShippingLocationDetailsType'

=cut
       
sub getShippingLocationDetails {
   my $self = shift;
   return $self->getResponseDataType()->getShippingLocationDetails();
}

=head2 getShippingPackageDetails()

Details about various shipping packages.

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:ShippingPackageDetailsType'

=cut
       
sub getShippingPackageDetails {
   my $self = shift;
   return $self->getResponseDataType()->getShippingPackageDetails();
}

=head2 getShippingServiceDetails()

Details about a specific shipping service. GeteBayDetails only returns
shipping services that are applicable to the site to which you sent the
request.

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:ShippingServiceDetailsType'

=cut
       
sub getShippingServiceDetails {
   my $self = shift;
   return $self->getResponseDataType()->getShippingServiceDetails();
}

=head2 getSiteDetails()

Details about a specific eBay site. GeteBayDetails returns all sites in
the system, regardless of the site to which you sent the request.

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:SiteDetailsType'

=cut
       
sub getSiteDetails {
   my $self = shift;
   return $self->getResponseDataType()->getSiteDetails();
}

=head2 getTaxJurisdiction()

Details about a specific tax jurisdiction or tax region. GeteBayDetails
only returns jurisdictions that are applicable to the site to which you
sent the request.<br><br>
Related fields:<br>
TaxTable.TaxJurisdiction in SetTaxTable<br>
Item.UseTaxTable in Additem

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:TaxJurisdictionType'

=cut
       
sub getTaxJurisdiction {
   my $self = shift;
   return $self->getResponseDataType()->getTaxJurisdiction();
}

=head2 getTimeZoneDetails()

Details about a specific eBay time zone. GeteBayDetails returns all time
zones eBay supports.

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:TimeZoneDetailsType'

=cut
       
sub getTimeZoneDetails {
   my $self = shift;
   return $self->getResponseDataType()->getTimeZoneDetails();
}

=head2 getURLDetails()

Details about a specific eBay URL. GeteBayDetails only returns URLs that
are applicable to the site to which you sent the request.

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:URLDetailsType'

=cut
       
sub getURLDetails {
   my $self = shift;
   return $self->getResponseDataType()->getURLDetails();
}

=head2 getUnitOfMeasurementDetails()

Suggested text to use when specifying units of measure in custom Item Specifics.

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:UnitOfMeasurementDetailsType'

=cut
       
sub getUnitOfMeasurementDetails {
   my $self = shift;
   return $self->getResponseDataType()->getUnitOfMeasurementDetails();
}





1;   