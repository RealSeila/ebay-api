#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::SearchFlagsCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SearchFlagsCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::SearchFlagsCodeType

=head1 DESCRIPTION

SearchFlagsCodeType - Search flags for GetSearchResults.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Charity

Return only charity item listings.



=cut


use constant Charity => scalar('Charity');


=head2 SearchInDescription

Include the description field of item listings in keyword search. Item
listings returned are those where specified search keywords appear in
the description, as well as the title and sub-title.



=cut


use constant SearchInDescription => scalar('SearchInDescription');


=head2 PayPalBuyerPaymentOption

Return only item listings where PayPal is a payment method offered by the
seller.



=cut


use constant PayPalBuyerPaymentOption => scalar('PayPalBuyerPaymentOption');


=head2 NowAndNew

(in) Return only items that have been listed with Now and New. Applicable for
certain sites only. See the eBay Web Services Guide.



=cut


use constant NowAndNew => scalar('NowAndNew');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
