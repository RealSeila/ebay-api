#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::DisputeStateCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. DisputeStateCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::DisputeStateCodeType

=head1 DESCRIPTION

Defines the current state of the dispute, which determines the values
that are valid for DisputeActivity. DisputeState is an internal value
returned in the response. A value can apply to an Unpaid Item or Item
Not Received dispute. A dispute filed when an item is significantly not
as described in the product listing is a variation of an Item Not
Received dispute.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Locked

(out) The dispute is locked and cannot be updated. For any type of
dispute. No values of DisputeActivity are valid.



=cut


use constant Locked => scalar('Locked');


=head2 Closed

(out) The dispute is closed. In some cases, it can be reversed with
SellerReverseDispute. For any type of dispute. No values of
DisputeActivity are valid.



=cut


use constant Closed => scalar('Closed');


=head2 BuyerFirstResponsePayOption

(out) eBay sent the buyer an Unpaid Item Reminder with a Pay Now
option. Waiting for the buyer's first response. It is within the 7-day
grace period. For Unpaid Item disputes. DisputeActivity can be
SellerAddInformation or SellerCompletedTransaction.



=cut


use constant BuyerFirstResponsePayOption => scalar('BuyerFirstResponsePayOption');


=head2 BuyerFirstResponseNoPayOption

(out) eBay sent the buyer an Unpaid Item Reminder with no Pay Now
option. Waiting for the buyer's first response. It is within the 7-day
grace period. For Unpaid Item disputes. DisputeActivity can be
SellerAddInformation or SellerCompletedTransaction.



=cut


use constant BuyerFirstResponseNoPayOption => scalar('BuyerFirstResponseNoPayOption');


=head2 BuyerFirstResponsePayOptionLateResponse

(out) eBay sent the buyer an Unpaid Item Reminder with a Pay Now
option. Waiting for the buyer's first response. The 7-day grace
period has expired. For Unpaid Item disputes. DisputeActivity can be
SellerAddInformation, SellerCompletedTransaction, or
SellerEndCommunication.



=cut


use constant BuyerFirstResponsePayOptionLateResponse => scalar('BuyerFirstResponsePayOptionLateResponse');


=head2 BuyerFirstResponseNoPayOptionLateResponse

(out) eBay sent the buyer an Unpaid Item Reminder with no Pay Now
option. Waiting for the buyer's first response. The 7-day grace
period has expired. For Unpaid Item disputes. DisputeActivity can be
SellerAddInformation, SellerCompletedTransaction, or
SellerEndCommunication.



=cut


use constant BuyerFirstResponseNoPayOptionLateResponse => scalar('BuyerFirstResponseNoPayOptionLateResponse');


=head2 MutualCommunicationPayOption

(out) The buyer and seller have communicated, and eBay offered the buyer
a Pay Now option. For Unpaid Item disputes. DisputeActivity
can be SellerAddInformation, SellerCompletedTransaction,
SellerEndCommunication, or CameToAgreementNeedFVFCredit.



=cut


use constant MutualCommunicationPayOption => scalar('MutualCommunicationPayOption');


=head2 MutualCommunicationNoPayOption

(out) The buyer and seller have communicated. eBay did not offer
the buyer a Pay Now option. For Unpaid Item disputes. DisputeActivity can
be SellerAddInformation, SellerCompletedTransaction,
SellerEndCommunication, or CameToAgreementNeedFVFCredit.



=cut


use constant MutualCommunicationNoPayOption => scalar('MutualCommunicationNoPayOption');


=head2 PendingResolve

(out) The dispute is pending resolution. A dispute cannot be closed
when it is in this state. For Unpaid Item disputes.
No values of DisputeActivity are valid.



=cut


use constant PendingResolve => scalar('PendingResolve');


=head2 MutualWithdrawalAgreement

(out) The buyer and seller have agreed within the grace period not
to complete the transaction. For Unpaid Item disputes.
DisputeActivity can be SellerAddInformation.



=cut


use constant MutualWithdrawalAgreement => scalar('MutualWithdrawalAgreement');


=head2 MutualWithdrawalAgreementLate

(out) The buyer and seller have agreed not to complete the
transaction, after the grace period. For Unpaid Item disputes.
DisputeActivity can be SellerAddInformation,
SellerCompletedTransaction, or SellerEndCommunication.



=cut


use constant MutualWithdrawalAgreementLate => scalar('MutualWithdrawalAgreementLate');


=head2 NotReceivedNoSellerResponse

(out) The buyer filed an Item Not Received dispute, and the seller
has not responded. For Item Not Received disputes. DisputeActivity
can be SellerOffersRefund, SellerShippedItem, or SellerComment.



=cut


use constant NotReceivedNoSellerResponse => scalar('NotReceivedNoSellerResponse');


=head2 NotAsDescribedNoSellerResponse

(out) The buyer filed an Item Not Received dispute for an item
significantly not as described, and the seller has not responded.
DisputeActivity can be SellerOffersRefund or SellerComment.



=cut


use constant NotAsDescribedNoSellerResponse => scalar('NotAsDescribedNoSellerResponse');


=head2 NotReceivedMutualCommunication

(out) The buyer filed an Item Not Received dispute and is
communicating with the seller. DisputeActivity can be
SellerOffersRefund, SellerShippedItem, or SellerComment.



=cut


use constant NotReceivedMutualCommunication => scalar('NotReceivedMutualCommunication');


=head2 NotAsDescribedMutualCommunication

(out) The buyer filed an Item Not Received dispute for an item
significantly not as described and is communicating with the seller.
DisputeActivity can be SellerOffersRefund.



=cut


use constant NotAsDescribedMutualCommunication => scalar('NotAsDescribedMutualCommunication');


=head2 MutualAgreementOrBuyerReturningItem

(out) The seller says mutual agreement has been reached and is
waiting for the buyer to confirm, or the buyer is returning the item
to the seller. DisputeActivity can be SellerAddInformation.
For Unpaid Item disputes.



=cut


use constant MutualAgreementOrBuyerReturningItem => scalar('MutualAgreementOrBuyerReturningItem');


=head2 ClaimOpened

The claim was assigned to an adjuster.



=cut


use constant ClaimOpened => scalar('ClaimOpened');


=head2 NoDocumentation

The buyer was contacted by eBay and asked to submit paperwork to
support the claim.



=cut


use constant NoDocumentation => scalar('NoDocumentation');


=head2 ClaimClosed

The buyer did not respond to verification or was missing paperwork.



=cut


use constant ClaimClosed => scalar('ClaimClosed');


=head2 ClaimDenied

The buyer is not eligible for reimbursement.



=cut


use constant ClaimDenied => scalar('ClaimDenied');


=head2 ClaimPending

Paperwork was received from the buyer and the claim is being investigated.



=cut


use constant ClaimPending => scalar('ClaimPending');


=head2 ClaimPaymentPending

The buyer's claim was approved for reimbursement and was
sent to accounts payable for payment.



=cut


use constant ClaimPaymentPending => scalar('ClaimPaymentPending');


=head2 ClaimPaid

The buyer was reimbursed.



=cut


use constant ClaimPaid => scalar('ClaimPaid');


=head2 ClaimResolved

The issue has been resolved: the seller sent the item or a refund.



=cut


use constant ClaimResolved => scalar('ClaimResolved');


=head2 ClaimSubmitted

(out) A claim was submitted (via Web).



=cut


use constant ClaimSubmitted => scalar('ClaimSubmitted');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
