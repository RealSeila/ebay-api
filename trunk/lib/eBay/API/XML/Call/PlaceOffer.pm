#!/usr/bin/perl

package eBay::API::XML::Call::PlaceOffer;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PlaceOffer.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::PlaceOffer

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::PlaceOffer inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::PlaceOffer::PlaceOfferRequestType;
use eBay::API::XML::Call::PlaceOffer::PlaceOfferResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'PlaceOffer';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::PlaceOffer::PlaceOfferRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::PlaceOffer::PlaceOfferResponseType';
}

#
# input properties
#

=head2 setAffiliateTrackingDetails()

Container for affiliate-related tags, which enable the tracking of user activity.
If you include AffiliateTrackingDetails in your PlaceOffer call,
then it is possible to receive affiliate commissions based on calls made
by your application.
(See the
<a href="http://www.ebaypartnernetwork.com/" target="_blank">eBay Partner Network</a>
for information about commissions.)
Please note that affiliate tracking is not available in the Sandbox environment, and that
affiliate tracking is not available when you make a best offer.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AffiliateTrackingConcepts
Title: Affiliate Tracking Concepts

  RequiredInput: No
#    Argument: 'ns:AffiliateTrackingDetailsType'

=cut
       
sub setAffiliateTrackingDetails {
   my $self   = shift;
   my $pAffiliateTrackingDetails = shift;
   $self->getRequestDataType()->setAffiliateTrackingDetails($pAffiliateTrackingDetails);
}

=head2 setBlockOnWarning()

If a warning message exists and BlockOnWarning is true,
the warning message is returned and the bid is blocked. If no warning message
exists and BlockOnWarning is true, the bid is placed. If BlockOnWarning
is false, the bid is placed, regardless of warning.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setBlockOnWarning {
   my $self   = shift;
   my $sBlockOnWarning = shift;
   $self->getRequestDataType()->setBlockOnWarning($sBlockOnWarning);
}

=head2 setItemID()

Unique item ID that identifies the item listing for which the offer is
being submitted.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: Yes
#    Argument: 'ns:ItemIDType'

=cut
       
sub setItemID {
   my $self   = shift;
   my $pItemID = shift;
   $self->getRequestDataType()->setItemID($pItemID);
}

=head2 setOffer()

Specifies the type of offer being made. If the item is a
competitive-bidding listing, the offer is a bid. If the item is a
fixed-price listing, then the offer purchases the item. If the item is a
competitive-bidding listing and the offer is of type with an active,
unexercised Buy It Now option, then the offer can either purchase the
item or be a bid. See the schema documentation for OfferType for details
on its properties and their meanings.

  RequiredInput: Yes
#    Argument: 'ns:OfferType'

=cut
       
sub setOffer {
   my $self   = shift;
   my $pOffer = shift;
   $self->getRequestDataType()->setOffer($pOffer);
}



#
# output properties
#

=head2 getBestOffer()

For a best-offer-related action of a buyer using PlaceOffer, 
contains information about the best-offer-related action.

  Returned: Conditionally
#    Returns: 'ns:BestOfferType'

=cut
       
sub getBestOffer {
   my $self = shift;
   return $self->getResponseDataType()->getBestOffer();
}

=head2 getSellingStatus()

Indicates the current bidding/purchase state of the item listing, as of
the offer extended using PlaceOffer. See the schema documentation for
the SellingStatus object, the properties of which contain such
post-offer information as the current high bidder, the current price for
the item, and the bid increment.

  Returned: Always
#    Returns: 'ns:SellingStatusType'

=cut
       
sub getSellingStatus {
   my $self = shift;
   return $self->getResponseDataType()->getSellingStatus();
}

=head2 getTransactionID()

The TransactionID field can be returned if, on input, you specified Purchase in the Action field. 
The TransactionID field contains the ID of the transaction created.
This field applies to the following types of listings:
FixedPriceItem and StoresFixedPrice. This field also applies to Chinese BIN 
if you specified Purchase on input.

  Returned: Conditionally
#    Returns: 'xs:string'

=cut
       
sub getTransactionID {
   my $self = shift;
   return $self->getResponseDataType()->getTransactionID();
}





1;   
