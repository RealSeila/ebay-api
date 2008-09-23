#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::PaymentHoldStatusCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PaymentHoldStatusCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::PaymentHoldStatusCodeType

=head1 DESCRIPTION

The status of payment holds.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 PaymentReview

The payment hold referred to as a "payment review" hold results from a possible issue with a buyer.
If this value is returned, then the following values, as a result, will be returned:
In GetMyeBaySelling, NotPaid is returned in TransactionArray.Transaction.SellerPaidStatus.
In GetMyeBayBuying, PaidWithPayPal is returned in TransactionArray.Transaction.BuyerPaidStatus.



=cut


use constant PaymentReview => scalar('PaymentReview');


=head2 MerchantHold

The payment hold referred to as a "merchant hold" results from a possible issue with a seller.
If this value is returned, then the following values, as a result, will be returned:
In GetMyeBaySelling, PaidWithPayPal is returned in TransactionArray.Transaction.SellerPaidStatus.
In GetMyeBayBuying, PaidWithPayPal is returned in TransactionArray.Transaction.BuyerPaidStatus.



=cut


use constant MerchantHold => scalar('MerchantHold');


=head2 Released

Indicates that a payment hold has been released.



=cut


use constant Released => scalar('Released');


=head2 None

Indicates that there is no payment review hold and no merchant hold.



=cut


use constant None => scalar('None');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
