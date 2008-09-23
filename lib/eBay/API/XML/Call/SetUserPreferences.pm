#!/usr/bin/perl

package eBay::API::XML::Call::SetUserPreferences;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SetUserPreferences.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::SetUserPreferences

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::SetUserPreferences inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::SetUserPreferences::SetUserPreferencesRequestType;
use eBay::API::XML::Call::SetUserPreferences::SetUserPreferencesResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'SetUserPreferences';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::SetUserPreferences::SetUserPreferencesRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::SetUserPreferences::SetUserPreferencesResponseType';
}

#
# input properties
#

=head2 setBidderNoticePreferences()

The user's bidder notice preferences to be set.

  RequiredInput: No
#    Argument: 'ns:BidderNoticePreferencesType'

=cut
       
sub setBidderNoticePreferences {
   my $self   = shift;
   my $pBidderNoticePreferences = shift;
   $self->getRequestDataType()->setBidderNoticePreferences($pBidderNoticePreferences);
}

=head2 setCombinedPaymentPreferences()

DO NOT USE THIS FIELD. Use 'GetShippingDiscountProfiles' to access
similar information. 
The user's combined payment preferences to be set.
When you change these preferences, it can take up to 7 days for the change
to have any logical or functional effect on eBay. <br>
<br>
For the US and Germany sites, combined payment preferences can also affect whether a
seller is eligible to list on Express.
A seller needs to allow shoppers to pay by single, combined payments for their purchases.
A seller is not eligible for Express if they don't allow combined payments.
Once changes to these preferences take effect on eBay (within 7 days), it can take up to 7 more days for
existing items to be added to or removed from Express. Thus, it can take up to 14 days (total)
for combined payment preference changes to affect whether listings appear on Express.
Also see ExpressPreferences.ExpressSellingPreferences.

  RequiredInput: No
#    Argument: 'ns:CombinedPaymentPreferencesType'

=cut
       
sub setCombinedPaymentPreferences {
   my $self   = shift;
   my $pCombinedPaymentPreferences = shift;
   $self->getRequestDataType()->setCombinedPaymentPreferences($pCombinedPaymentPreferences);
}

=head2 setCrossPromotionPreferences()

The user's cross promotion preferences to be set.

  RequiredInput: No
#    Argument: 'ns:CrossPromotionPreferencesType'

=cut
       
sub setCrossPromotionPreferences {
   my $self   = shift;
   my $pCrossPromotionPreferences = shift;
   $self->getRequestDataType()->setCrossPromotionPreferences($pCrossPromotionPreferences);
}

=head2 setEmailShipmentTrackingNumberPreference()

Sets the preference for the email shipment tracking number.

Default: false

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setEmailShipmentTrackingNumberPreference {
   my $self   = shift;
   my $sEmailShipmentTrackingNumberPreference = shift;
   $self->getRequestDataType()->setEmailShipmentTrackingNumberPreference($sEmailShipmentTrackingNumberPreference);
}

=head2 setEndOfAuctionEmailPreferences()

The seller's end of auction email preferences to be set.

  RequiredInput: No
#    Argument: 'ns:EndOfAuctionEmailPreferencesType'

=cut
       
sub setEndOfAuctionEmailPreferences {
   my $self   = shift;
   my $pEndOfAuctionEmailPreferences = shift;
   $self->getRequestDataType()->setEndOfAuctionEmailPreferences($pEndOfAuctionEmailPreferences);
}

=head2 setSellerFavoriteItemPreferences()

Seller's favorite item preferences to be set.

  RequiredInput: No
#    Argument: 'ns:SellerFavoriteItemPreferencesType'

=cut
       
sub setSellerFavoriteItemPreferences {
   my $self   = shift;
   my $pSellerFavoriteItemPreferences = shift;
   $self->getRequestDataType()->setSellerFavoriteItemPreferences($pSellerFavoriteItemPreferences);
}

=head2 setSellerPaymentPreferences()

The user's seller payment preferences to be set.

  RequiredInput: No
#    Argument: 'ns:SellerPaymentPreferencesType'

=cut
       
sub setSellerPaymentPreferences {
   my $self   = shift;
   my $pSellerPaymentPreferences = shift;
   $self->getRequestDataType()->setSellerPaymentPreferences($pSellerPaymentPreferences);
}



#
# output properties
#





1;   
