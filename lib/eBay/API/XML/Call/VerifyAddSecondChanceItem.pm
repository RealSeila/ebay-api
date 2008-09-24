#!/usr/bin/perl

package eBay::API::XML::Call::VerifyAddSecondChanceItem;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. VerifyAddSecondChanceItem.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::VerifyAddSecondChanceItem

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::VerifyAddSecondChanceItem inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::VerifyAddSecondChanceItem::VerifyAddSecondChanceItemRequestType;
use eBay::API::XML::Call::VerifyAddSecondChanceItem::VerifyAddSecondChanceItemResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'VerifyAddSecondChanceItem';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::VerifyAddSecondChanceItem::VerifyAddSecondChanceItemRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::VerifyAddSecondChanceItem::VerifyAddSecondChanceItemResponseType';
}

#
# input properties
#

=head2 setBuyItNowPrice()

Specifies the amount the offer recipient must pay to purchase the item
from the second chance offer listing. Use only when the original item was
an eBay Motors (or in some categories on U.S. and international sites for
high-priced items, such as items in many U.S. and Canada Business and
Industrial categories) and it ended unsold because the reserve price was
not met. Call fails with an error for any other item conditions.

  RequiredInput: No
#    Argument: 'ns:AmountType'

=cut
       
sub setBuyItNowPrice {
   my $self   = shift;
   my $pBuyItNowPrice = shift;
   $self->getRequestDataType()->setBuyItNowPrice($pBuyItNowPrice);
}

=head2 setDuration()

Specifies the length of time the second chance offer listing will be
active. The recipient bidder has that much time to purchase the item or
the listing expires.

  RequiredInput: Yes
#    Argument: 'ns:SecondChanceOfferDurationCodeType'

=cut
       
sub setDuration {
   my $self   = shift;
   my $sDuration = shift;
   $self->getRequestDataType()->setDuration($sDuration);
}

=head2 setItemID()

Specifies the item ID for the original, ended listing from which the
second chance offer item comes. A new ItemID is returned for the second
chance offer item.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: Yes
#    Argument: 'ns:ItemIDType'

=cut
       
sub setItemID {
   my $self   = shift;
   my $pItemID = shift;
   $self->getRequestDataType()->setItemID($pItemID);
}

=head2 setRecipientBidderUserID()

Specifies the bidder from the original, ended listing to whom the seller
is extending the second chance offer. Specify only one
RecipientBidderUserID per call. If multiple users are specified (each in a
RecipientBidderUserID node), only the last one specified receives the
offer.

  RequiredInput: Yes
#    Argument: 'ns:UserIDType'

=cut
       
sub setRecipientBidderUserID {
   my $self   = shift;
   my $pRecipientBidderUserID = shift;
   $self->getRequestDataType()->setRecipientBidderUserID($pRecipientBidderUserID);
}

=head2 setSellerMessage()

Message content. Cannot contain HTML, asterisks, or quotes. This content
is included in the second chance offer email sent to the recipient, which
can be retrieved with GetMyMessages.

MaxLength: 1000

  RequiredInput: No
#    Argument: 'xs:string'

=cut
       
sub setSellerMessage {
   my $self   = shift;
   my $sSellerMessage = shift;
   $self->getRequestDataType()->setSellerMessage($sSellerMessage);
}



#
# output properties
#

=head2 getEndTime()

Indicates the date and time when the second
chance offer listing expires, at which time
the listing ends (if the recipient user does
not purchase the item first).

  Returned: Always
#    Returns: 'xs:dateTime'

=cut
       
sub getEndTime {
   my $self = shift;
   return $self->getResponseDataType()->getEndTime();
}

=head2 getStartTime()

Indicates the date and time when the the new
second chance offer listing became active and
the recipient user could purchase the item.

  Returned: Always
#    Returns: 'xs:dateTime'

=cut
       
sub getStartTime {
   my $self = shift;
   return $self->getResponseDataType()->getStartTime();
}





1;   
