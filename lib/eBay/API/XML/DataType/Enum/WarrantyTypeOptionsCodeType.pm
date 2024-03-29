#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::WarrantyTypeOptionsCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. WarrantyTypeOptionsCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::WarrantyTypeOptionsCodeType

=head1 DESCRIPTION

Specifies the various warranty type being offered.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 ReplacementWarranty

The item will be replaced, if under warranty.



=cut


use constant ReplacementWarranty => scalar('ReplacementWarranty');


=head2 DealerWarranty

The warranty is offered by the dealer.



=cut


use constant DealerWarranty => scalar('DealerWarranty');


=head2 ManufacturerWarranty

The warranty is offered by the manufacturer.



=cut


use constant ManufacturerWarranty => scalar('ManufacturerWarranty');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
