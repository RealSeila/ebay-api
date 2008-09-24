#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::RefundTypeCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. RefundTypeCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::RefundTypeCodeType

=head1 DESCRIPTION

Explanation of the reason that the refund is being issued. Applicable to Half.com
refunds only.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Full

The seller has issued a refund for the transaction price that
was originally paid to the seller.
(The seller's shipping reimbursement is not included
if Half.com calculates the refund amount).



=cut


use constant Full => scalar('Full');


=head2 FullPlusShipping

The seller has issued a refund for the transaction price and
shipping reimbursement that was originally paid to the seller.
(The buyer's return shipping costs
might not be included if Half.com calculates the refund amount.)



=cut


use constant FullPlusShipping => scalar('FullPlusShipping');


=head2 CustomOrPartial

The seller has issued a refund amount that is different from
the full refund (with or without shipping). If specified,
it may be helpful to explain the amount in your note to the buyer.



=cut


use constant CustomOrPartial => scalar('CustomOrPartial');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
