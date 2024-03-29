#!/usr/bin/perl

package eBay::API::XML::Call::GetUserPreferences::GetUserPreferencesResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetUserPreferencesResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetUserPreferences::GetUserPreferencesResponseType

=head1 DESCRIPTION

Returns some or all of a user's preferences. The preferences are grouped
in sets, according to the sets requested.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetUserPreferences::GetUserPreferencesResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::BidderNoticePreferencesType;
use eBay::API::XML::DataType::CombinedPaymentPreferencesType;
use eBay::API::XML::DataType::CrossPromotionPreferencesType;
use eBay::API::XML::DataType::EndOfAuctionEmailPreferencesType;
use eBay::API::XML::DataType::ProStoresCheckoutPreferenceType;
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
	, [ 'ProStoresPreference', 'ns:ProStoresCheckoutPreferenceType', ''
	     ,'eBay::API::XML::DataType::ProStoresCheckoutPreferenceType', '1' ]
	, [ 'SellerFavoriteItemPreferences', 'ns:SellerFavoriteItemPreferencesType', ''
	     ,'eBay::API::XML::DataType::SellerFavoriteItemPreferencesType', '1' ]
	, [ 'SellerPaymentPreferences', 'ns:SellerPaymentPreferencesType', ''
	     ,'eBay::API::XML::DataType::SellerPaymentPreferencesType', '1' ]
                    );
push @gaProperties, @{eBay::API::XML::ResponseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::ResponseDataType::getAttributesList()};

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

Contains a seller's preferences for receiving bidder notices.
Returned when the request sets ShowBidderNoticePreferences to true.

#    Argument: 'ns:BidderNoticePreferencesType'

=cut

sub setBidderNoticePreferences {
  my $self = shift;
  $self->{'BidderNoticePreferences'} = shift
}

=head2 getBidderNoticePreferences()

  Returned: Conditionally
#    Returns: 'ns:BidderNoticePreferencesType'

=cut

sub getBidderNoticePreferences {
  my $self = shift;
  return $self->_getDataTypeInstance( 'BidderNoticePreferences'
		,'eBay::API::XML::DataType::BidderNoticePreferencesType');
}


=head2 setCombinedPaymentPreferences()

DO NOT USE THIS FIELD. Use 'GetShippingDiscountProfiles' to retrieve
similar information. 
Contains a seller's preferences for accepting combined payments.
Returned when ShowCombinedPaymentPreferences is true.

#    Argument: 'ns:CombinedPaymentPreferencesType'

=cut

sub setCombinedPaymentPreferences {
  my $self = shift;
  $self->{'CombinedPaymentPreferences'} = shift
}

=head2 getCombinedPaymentPreferences()

  Returned: Conditionally
#    Returns: 'ns:CombinedPaymentPreferencesType'

=cut

sub getCombinedPaymentPreferences {
  my $self = shift;
  return $self->_getDataTypeInstance( 'CombinedPaymentPreferences'
		,'eBay::API::XML::DataType::CombinedPaymentPreferencesType');
}


=head2 setCrossPromotionPreferences()

Contains a seller's cross-promotion preferences.
Returned when ShowCrossPromotionPreferences is true.

#    Argument: 'ns:CrossPromotionPreferencesType'

=cut

sub setCrossPromotionPreferences {
  my $self = shift;
  $self->{'CrossPromotionPreferences'} = shift
}

=head2 getCrossPromotionPreferences()

  Returned: Conditionally
#    Returns: 'ns:CrossPromotionPreferencesType'

=cut

sub getCrossPromotionPreferences {
  my $self = shift;
  return $self->_getDataTypeInstance( 'CrossPromotionPreferences'
		,'eBay::API::XML::DataType::CrossPromotionPreferencesType');
}


=head2 setEmailShipmentTrackingNumberPreference()

Contains the user's preference for the email shipment tracking number.

#    Argument: 'xs:boolean'

=cut

sub setEmailShipmentTrackingNumberPreference {
  my $self = shift;
  $self->{'EmailShipmentTrackingNumberPreference'} = shift
}

=head2 isEmailShipmentTrackingNumberPreference()

  Returned: Conditionally
#    Returns: 'xs:boolean'

=cut

sub isEmailShipmentTrackingNumberPreference {
  my $self = shift;
  return $self->{'EmailShipmentTrackingNumberPreference'};
}


=head2 setEndOfAuctionEmailPreferences()

Contains the user's end of auction email preferences.

#    Argument: 'ns:EndOfAuctionEmailPreferencesType'

=cut

sub setEndOfAuctionEmailPreferences {
  my $self = shift;
  $self->{'EndOfAuctionEmailPreferences'} = shift
}

=head2 getEndOfAuctionEmailPreferences()

  Returned: Conditionally
#    Returns: 'ns:EndOfAuctionEmailPreferencesType'

=cut

sub getEndOfAuctionEmailPreferences {
  my $self = shift;
  return $self->_getDataTypeInstance( 'EndOfAuctionEmailPreferences'
		,'eBay::API::XML::DataType::EndOfAuctionEmailPreferencesType');
}


=head2 setProStoresPreference()

Details about ProStores and checkout preferences. Returned only if requested
on input.

#    Argument: 'ns:ProStoresCheckoutPreferenceType'

=cut

sub setProStoresPreference {
  my $self = shift;
  $self->{'ProStoresPreference'} = shift
}

=head2 getProStoresPreference()

  Returned: Conditionally
#    Returns: 'ns:ProStoresCheckoutPreferenceType'

=cut

sub getProStoresPreference {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ProStoresPreference'
		,'eBay::API::XML::DataType::ProStoresCheckoutPreferenceType');
}


=head2 setSellerFavoriteItemPreferences()

Contains a seller's preferences for displaying items on a buyer's
Favorite Sellers' Items page or Favorite Sellers' Items digest.

#    Argument: 'ns:SellerFavoriteItemPreferencesType'

=cut

sub setSellerFavoriteItemPreferences {
  my $self = shift;
  $self->{'SellerFavoriteItemPreferences'} = shift
}

=head2 getSellerFavoriteItemPreferences()

  Returned: Conditionally
#    Returns: 'ns:SellerFavoriteItemPreferencesType'

=cut

sub getSellerFavoriteItemPreferences {
  my $self = shift;
  return $self->_getDataTypeInstance( 'SellerFavoriteItemPreferences'
		,'eBay::API::XML::DataType::SellerFavoriteItemPreferencesType');
}


=head2 setSellerPaymentPreferences()

Contains a seller's preferences for accepting payments.
Returned when ShowSellerPaymentPreferences is true.

#    Argument: 'ns:SellerPaymentPreferencesType'

=cut

sub setSellerPaymentPreferences {
  my $self = shift;
  $self->{'SellerPaymentPreferences'} = shift
}

=head2 getSellerPaymentPreferences()

  Returned: Conditionally
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
