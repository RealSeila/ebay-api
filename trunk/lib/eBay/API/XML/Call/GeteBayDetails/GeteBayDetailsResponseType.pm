#!/usr/bin/perl

package eBay::API::XML::Call::GeteBayDetails::GeteBayDetailsResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GeteBayDetailsResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GeteBayDetails::GeteBayDetailsResponseType

=head1 DESCRIPTION

Details about a specified site in response to GeteBayDetailsRequest.
If no DetailName is identified in the request, all elements of
GeteBayDetailsResponse are returned. Otherwise, only the element
corresponding to the specified DetailName is returned.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GeteBayDetails::GeteBayDetailsResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::CountryDetailsType;
use eBay::API::XML::DataType::CurrencyDetailsType;
use eBay::API::XML::DataType::DispatchTimeMaxDetailsType;
use eBay::API::XML::DataType::ItemSpecificDetailsType;
use eBay::API::XML::DataType::PaymentOptionDetailsType;
use eBay::API::XML::DataType::RegionDetailsType;
use eBay::API::XML::DataType::RegionOfOriginDetailsType;
use eBay::API::XML::DataType::ShippingCarrierDetailsType;
use eBay::API::XML::DataType::ShippingLocationDetailsType;
use eBay::API::XML::DataType::ShippingPackageDetailsType;
use eBay::API::XML::DataType::ShippingServiceDetailsType;
use eBay::API::XML::DataType::SiteDetailsType;
use eBay::API::XML::DataType::TaxJurisdictionType;
use eBay::API::XML::DataType::TimeZoneDetailsType;
use eBay::API::XML::DataType::URLDetailsType;
use eBay::API::XML::DataType::UnitOfMeasurementDetailsType;


