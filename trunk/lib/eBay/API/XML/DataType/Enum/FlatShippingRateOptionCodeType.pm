#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::FlatShippingRateOptionCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. FlatShippingRateOptionCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::FlatShippingRateOptionCodeType

=head1 DESCRIPTION

Flat Shipping Rate Options



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 ChargeAmountForEachAdditionalItem

Charge highest shipping cost for the first item and
X amount for each
additional item.



=cut


use constant ChargeAmountForEachAdditionalItem => scalar('ChargeAmountForEachAdditionalItem');


=head2 DeductAmountFromEachAdditionalItem

Charge highest shipping cost for the first item and deduct X amount from the
shipping cost of each additional item.



=cut


use constant DeductAmountFromEachAdditionalItem => scalar('DeductAmountFromEachAdditionalItem');


=head2 ShipAdditionalItemsFree

Charge highest shipping cost for the first item and ship each additional item free.



=cut


use constant ShipAdditionalItemsFree => scalar('ShipAdditionalItemsFree');


=head2 CustomCode

Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
