#!/usr/bin/perl

package eBay::API::XML::Call::ReviseItem;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ReviseItem.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::ReviseItem

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::ReviseItem inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::ReviseItem::ReviseItemRequestType;
use eBay::API::XML::Call::ReviseItem::ReviseItemResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'ReviseItem';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::ReviseItem::ReviseItemRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::ReviseItem::ReviseItemResponseType';
}

#
# input properties
#

=head2 setDeletedField()

Specifies the name of a field to delete from a listing.
You cannot delete required fields from a listing.<br><br>
Some fields are optional when you first list an item (e.g., ListingEnhancement),
but once they are set they cannot be deleted when you revise an item.
Some optional fields cannot be deleted if the item has bids and/or ends within 12 hours.
Some optional fields cannot be deleted if other fields depend on them.
For example, if GalleryType was already set for the item you are revising,
you cannot remove it. Therefore, you still need to include at least one picture URL, a gallery URL,
or a catalog stock photo in your revised listing.
See the eBay Web Services guide for rules on removing values when revising items.
Also see the relevant field descriptions for details on when to use DeletedField
(and potential consequences).<br><br>
The request can contain zero, one, or many instances of DeletedField (one for each field to be deleted).
DeletedField accepts the following path names, which delete the corresponding nodes:<br><br>
Item.ApplicationData<br>
Item.AttributeSetArray<br>
Item.BuyItNowPrice<br>
Item.DigitalDeliveryDetails<br>
Item.ItemSpecifics<br>
Item.ListingCheckoutRedirectPreference.ProStoresStoreName<br>
Item.ListingCheckoutRedirectPreference.SellerThirdPartyUsername<br>
Item.ListingDesigner.LayoutID<br>
Item.ListingDesigner.ThemeID<br>
Item.ListingDetails.MinimumBestOfferMessage<br>
Item.ListingDetails.MinimumBestOfferPrice<br>
Item.PayPalEmailAddress<br>
Item.PictureDetails.GalleryURL<br>
Item.PictureDetails.PictureURL<br>
Item.PostalCode<br>
Item.ProductListingDetails<br>
Item.SellerContactDetails<br>
Item.SellerContactDetails.CompanyName<br>
Item.SellerContactDetails.County<br>
Item.SellerContactDetails.InternationalStreet<br>
Item.SellerContactDetails.Phone2AreaOrCityCode<br>
Item.SellerContactDetails.Phone2CountryCode<br>
Item.SellerContactDetails.Phone2CountryPrefix<br>
Item.SellerContactDetails.Phone2LocalNumber<br>
Item.SellerContactDetails.PhoneAreaOrCityCode<br>
Item.SellerContactDetails.PhoneCountryCode<br>
Item.SellerContactDetails.PhoneCountryPrefix<br>
Item.SellerContactDetails.PhoneLocalNumber<br>
Item.SellerContactDetails.Street<br>
Item.SellerContactDetails.Street2<br>
Item.ShippingDetails.PaymentInstructions<br>
Item.SKU<br>
These values are case-sensitive. Use values that match the case of the
schema element names (Item.PictureDetails.GalleryURL) or make the initial
letter of each field name lowercase (item.pictureDetails.galleryURL).
However, do not change the case of letters in the middle of a field name.
For example, item.picturedetails.galleryUrl is not allowed.

  RequiredInput: Conditionally
#    Argument: reference to an array  
                      of 'xs:string'

=cut
       
sub setDeletedField {
   my $self   = shift;
   my $sDeletedField = shift;
   $self->getRequestDataType()->setDeletedField($sDeletedField);
}

=head2 setItem()

Required. Child elements hold the values for properties that are changing.
The Item.ItemID property must always be set to the ID of the item listing being changed. Set values in the Item object only for those properties that are changing. Use DeletedField to remove a property. Also applicable to Half.com.

  RequiredInput: Yes
#    Argument: 'ns:ItemType'

=cut
       
sub setItem {
   my $self   = shift;
   my $pItem = shift;
   $self->getRequestDataType()->setItem($pItem);
}



#
# output properties
#

=head2 getCategory2ID()

ID of the secondary category in which the item was listed.
Only returned if you set Item.CategoryMappingAllowed to true in the request
and the ID passed in Item.SecondaryCategory was mapped to a new ID by eBay.
If the secondary category has not changed or it has expired with no replacement,
Category2ID does not return a value.
Not applicable to Half.com.

  Returned: Conditionally
#    Returns: 'xs:string'

=cut
       
sub getCategory2ID {
   my $self = shift;
   return $self->getResponseDataType()->getCategory2ID();
}

=head2 getCategoryID()

ID of the primary category in which the item was listed.
Only returned if you set Item.CategoryMappingAllowed to true in the request
and the ID passed in Item.PrimaryCategory was mapped to a new ID by eBay.
If the primary category has not changed or it has expired with no replacement,
CategoryID does not return a value.
Not applicable to Half.com.

  Returned: Conditionally
#    Returns: 'xs:string'

=cut
       
sub getCategoryID {
   my $self = shift;
   return $self->getResponseDataType()->getCategoryID();
}

=head2 getEndTime()

Date and time when the new listing ends. This is the starting time
plus the listing duration.
Also returned for Half.com, but for Half.com the actual end time is GTC
(not the end time returned in the response).

  Returned: Always
#    Returns: 'xs:dateTime'

=cut
       
sub getEndTime {
   my $self = shift;
   return $self->getResponseDataType()->getEndTime();
}

=head2 getFees()

Child elements contain the estimated listing fees for the revised item
listing. The fees do not include the Final Value Fee (FVF), which cannot
be determined until an item is sold. Revising an item does not itself
incur a fee. However, certain item properties are fee-based and result
in the return of fees in the call's response.
Not applicable to Half.com.

  Returned: Always
#    Returns: 'ns:FeesType'

=cut
       
sub getFees {
   my $self = shift;
   return $self->getResponseDataType()->getFees();
}

=head2 getItemID()

Item ID that uniquely identifies the item listing that was revised.
Provided for confirmation purposes. The value returned should be the
same as the item ID specified in the ItemID property of the Item object
specified as input for the call.
Also applicable to Half.com.

  Returned: Always
#    Returns: 'ns:ItemIDType'

=cut
       
sub getItemID {
   my $self = shift;
   return $self->getResponseDataType()->getItemID();
}

=head2 getStartTime()

Starting date and time for the new listing.
Also returned for Half.com (for Half.com, the start time is
always the time the item was listed).

  Returned: Always
#    Returns: 'xs:dateTime'

=cut
       
sub getStartTime {
   my $self = shift;
   return $self->getResponseDataType()->getStartTime();
}





1;   
