#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::ShippingTypeCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ShippingTypeCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::ShippingTypeCodeType

=head1 DESCRIPTION

The shipping cost model offered by the seller.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Flat

Flat shipping model: the seller establishes the cost
of shipping and cost of shipping insurance, regardless of
what any buyer-selected shipping service might charge the
seller.



=cut


use constant Flat => scalar('Flat');


=head2 Calculated

Calculated shipping model: the cost of shipping is
determined in large part by the seller-offered and
buyer-selected shipping service. The seller might assess an
additional fee via PackagingHandlingCosts.



=cut


use constant Calculated => scalar('Calculated');


=head2 Freight

Freight shipping model: the cost of shipping is
determined by a third party, FreightQuote.com, based on the item
location (zip code). Currently, Freight can only be specified
on input via eBay Web site, not API.



=cut


use constant Freight => scalar('Freight');


=head2 Free

Free shipping. Returned only by GetSearchResults and GetProducts.
This field is output-only so if you want to use AddItem to specify a free
Shipping Cost, specify 0 in
Item.ShippingDetails.ShippingServiceOptions.ShippingServiceCost.



=cut


use constant Free => scalar('Free');


=head2 NotSpecified

The seller did not specify the shipping type.



=cut


use constant NotSpecified => scalar('NotSpecified');


=head2 FlatDomesticCalculatedInternational

The seller specified one or more flat domestic shipping services
and one or more calculated international shipping services.



=cut


use constant FlatDomesticCalculatedInternational => scalar('FlatDomesticCalculatedInternational');


=head2 CalculatedDomesticFlatInternational

The seller specified one or more calculated domestic shipping services
and one or more flat international shipping services.



=cut


use constant CalculatedDomesticFlatInternational => scalar('CalculatedDomesticFlatInternational');


=head2 FreightFlat

Freight shipping model: freight shipping may be used when
flat or calculated shipping cannot be used due to the greater weight
of the item.  See "Specifying Freight Shipping" in the Shipping
chapter for details on freight shipping.



=cut


use constant FreightFlat => scalar('FreightFlat');


=head2 CustomCode

Reserved for future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
