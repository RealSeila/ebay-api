#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::GeneralPaymentMethodCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GeneralPaymentMethodCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::GeneralPaymentMethodCodeType

=head1 DESCRIPTION

GeneralPaymentMethodCodeType - Type declaration to be used by other
schema. This code identifies the general types of payment means,
e.g., used by payment service provider applications.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Other

Custom Code.



=cut


use constant Other => scalar('Other');


=head2 Echeck

Electronic check.



=cut


use constant Echeck => scalar('Echeck');


=head2 ACH

ACH.



=cut


use constant ACH => scalar('ACH');


=head2 Creditcard

Credit-card.



=cut


use constant Creditcard => scalar('Creditcard');


=head2 PayPalBalance

Pay balance.



=cut


use constant PayPalBalance => scalar('PayPalBalance');


=head2 CustomCode

Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
