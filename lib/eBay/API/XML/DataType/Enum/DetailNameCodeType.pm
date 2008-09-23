#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::DetailNameCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. DetailNameCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::DetailNameCodeType

=head1 DESCRIPTION

A designation of what kind of information you wish returned by
GeteBayDetails for the specified eBay site.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 CountryDetails

Details about a specific country.



=cut


use constant CountryDetails => scalar('CountryDetails');


=head2 CurrencyDetails

Details about a specific currency.



=cut


use constant CurrencyDetails => scalar('CurrencyDetails');


=head2 PaymentOptionDetails

Details about a specific payment option.



=cut


use constant PaymentOptionDetails => scalar('PaymentOptionDetails');


=head2 RegionDetails

Not functional. Do not specify this value.



=cut


use constant RegionDetails => scalar('RegionDetails');


=head2 ShippingLocationDetails

Details about a specific location or region to which the
seller is willing to ship.



=cut


use constant ShippingLocationDetails => scalar('ShippingLocationDetails');


=head2 ShippingServiceDetails

Details about a specific shipping service.



=cut


use constant ShippingServiceDetails => scalar('ShippingServiceDetails');


=head2 SiteDetails

Details about a specific eBay site.



=cut


use constant SiteDetails => scalar('SiteDetails');


=head2 TaxJurisdiction

Details about a specific tax jurisdiction or region.



=cut


use constant TaxJurisdiction => scalar('TaxJurisdiction');


=head2 URLDetails

Details about a specific eBay URL.



=cut


use constant URLDetails => scalar('URLDetails');


=head2 TimeZoneDetails

Details about a specific time zone.



=cut


use constant TimeZoneDetails => scalar('TimeZoneDetails');


=head2 RegionOfOriginDetails

Details about the region of origin of a listing.



=cut


use constant RegionOfOriginDetails => scalar('RegionOfOriginDetails');


=head2 DispatchTimeMaxDetails

Details about a specific maximum dispatch time.



=cut


use constant DispatchTimeMaxDetails => scalar('DispatchTimeMaxDetails');


=head2 ItemSpecificDetails

Details about Item Specifics rules for the site.



=cut


use constant ItemSpecificDetails => scalar('ItemSpecificDetails');


=head2 UnitOfMeasurementDetails

Details about suggested unit of measure strings to
use when listing items with Item Specifics.



=cut


use constant UnitOfMeasurementDetails => scalar('UnitOfMeasurementDetails');


=head2 ShippingPackageDetails

Details about various Shipping Packages.



=cut


use constant ShippingPackageDetails => scalar('ShippingPackageDetails');


=head2 CustomCode

Reserved for future use.



=cut


use constant CustomCode => scalar('CustomCode');


=head2 ShippingCarrierDetails

Details about various Shipping Carriers.



=cut


use constant ShippingCarrierDetails => scalar('ShippingCarrierDetails');


=head2 ReturnPolicyDetails

Details about various options in the return policy.



=cut


use constant ReturnPolicyDetails => scalar('ReturnPolicyDetails');







1;   
