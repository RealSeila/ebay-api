#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::DisputeExplanationCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. DisputeExplanationCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::DisputeExplanationCodeType

=head1 DESCRIPTION

Contains the dispute explanation, entered when the dispute was created.
Provides additional information to supplement the dispute reason. The values allowed
depend on the value of DisputeReason.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 BuyerHasNotResponded

The buyer has not responded within the 7-day waiting period.
Allowed when DisputeReason is BuyerHasNotPaid.
Corresponds to legacy schema value 1.



=cut


use constant BuyerHasNotResponded => scalar('BuyerHasNotResponded');


=head2 BuyerRefusedToPay

The buyer has refused to pay. Allowed when DisputeReason is BuyerHasNotPaid.
Corresponds to legacy schema value 2.



=cut


use constant BuyerRefusedToPay => scalar('BuyerRefusedToPay');


=head2 BuyerNotClearedToPay

The buyer is not cleared to pay. Allowed when DisputeReason is BuyerHasNotPaid.
Corresponds to legacy schema value 24.



=cut


use constant BuyerNotClearedToPay => scalar('BuyerNotClearedToPay');


=head2 BuyerReturnedItemForRefund

The buyer returned the item for a refund. Allowed when DisputeReason
is TransactionMutuallyCanceled.
Corresponds to legacy schema value 5.



=cut


use constant BuyerReturnedItemForRefund => scalar('BuyerReturnedItemForRefund');


=head2 UnableToResolveTerms

The buyer and seller were unable to resolve a disagreement over
terms. Allowed when DisputeReason is TransactionMutuallyCanceled.
Corresponds to legacy schema value 12.



=cut


use constant UnableToResolveTerms => scalar('UnableToResolveTerms');


=head2 BuyerNoLongerWantsItem

The buyer no longer wants the item. Allowed when DisputeReason is
TransactionMutuallyCanceled.
Corresponds to legacy schema value 25.



=cut


use constant BuyerNoLongerWantsItem => scalar('BuyerNoLongerWantsItem');


=head2 BuyerPurchasingMistake

The buyer made a mistake. Allowed when DisputeReason is
TransactionMutuallyCanceled.
Corresponds to legacy schema value 14.



=cut


use constant BuyerPurchasingMistake => scalar('BuyerPurchasingMistake');


=head2 ShipCountryNotSupported

The buyer requests shipment to a country that the seller
does not ship to. Allowed when DisputeReason is BuyerHasNotPaid.
Corresponds to legacy schema value 20.
Deprecated.



=cut


use constant ShipCountryNotSupported => scalar('ShipCountryNotSupported');


=head2 ShippingAddressNotConfirmed

The buyer requests shipment to an unconfirmed address.
Allowed when DisputeReason is BuyerHasNotPaid or TransactionMutuallyCanceled.
Corresponds to legacy schema value 21.



=cut


use constant ShippingAddressNotConfirmed => scalar('ShippingAddressNotConfirmed');


=head2 PaymentMethodNotSupported

The buyer requests a payment method that the seller does not accept.
Allowed when DisputeReason is BuyerHasNotPaid or TransactionMutuallyCanceled.
Corresponds to legacy schema value 22. Deprecated.



=cut


use constant PaymentMethodNotSupported => scalar('PaymentMethodNotSupported');


=head2 BuyerNoLongerRegistered

The buyer is no longer a registered user.
Allowed when DisputeReason is BuyerHasNotPaid.
Corresponds to legacy schema value 23.



=cut


use constant BuyerNoLongerRegistered => scalar('BuyerNoLongerRegistered');


=head2 OtherExplanation

Some other reason not specified in this code list.
Allowed when DisputeReason is either BuyerHasNotPaid OR
TransactionMutuallyCanceled.
Corresponds to legacy schema value 13.



=cut


use constant OtherExplanation => scalar('OtherExplanation');


=head2 Unspecified

Used when DisputeReason is ItemNotReceived or SignificantlyNotAsDescribed.



=cut


use constant Unspecified => scalar('Unspecified');


=head2 CustomCode

Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