my @gaProperties = ( [ 'CountryDetails', 'ns:CountryDetailsType', '1'
	     ,'eBay::API::XML::DataType::CountryDetailsType', '1' ]
	, [ 'CurrencyDetails', 'ns:CurrencyDetailsType', '1'
	     ,'eBay::API::XML::DataType::CurrencyDetailsType', '1' ]
	, [ 'DispatchTimeMaxDetails', 'ns:DispatchTimeMaxDetailsType', '1'
	     ,'eBay::API::XML::DataType::DispatchTimeMaxDetailsType', '1' ]
	, [ 'ItemSpecificDetails', 'ns:ItemSpecificDetailsType', '1'
	     ,'eBay::API::XML::DataType::ItemSpecificDetailsType', '1' ]
	, [ 'PaymentOptionDetails', 'ns:PaymentOptionDetailsType', '1'
	     ,'eBay::API::XML::DataType::PaymentOptionDetailsType', '1' ]
	, [ 'RegionDetails', 'ns:RegionDetailsType', '1'
	     ,'eBay::API::XML::DataType::RegionDetailsType', '1' ]
	, [ 'RegionOfOriginDetails', 'ns:RegionOfOriginDetailsType', '1'
	     ,'eBay::API::XML::DataType::RegionOfOriginDetailsType', '1' ]
	, [ 'ShippingCarrierDetails', 'ns:ShippingCarrierDetailsType', '1'
	     ,'eBay::API::XML::DataType::ShippingCarrierDetailsType', '1' ]
	, [ 'ShippingLocationDetails', 'ns:ShippingLocationDetailsType', '1'
	     ,'eBay::API::XML::DataType::ShippingLocationDetailsType', '1' ]
	, [ 'ShippingPackageDetails', 'ns:ShippingPackageDetailsType', '1'
	     ,'eBay::API::XML::DataType::ShippingPackageDetailsType', '1' ]
	, [ 'ShippingServiceDetails', 'ns:ShippingServiceDetailsType', '1'
	     ,'eBay::API::XML::DataType::ShippingServiceDetailsType', '1' ]
	, [ 'SiteDetails', 'ns:SiteDetailsType', '1'
	     ,'eBay::API::XML::DataType::SiteDetailsType', '1' ]
	, [ 'TaxJurisdiction', 'ns:TaxJurisdictionType', '1'
	     ,'eBay::API::XML::DataType::TaxJurisdictionType', '1' ]
	, [ 'TimeZoneDetails', 'ns:TimeZoneDetailsType', '1'
	     ,'eBay::API::XML::DataType::TimeZoneDetailsType', '1' ]
	, [ 'URLDetails', 'ns:URLDetailsType', '1'
	     ,'eBay::API::XML::DataType::URLDetailsType', '1' ]
	, [ 'UnitOfMeasurementDetails', 'ns:UnitOfMeasurementDetailsType', '1'
	     ,'eBay::API::XML::DataType::UnitOfMeasurementDetailsType', '1' ]
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



=head2 setCountryDetails()

Details about a specific country. GeteBayDetails returns all countries in
the system, regardless of the site to which you sent the request.

#    Argument: reference to an array  
                      of 'ns:CountryDetailsType'

=cut

sub setCountryDetails {
  my $self = shift;
  $self->{'CountryDetails'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getCountryDetails()

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:CountryDetailsType'

=cut

sub getCountryDetails {
  my $self = shift;
  return $self->_getDataTypeArray('CountryDetails');
}


=head2 setCurrencyDetails()

Details about a specific currency that can be used for listing on an eBay
site. GeteBayDetails returns all site currencies in the system, regardless
of the site to which you sent the request.

#    Argument: reference to an array  
                      of 'ns:CurrencyDetailsType'

=cut

sub setCurrencyDetails {
  my $self = shift;
  $self->{'CurrencyDetails'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getCurrencyDetails()

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:CurrencyDetailsType'

=cut

sub getCurrencyDetails {
  my $self = shift;
  return $self->_getDataTypeArray('CurrencyDetails');
}


=head2 setDispatchTimeMaxDetails()

Details about a specific max dispatch time. A dispatch time specifies the
maximum number of business days a seller commits to for shipping an item
to domestic buyers after receiving a cleared payment. GeteBayDetails
returns all dispatch times in the system, regardless of the site to which
you sent the request.

#    Argument: reference to an array  
                      of 'ns:DispatchTimeMaxDetailsType'

=cut

sub setDispatchTimeMaxDetails {
  my $self = shift;
  $self->{'DispatchTimeMaxDetails'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getDispatchTimeMaxDetails()

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:DispatchTimeMaxDetailsType'

=cut

sub getDispatchTimeMaxDetails {
  my $self = shift;
  return $self->_getDataTypeArray('DispatchTimeMaxDetails');
}


=head2 setItemSpecificDetails()

The site's validation rules (e.g., string lengths) for custom Item Specifics.

#    Argument: reference to an array  
                      of 'ns:ItemSpecificDetailsType'

=cut

sub setItemSpecificDetails {
  my $self = shift;
  $self->{'ItemSpecificDetails'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getItemSpecificDetails()

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:ItemSpecificDetailsType'

=cut

sub getItemSpecificDetails {
  my $self = shift;
  return $self->_getDataTypeArray('ItemSpecificDetails');
}


=head2 setPaymentOptionDetails()

Details about a specific buyer payment method. GeteBayDetails only returns
payment methods that are applicable to the site to which you sent the
request.

#    Argument: reference to an array  
                      of 'ns:PaymentOptionDetailsType'

=cut

sub setPaymentOptionDetails {
  my $self = shift;
  $self->{'PaymentOptionDetails'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getPaymentOptionDetails()

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:PaymentOptionDetailsType'

=cut

sub getPaymentOptionDetails {
  my $self = shift;
  return $self->_getDataTypeArray('PaymentOptionDetails');
}


=head2 setRegionDetails()

[Ignorable region values for all sites.]

#    Argument: reference to an array  
                      of 'ns:RegionDetailsType'

=cut

sub setRegionDetails {
  my $self = shift;
  $self->{'RegionDetails'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getRegionDetails()

  Returned: Conditionally
  Ignore: 
#    Returns: reference to an array  
                      of 'ns:RegionDetailsType'

=cut

sub getRegionDetails {
  my $self = shift;
  return $self->_getDataTypeArray('RegionDetails');
}


=head2 setRegionOfOriginDetails()

Details about the region of origin, specific to a site.

#    Argument: reference to an array  
                      of 'ns:RegionOfOriginDetailsType'

=cut

sub setRegionOfOriginDetails {
  my $self = shift;
  $self->{'RegionOfOriginDetails'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getRegionOfOriginDetails()

  Returned: Conditionally
  Ignore: 
#    Returns: reference to an array  
                      of 'ns:RegionOfOriginDetailsType'

=cut

sub getRegionOfOriginDetails {
  my $self = shift;
  return $self->_getDataTypeArray('RegionOfOriginDetails');
}


=head2 setShippingCarrierDetails()

The kinds of carrier supported by this shipping service.

#    Argument: reference to an array  
                      of 'ns:ShippingCarrierDetailsType'

=cut

sub setShippingCarrierDetails {
  my $self = shift;
  $self->{'ShippingCarrierDetails'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getShippingCarrierDetails()

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:ShippingCarrierDetailsType'

=cut

sub getShippingCarrierDetails {
  my $self = shift;
  return $self->_getDataTypeArray('ShippingCarrierDetails');
}


=head2 setShippingLocationDetails()

Details about a location or region to which the seller is willing to ship.
GeteBayDetails returns all shipping locations in the system, regardless of
the site to which you sent the request.

#    Argument: reference to an array  
                      of 'ns:ShippingLocationDetailsType'

=cut

sub setShippingLocationDetails {
  my $self = shift;
  $self->{'ShippingLocationDetails'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getShippingLocationDetails()

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:ShippingLocationDetailsType'

=cut

sub getShippingLocationDetails {
  my $self = shift;
  return $self->_getDataTypeArray('ShippingLocationDetails');
}


=head2 setShippingPackageDetails()

Details about various shipping packages.

#    Argument: reference to an array  
                      of 'ns:ShippingPackageDetailsType'

=cut

sub setShippingPackageDetails {
  my $self = shift;
  $self->{'ShippingPackageDetails'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getShippingPackageDetails()

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:ShippingPackageDetailsType'

=cut

sub getShippingPackageDetails {
  my $self = shift;
  return $self->_getDataTypeArray('ShippingPackageDetails');
}


=head2 setShippingServiceDetails()

Details about a specific shipping service. GeteBayDetails only returns
shipping services that are applicable to the site to which you sent the
request.

#    Argument: reference to an array  
                      of 'ns:ShippingServiceDetailsType'

=cut

sub setShippingServiceDetails {
  my $self = shift;
  $self->{'ShippingServiceDetails'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getShippingServiceDetails()

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:ShippingServiceDetailsType'

=cut

sub getShippingServiceDetails {
  my $self = shift;
  return $self->_getDataTypeArray('ShippingServiceDetails');
}


=head2 setSiteDetails()

Details about a specific eBay site. GeteBayDetails returns all sites in
the system, regardless of the site to which you sent the request.

#    Argument: reference to an array  
                      of 'ns:SiteDetailsType'

=cut

sub setSiteDetails {
  my $self = shift;
  $self->{'SiteDetails'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getSiteDetails()

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:SiteDetailsType'

=cut

sub getSiteDetails {
  my $self = shift;
  return $self->_getDataTypeArray('SiteDetails');
}


=head2 setTaxJurisdiction()

Details about a specific tax jurisdiction or tax region. GeteBayDetails
only returns jurisdictions that are applicable to the site to which you
sent the request.<br><br>
Related fields:<br>
TaxTable.TaxJurisdiction in SetTaxTable<br>
Item.UseTaxTable in Additem

#    Argument: reference to an array  
                      of 'ns:TaxJurisdictionType'

=cut

sub setTaxJurisdiction {
  my $self = shift;
  $self->{'TaxJurisdiction'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getTaxJurisdiction()

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:TaxJurisdictionType'

=cut

sub getTaxJurisdiction {
  my $self = shift;
  return $self->_getDataTypeArray('TaxJurisdiction');
}


=head2 setTimeZoneDetails()

Details about a specific eBay time zone. GeteBayDetails returns all time
zones eBay supports.

#    Argument: reference to an array  
                      of 'ns:TimeZoneDetailsType'

=cut

sub setTimeZoneDetails {
  my $self = shift;
  $self->{'TimeZoneDetails'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getTimeZoneDetails()

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:TimeZoneDetailsType'

=cut

sub getTimeZoneDetails {
  my $self = shift;
  return $self->_getDataTypeArray('TimeZoneDetails');
}


=head2 setURLDetails()

Details about a specific eBay URL. GeteBayDetails only returns URLs that
are applicable to the site to which you sent the request.

#    Argument: reference to an array  
                      of 'ns:URLDetailsType'

=cut

sub setURLDetails {
  my $self = shift;
  $self->{'URLDetails'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getURLDetails()

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:URLDetailsType'

=cut

sub getURLDetails {
  my $self = shift;
  return $self->_getDataTypeArray('URLDetails');
}


=head2 setUnitOfMeasurementDetails()

Suggested text to use when specifying units of measure in custom Item Specifics.

#    Argument: reference to an array  
                      of 'ns:UnitOfMeasurementDetailsType'

=cut

sub setUnitOfMeasurementDetails {
  my $self = shift;
  $self->{'UnitOfMeasurementDetails'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getUnitOfMeasurementDetails()

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:UnitOfMeasurementDetailsType'

=cut

sub getUnitOfMeasurementDetails {
  my $self = shift;
  return $self->_getDataTypeArray('UnitOfMeasurementDetails');
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
