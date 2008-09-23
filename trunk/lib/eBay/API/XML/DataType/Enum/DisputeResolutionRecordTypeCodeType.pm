#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::DisputeResolutionRecordTypeCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. DisputeResolutionRecordTypeCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::DisputeResolutionRecordTypeCodeType

=head1 DESCRIPTION

Specifies the action taken by eBay as a result of the dispute resolution.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 StrikeBuyer

(out) The buyer received an Unpaid Item Strike.



=cut


use constant StrikeBuyer => scalar('StrikeBuyer');


=head2 SuspendBuyer

(out) The buyer is suspended and unable to use the eBay site.



=cut


use constant SuspendBuyer => scalar('SuspendBuyer');


=head2 FVFCredit

(out) The seller received a Final Value Fee credit.



=cut


use constant FVFCredit => scalar('FVFCredit');


=head2 InsertionFeeCredit

(out) The seller's listing fee was credited.



=cut


use constant InsertionFeeCredit => scalar('InsertionFeeCredit');


=head2 AppealBuyerStrike

(out) The buyer's unpaid item strike was appealed.



=cut


use constant AppealBuyerStrike => scalar('AppealBuyerStrike');


=head2 UnsuspendBuyer

(out)The buyer's suspension was reversed.



=cut


use constant UnsuspendBuyer => scalar('UnsuspendBuyer');


=head2 ReverseFVFCredit

(out) The seller's Final Value Fee credit was reversed.



=cut


use constant ReverseFVFCredit => scalar('ReverseFVFCredit');


=head2 ReverseInsertionFeeCredit

(out) The seller's listing fee was reversed.



=cut


use constant ReverseInsertionFeeCredit => scalar('ReverseInsertionFeeCredit');


=head2 GenerateCSTicketForSuspend

(out) The buyer is given a ticket.



=cut


use constant GenerateCSTicketForSuspend => scalar('GenerateCSTicketForSuspend');


=head2 FVFCreditNotGranted

(out) The seller did not receive a Final Value Fee credit.



=cut


use constant FVFCreditNotGranted => scalar('FVFCreditNotGranted');


=head2 ItemNotReceivedClaimFiled

(out) The buyer did not received the item, and the buyer filed a claim.



=cut


use constant ItemNotReceivedClaimFiled => scalar('ItemNotReceivedClaimFiled');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
