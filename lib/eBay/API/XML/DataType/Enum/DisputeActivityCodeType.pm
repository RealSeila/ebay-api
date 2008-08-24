#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::DisputeActivityCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. DisputeActivityCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::DisputeActivityCodeType

=head1 DESCRIPTION

Defines the action taken on a dispute with AddDisputeResponse. The value
you can use at a given time depends on the current value of DisputeState
(see the Developer Guide for more information). Some values are for
Unpaid Item disputes and some are for Item Not Received disputes.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 SellerAddInformation

(in) The seller wants to add a response to the dispute. For Unpaid
Item disputes. The seller is limited to 25 responses.
Corresponds to legacy schema value 11.



=cut


use constant SellerAddInformation => scalar('SellerAddInformation');


=head2 SellerCompletedTransaction

(in) The buyer has paid or the seller otherwise does not need to
pursue the dispute any longer. For Unpaid Item disputes.
Corresponds to legacy schema value 13.



=cut


use constant SellerCompletedTransaction => scalar('SellerCompletedTransaction');


=head2 CameToAgreementNeedFVFCredit

(in) The seller has made an agreement with the buyer and requires a
credit for a Final Value Fee already paid. For Unpaid Item disputes.
Corresponds to legacy schema value 14.



=cut


use constant CameToAgreementNeedFVFCredit => scalar('CameToAgreementNeedFVFCredit');


=head2 SellerEndCommunication

(in) The seller wants to end communication or stop waiting for the
buyer. For Unpaid Item disputes.
Corresponds to legacy schema value 15.



=cut


use constant SellerEndCommunication => scalar('SellerEndCommunication');


=head2 MutualAgreementOrNoBuyerResponse

(in) The seller wants to end communication or stop waiting for the
buyer. Mutual agreement has been reached or the buyer has not
responded within 7 days. For Unpaid Item disputes.
Corresponds to legacy schema value 16.



=cut


use constant MutualAgreementOrNoBuyerResponse => scalar('MutualAgreementOrNoBuyerResponse');


=head2 SellerOffersRefund

(in) The seller offers a full refund if the buyer did not receive
the item or a partial refund if the item is significantly not as
described. For Item Not Received or Significantly Not As Described
disputes. Can be used when DisputeState is:<br>
NotReceivedNoSellerResponse<br>
NotAsDescribedNoSellerResponse<br>
NotReceivedMutualCommunication<br>
NotAsDescribedMutualCommunication



=cut


use constant SellerOffersRefund => scalar('SellerOffersRefund');


=head2 SellerShippedItem

(in) The seller has shipped the item or a replacement and provides
shipping information. For Item Not Received and Significantly Not As
Described disputes. Can be used when DisputeState is:<br>
NotReceivedNoSellerResponse<br> NotReceivedMutualCommunication



=cut


use constant SellerShippedItem => scalar('SellerShippedItem');


=head2 SellerComment

(in) The seller communicates with the buyer, offering a response or
comment. The seller is limited to 25 responses.
For Item Not Received and Significantly Not As Described
disputes. Can be used when DisputeState is:<br>
NotReceivedNoSellerResponse<br>
NotAsDescribedNoSellerResponse<br>
NotReceivedMutualCommunication<br>
NotAsDescribedMutualCommunication



=cut


use constant SellerComment => scalar('SellerComment');


=head2 SellerPaymentNotReceived

(in) Seller hasn't received payment or the payment hasn't cleared
yet. For Item Not Received disputes. Can be used when DisputeState
is:<br> NotReceivedNoSellerResponse<br>
NotReceivedMutualCommunication<br>



=cut


use constant SellerPaymentNotReceived => scalar('SellerPaymentNotReceived');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   