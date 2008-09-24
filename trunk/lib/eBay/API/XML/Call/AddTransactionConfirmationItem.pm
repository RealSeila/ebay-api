#!/usr/bin/perl

package eBay::API::XML::Call::AddTransactionConfirmationItem;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AddTransactionConfirmationItem.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::AddTransactionConfirmationItem

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::AddTransactionConfirmationItem inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::AddTransactionConfirmationItem::AddTransactionConfirmationItemRequestType;
use eBay::API::XML::Call::AddTransactionConfirmationItem::AddTransactionConfirmationItemResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'AddTransactionConfirmationItem';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::AddTransactionConfirmationItem::AddTransactionConfirmationItemRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::AddTransactionConfirmationItem::AddTransactionConfirmationItemResponseType';
}

#
# input properties
#

=head2 setComments()

Comments the seller wants to send to the recipient (bidder, best offer
buyer, member with an ASQ question, or member with a postal code).

  RequiredInput: No
#    Argument: 'xs:string'

=cut
       
sub setComments {
   my $self   = shift;
   my $sComments = shift;
   $self->getRequestDataType()->setComments($sComments);
}

=head2 setItemID()

The ItemID of the item that the seller wants to end in order to create a
Transaction Confirmation Request (TCR).

  RequiredInput: Yes
#    Argument: 'ns:ItemIDType'

=cut
       
sub setItemID {
   my $self   = shift;
   my $pItemID = shift;
   $self->getRequestDataType()->setItemID($pItemID);
}

=head2 setListingDuration()

Specifies the length of time the item in the Transaction Confirmation
Request (TCR) will be available for purchase.

  RequiredInput: Yes
#    Argument: 'ns:SecondChanceOfferDurationCodeType'

=cut
       
sub setListingDuration {
   my $self   = shift;
   my $sListingDuration = shift;
   $self->getRequestDataType()->setListingDuration($sListingDuration);
}

=head2 setNegotiatedPrice()

The amount the offer recipient must pay to buy the item
specified in the Transaction Confirmation Request (TCR).
A negotiated amount between the buyer and the seller.

  RequiredInput: Yes
#    Argument: 'ns:AmountType'

=cut
       
sub setNegotiatedPrice {
   my $self   = shift;
   my $pNegotiatedPrice = shift;
   $self->getRequestDataType()->setNegotiatedPrice($pNegotiatedPrice);
}

=head2 setRecipientPostalCode()

Specifies the postal code of the user to whom the seller is offering the
Transaction Confirmation Request. Required only if the user does not meet
the other options listed in RecipientRelationCodeType. An error is
returned if RecipientUserID and RecipientPostalCode do not match for more
than 3 times for a seller per day.

  RequiredInput: No
#    Argument: 'xs:string'

=cut
       
sub setRecipientPostalCode {
   my $self   = shift;
   my $sRecipientPostalCode = shift;
   $self->getRequestDataType()->setRecipientPostalCode($sRecipientPostalCode);
}

=head2 setRecipientRelationType()

Specifies the current relationship between the seller and the potential
buyer. A seller can make a Transaction Confirmation Request (TCR) for an
item to a potential buyer if the buyer meets one of several criteria. A
TCR is sent by a seller to one of the following: a bidder, a best offer
buyer, a member with an ASQ question, or any member with a postal code.
See the values and annotations in RecipientRelationCodeType.

  RequiredInput: Yes
#    Argument: 'ns:RecipientRelationCodeType'

=cut
       
sub setRecipientRelationType {
   my $self   = shift;
   my $sRecipientRelationType = shift;
   $self->getRequestDataType()->setRecipientRelationType($sRecipientRelationType);
}

=head2 setRecipientUserID()

Specifies the user to whom the seller is offering the Transaction
Confirmation Request.

  RequiredInput: Yes
#    Argument: 'ns:UserIDType'

=cut
       
sub setRecipientUserID {
   my $self   = shift;
   my $pRecipientUserID = shift;
   $self->getRequestDataType()->setRecipientUserID($pRecipientUserID);
}

=head2 setVerifyEligibilityOnly()

If true, specifies that the seller is verifying whether a new Transaction
Confirmation Request (TCR) can be created. Thus, if this value is passed
as true, then no Transaction Confirmation Request is actually made. If
VerifyEligibilityOnly is not passed, or is false, a Transaction
Confirmation Request is actually made.

  RequiredInput: No
#    Argument: 'xs:string'

=cut
       
sub setVerifyEligibilityOnly {
   my $self   = shift;
   my $sVerifyEligibilityOnly = shift;
   $self->getRequestDataType()->setVerifyEligibilityOnly($sVerifyEligibilityOnly);
}



#
# output properties
#

=head2 getEndTime()

The date and time when the item in the new Transaction Confirmation Request (TCR)
is no longer available for purchase.

  Returned: Always
#    Returns: 'xs:dateTime'

=cut
       
sub getEndTime {
   my $self = shift;
   return $self->getResponseDataType()->getEndTime();
}

=head2 getItemID()

The new item ID for the item in the new Transaction Confirmation Request (TCR).
This field is not returned if the request was only used to verify that a new TCR could be created.

  Returned: Conditionally
#    Returns: 'ns:ItemIDType'

=cut
       
sub getItemID {
   my $self = shift;
   return $self->getResponseDataType()->getItemID();
}

=head2 getStartTime()

The date and time when the item in the new Transaction Confirmation Request (TCR)
becomes available for purchase.

  Returned: Always
#    Returns: 'xs:dateTime'

=cut
       
sub getStartTime {
   my $self = shift;
   return $self->getResponseDataType()->getStartTime();
}





1;   