#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::CalculatedShippingChargeOptionCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CalculatedShippingChargeOptionCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::CalculatedShippingChargeOptionCodeType

=head1 DESCRIPTION

Calculated Shipping Charge Options



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 ChargeEachItem

Charge the actual shipping cost and my full packaging and handling
fee for each item.



=cut


use constant ChargeEachItem => scalar('ChargeEachItem');


=head2 ChargeEntireOrder

Charge the actual shipping cost and a packaging and handling fee of
X amount for the entire order.



=cut


use constant ChargeEntireOrder => scalar('ChargeEntireOrder');


=head2 CustomCode

Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
