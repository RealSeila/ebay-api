#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::CombinedPaymentOptionCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CombinedPaymentOptionCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::CombinedPaymentOptionCodeType

=head1 DESCRIPTION

Combined Purchase Options



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 NoCombinedPayment

No Combined Purchase



=cut


use constant NoCombinedPayment => scalar('NoCombinedPayment');


=head2 DiscountSpecified

Yes Specify Discount Now



=cut


use constant DiscountSpecified => scalar('DiscountSpecified');


=head2 SpecifyDiscountLater

Yes Specify Discount Later



=cut


use constant SpecifyDiscountLater => scalar('SpecifyDiscountLater');


=head2 CustomCode

Reserved for internal or future use



=cut


use constant CustomCode => scalar('CustomCode');







1;   
