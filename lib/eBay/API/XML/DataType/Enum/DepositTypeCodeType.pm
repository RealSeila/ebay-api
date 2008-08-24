#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::DepositTypeCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. DepositTypeCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::DepositTypeCodeType

=head1 DESCRIPTION

For vehicles listed through the US eBay Motors site, DepositType
indicates how the buyer should pay the deposit amount. It is
used in conjunction with a buyer payment method (BuyerPaymentMethodCodeType).



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 None

(out) No deposit needed.



=cut


use constant None => scalar('None');


=head2 OtherMethod

(out) Pay the deposit using PayPal, and then
use any of the other specified payment methods to pay the balance.



=cut


use constant OtherMethod => scalar('OtherMethod');


=head2 FastDeposit

(out) No longer used.



=cut


use constant FastDeposit => scalar('FastDeposit');


=head2 CustomCode

(out) Reserved for internal or future use



=cut


use constant CustomCode => scalar('CustomCode');







1;   
