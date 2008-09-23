#!/usr/bin/perl

package eBay::API::XML::Call::PlaceOffer::PlaceOfferRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PlaceOfferRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::PlaceOffer::PlaceOfferRequestType

=head1 DESCRIPTION

Enables a user to bid (make an offer) on an item or make a best offer.
For competitive-bidding listings
(Chinese and Dutch auctions), a user can make a bid. For fixed-price listings
(Basic Fixed-Price and eBay Stores Inventory listings), a user can purchase
an item. A user can make a best offer on an item for which Best Offer is enabled.
For information about the Best Offer feature (including rules for counteroffers),
see <a href="http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=EnablingBestOffer">Enabling Best Offer</a>.
<br>
<br>
For more information about each use of PlaceOffer (including
information about making a best offer or counteroffer, and information about
accepting or declining a counteroffer), please see
<a href="#Request">PlaceOffer Input</a>.
<br>
<br>
<span class="tablenote"><b>Important note: Before using this call, please carefully review
the <a href="http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=FrameCallRefPlaceOfferBP">PlaceOffer Policies and Guidelines</a>.
The PlaceOffer Policies are required for use of PlaceOffer in the production environment.
Please carefully write your application to follow all the PlaceOffer Policies.</b></span>
<br>
<br>
<span class="tablenote"><b>Note:</b> PlaceOffer is available
for evaluation by all in the Sandbox (test) environment.</span>
<br><br>
For information about becoming authorized to use PlaceOffer in the Production environment,
please contact Developer Relations, developer-relations@ebay.com.
<br>
<br>
<span class="tablenote"><b>Important notes:
When you use PlaceOffer to make a best offer,
no affiliate-related commissions are paid.</b> Affiliate-commission functionality
is not available in the Sandbox environment. Affiliate commissions from PlaceOffer require
that the call be made to the site on which the item is listed. Affiliate commissions from
PlaceOffer also require that the affiliate has signed up with the eBay Partner Network
for the site on which the item is listed.</span>
<br>
<br>
If you make a PlaceOffer request and eBay returns a BotBlock container, your application
must use the contents of the BotBlock container to show that the application-user is a human and not a bot.
<br>
<br>
Capture the contents of the BotBlock container
(BotBlockUrl, BotBlockAudioUrl, and BotBlockToken) returned by PlaceOffer.
The application-user must input the value for BotBlockUrl or BotBlockAudioUrl.
Your application must capture this value and,
in the next PlaceOffer call, include a BotBlock container (containing
the user-input value and the token you captured from the BotBlockToken field).
eBay then uses your BotBlock container (in your second PlaceOffer call) to validate
that the user is a human and not a bot.
<br>
<br>
You can use GetChallengeToken to test your application's ability
to show that a PlaceOffer user is a human and not a bot.
Make a GetChallengeToken request and capture ChallengeToken, ImageChallengeURL,
and AudioChallengeURL. The application-user must input the value for ImageChallengeURL
or AudioChallengeURL. Your application must capture this value and,
in a PlaceOffer call, include a BotBlock container. The BotBlock container will contain
the user-input value along with the value from ChallengeToken (from the GetChallengeToken response).
eBay then uses your BotBlock container to validate that the user is a human and not a bot.
<br>
<br>
If PayPal is the required payment method, then the user making a bid or purchase must have a PayPal account.
<br>
<br>
If a user has placed a bid on an item with Bid Assistant (available on the eBay site),
then a subsequent PlaceOffer call on behalf of that user, on that item, will not succeed.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::PlaceOffer::PlaceOfferRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::AffiliateTrackingDetailsType;
use eBay::API::XML::DataType::ItemIDType;
use eBay::API::XML::DataType::OfferType;


my @gaProperties = ( [ 'AffiliateTrackingDetails', 'ns:AffiliateTrackingDetailsType', ''
	     ,'eBay::API::XML::DataType::AffiliateTrackingDetailsType', '1' ]
	, [ 'BlockOnWarning', 'xs:boolean', '', '', '' ]
	, [ 'ItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'Offer', 'ns:OfferType', ''
	     ,'eBay::API::XML::DataType::OfferType', '1' ]
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
  my $self = shift;
  $self->{'AffiliateTrackingDetails'} = shift
}

=head2 getAffiliateTrackingDetails()

#    Returns: 'ns:AffiliateTrackingDetailsType'

=cut

sub getAffiliateTrackingDetails {
  my $self = shift;
  return $self->_getDataTypeInstance( 'AffiliateTrackingDetails'
		,'eBay::API::XML::DataType::AffiliateTrackingDetailsType');
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
  my $self = shift;
  $self->{'BlockOnWarning'} = shift
}

=head2 isBlockOnWarning()

#    Returns: 'xs:boolean'

=cut

sub isBlockOnWarning {
  my $self = shift;
  return $self->{'BlockOnWarning'};
}


=head2 setItemID()

Unique item ID that identifies the item listing for which the offer is
being submitted.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: Yes
#    Argument: 'ns:ItemIDType'

=cut

sub setItemID {
  my $self = shift;
  $self->{'ItemID'} = shift
}

=head2 getItemID()

#    Returns: 'ns:ItemIDType'

=cut

sub getItemID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemID'
		,'eBay::API::XML::DataType::ItemIDType');
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
  my $self = shift;
  $self->{'Offer'} = shift
}

=head2 getOffer()

#    Returns: 'ns:OfferType'

=cut

sub getOffer {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Offer'
		,'eBay::API::XML::DataType::OfferType');
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
