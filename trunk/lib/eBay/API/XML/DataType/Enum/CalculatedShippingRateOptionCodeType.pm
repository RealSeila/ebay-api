#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::CalculatedShippingRateOptionCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CalculatedShippingRateOptionCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::CalculatedShippingRateOptionCodeType

=head1 DESCRIPTION

Calculated Shipping Rate Options.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 CombinedItemWeight

Calculate the Actual Shipping Rate from Combined Item Weight



=cut


use constant CombinedItemWeight => scalar('CombinedItemWeight');


=head2 IndividualItemWeight

Calculate the Actual Shipping Rate from Individual Item Weight



=cut


use constant IndividualItemWeight => scalar('IndividualItemWeight');


=head2 CustomCode

Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   