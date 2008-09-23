#!/usr/bin/perl

package eBay::API::XML::Call::SetUserPreferences::SetUserPreferencesRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SetUserPreferencesRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::SetUserPreferences::SetUserPreferencesRequestType

=head1 DESCRIPTION

Sets the user's preferences to those specified in the request. As
a general rule, once you set a preference,  GetUserPreferences
and the user's preferences displayed on the eBay Web site should
reflect the new setting immediately. However, it could take up to
7 days for the change to have any logical or functional effect.
For example, if you change your combined payment preferences, it
could take up to 7 days for eBay to apply the updated combined
payment settings to your listings. Also, once you set a
preference, you cannot change its setting again within 7 days.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::SetUserPreferences::SetUserPreferencesRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::BidderNoticePreferencesType;
use eBay::API::XML::DataType::CombinedPaymentPreferencesType;
use eBay::API::XML::DataType::CrossPromotionPreferencesType;
use eBay::API::XML::DataType::EndOfAuctionEmailPreferencesType;
use eBay::API::XML::DataType::SellerFavoriteItemPreferencesType;
use eBay::API::XML::DataType::SellerPaymentPreferencesType;


my @gaProperties = ( [ 'BidderNoticePreferences', 'ns:BidderNoticePreferencesType', ''
	     ,'eBay::API::XML::DataType::BidderNoticePreferencesType', '1' ]
	, [ 'CombinedPaymentPreferences', 'ns:CombinedPaymentPreferencesType', ''
	     ,'eBay::API::XML::DataType::CombinedPaymentPreferencesType', '1' ]
	, [ 'CrossPromotionPreferences', 'ns:CrossPromotionPreferencesType', ''
	     ,'eBay::API::XML::DataType::CrossPromotionPreferencesType', '1' ]
	, [ 'EmailShipmentTrackingNumberPreference', 'xs:boolean', '', '', '' ]
	, [ 'EndOfAuctionEmailPreferences', 'ns:EndOfAuctionEmailPreferencesType', ''
	     ,'eBay::API::XML::DataType::EndOfAuctionEmailPreferencesType', '1' ]
	, [ 'SellerFavoriteItemPreferences', 'ns:SellerFavoriteItemPreferencesType', ''
	     ,'eBay::API::XML::DataType::SellerFavoriteItemPreferencesType', '1' ]
	, [ 'SellerPaymentPreferences', 'ns:SellerPaymentPreferencesType', ''
	     ,'eBay::API::XML::DataType::SellerPaymentPreferencesType', '1' ]
                    );
push @gaProperties, @{eBay::API::XML::RequestDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::RequestDataType::getAttributesList()};

=head1 Subroutines:

=cut

sub new {
  my $classname = shift;
  my %args = @_;
  my $self = $classname->SUPER::new(%args);
  return $self;
}

sub isScalar {
   return 0; 
}



=head2 setBidderNoticePreferences()

The user's bidder notice preferences to be set.

  RequiredInput: No
#    Argument: 'ns:BidderNoticePreferencesType'

=cut

sub setBidderNoticePreferences {
  my $self = shift;
  $self->{'BidderNoticePreferences'} = shift
}

=head2 getBidderNoticePreferences()

#    Returns: 'ns:BidderNoticePreferencesType'

=cut

sub getBidderNoticePreferences {
  my $self = shift;
  return $self->_getDataTypeInstance( 'BidderNoticePreferences'
		,'eBay::API::XML::DataType::BidderNoticePreferencesType');
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
  my $self = shift;
  $self->{'CombinedPaymentPreferences'} = shift
}

=head2 getCombinedPaymentPreferences()

#    Returns: 'ns:CombinedPaymentPreferencesType'

=cut

sub getCombinedPaymentPreferences {
  my $self = shift;
  return $self->_getDataTypeInstance( 'CombinedPaymentPreferences'
		,'eBay::API::XML::DataType::CombinedPaymentPreferencesType');
}


=head2 setCrossPromotionPreferences()

The user's cross promotion preferences to be set.

  RequiredInput: No
#    Argument: 'ns:CrossPromotionPreferencesType'

=cut

sub setCrossPromotionPreferences {
  my $self = shift;
  $self->{'CrossPromotionPreferences'} = shift
}

=head2 getCrossPromotionPreferences()

#    Returns: 'ns:CrossPromotionPreferencesType'

=cut

sub getCrossPromotionPreferences {
  my $self = shift;
  return $self->_getDataTypeInstance( 'CrossPromotionPreferences'
		,'eBay::API::XML::DataType::CrossPromotionPreferencesType');
}


=head2 setEmailShipmentTrackingNumberPreference()

Sets the preference for the email shipment tracking number.

Default: false

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setEmailShipmentTrackingNumberPreference {
  my $self = shift;
  $self->{'EmailShipmentTrackingNumberPreference'} = shift
}

=head2 isEmailShipmentTrackingNumberPreference()

#    Returns: 'xs:boolean'

=cut

sub isEmailShipmentTrackingNumberPreference {
  my $self = shift;
  return $self->{'EmailShipmentTrackingNumberPreference'};
}


=head2 setEndOfAuctionEmailPreferences()

The seller's end of auction email preferences to be set.

  RequiredInput: No
#    Argument: 'ns:EndOfAuctionEmailPreferencesType'

=cut

sub setEndOfAuctionEmailPreferences {
  my $self = shift;
  $self->{'EndOfAuctionEmailPreferences'} = shift
}

=head2 getEndOfAuctionEmailPreferences()

#    Returns: 'ns:EndOfAuctionEmailPreferencesType'

=cut

sub getEndOfAuctionEmailPreferences {
  my $self = shift;
  return $self->_getDataTypeInstance( 'EndOfAuctionEmailPreferences'
		,'eBay::API::XML::DataType::EndOfAuctionEmailPreferencesType');
}


=head2 setSellerFavoriteItemPreferences()

Seller's favorite item preferences to be set.

  RequiredInput: No
#    Argument: 'ns:SellerFavoriteItemPreferencesType'

=cut

sub setSellerFavoriteItemPreferences {
  my $self = shift;
  $self->{'SellerFavoriteItemPreferences'} = shift
}

=head2 getSellerFavoriteItemPreferences()

#    Returns: 'ns:SellerFavoriteItemPreferencesType'

=cut

sub getSellerFavoriteItemPreferences {
  my $self = shift;
  return $self->_getDataTypeInstance( 'SellerFavoriteItemPreferences'
		,'eBay::API::XML::DataType::SellerFavoriteItemPreferencesType');
}


=head2 setSellerPaymentPreferences()

The user's seller payment preferences to be set.

  RequiredInput: No
#    Argument: 'ns:SellerPaymentPreferencesType'

=cut

sub setSellerPaymentPreferences {
  my $self = shift;
  $self->{'SellerPaymentPreferences'} = shift
}

=head2 getSellerPaymentPreferences()

#    Returns: 'ns:SellerPaymentPreferencesType'

=cut

sub getSellerPaymentPreferences {
  my $self = shift;
  return $self->_getDataTypeInstance( 'SellerPaymentPreferences'
		,'eBay::API::XML::DataType::SellerPaymentPreferencesType');
}





##  Attribute and Property lists
sub getPropertiesList {
   my $self = shift;
   return \@gaProperties;
}

sub getAttributesList {
   my $self = shift;
   return \@gaAttributes;
}



1;   
