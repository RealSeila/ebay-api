#!/usr/bin/perl

package eBay::API::XML::Call::EndItem;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. EndItem.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::EndItem

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::EndItem inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::EndItem::EndItemRequestType;
use eBay::API::XML::Call::EndItem::EndItemResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'EndItem';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::EndItem::EndItemRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::EndItem::EndItemResponseType';
}

#
# input properties
#

=head2 setEndingReason()

Indicates the seller's reason for ending the listing early.
This field is required if the seller is ending the item early and
the item did not successfully sell.
Also applicable to Half.com.

  RequiredInput: Yes
#    Argument: 'ns:EndReasonCodeType'

=cut
       
sub setEndingReason {
   my $self   = shift;
   my $sEndingReason = shift;
   $self->getRequestDataType()->setEndingReason($sEndingReason);
}

=head2 setItemID()

Unique item ID that identifies the item listing to end.
Also applicable to Half.com. For Half.com listings, you can either
specify ItemID or SellerInventoryID.
For eBay Live Auctions, you cannot delete items that have been closed
or that are part of a Live Auction event that has started.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: Yes
#    Argument: 'ns:ItemIDType'

=cut
       
sub setItemID {
   my $self   = shift;
   my $pItemID = shift;
   $self->getRequestDataType()->setItemID($pItemID);
}

=head2 setSellerInventoryID()

Unique identifier that the seller specified when they listed the
Half.com item. For Half.com items, you can either specify ItemID or
SellerInventoryID. If you specify both ItemID and SellerInventoryID,
they must be for the same item (otherwise an error will occur).
Only applicable to Half.com.

  RequiredInput: Conditionally
#    Argument: 'xs:string'

=cut
       
sub setSellerInventoryID {
   my $self   = shift;
   my $sSellerInventoryID = shift;
   $self->getRequestDataType()->setSellerInventoryID($sSellerInventoryID);
}



#
# output properties
#

=head2 getEndTime()

Indicates the date and time (returned in GMT) the specified item listing
was ended.
Also applicable to Half.com.

  Returned: Always
#    Returns: 'xs:dateTime'

=cut
       
sub getEndTime {
   my $self = shift;
   return $self->getResponseDataType()->getEndTime();
}





1;   
