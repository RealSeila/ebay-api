#!/usr/bin/perl

package eBay::API::XML::Call::GetItem;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetItem.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetItem

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetItem inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetItem::GetItemRequestType;
use eBay::API::XML::Call::GetItem::GetItemResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetItem';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetItem::GetItemRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetItem::GetItemResponseType';
}

#
# input properties
#

=head2 setIncludeCrossPromotion()

Specifies whether or not to include cross-promotion information for
the item in the call response.
<br><br>
With a request version of 485 or higher, the default is false (do not
include cross-promotion details). Set to true to retrieve cross-promotion
information for the item. Cross-promotion information is returned in
Item.CrossPromotion.PromotedItem.PromotionDetails.
A promoted item will now contain multiple PromotionDetails containers.
<br><br>
With a request version lower than 485, the default is true (include
cross-promotions). Set the value to false if you do not want to retrieve
cross-promotion information. Cross-promotion information, PromotedPrice
and PromotedPriceType, are returned in Item.CrossPromotion.PromotedItem.
If a promoted item has multiple PromotedPriceType and PromotedPrice value
pairs, only the last pair is returned.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setIncludeCrossPromotion {
   my $self   = shift;
   my $sIncludeCrossPromotion = shift;
   $self->getRequestDataType()->setIncludeCrossPromotion($sIncludeCrossPromotion);
}

=head2 setIncludeItemSpecifics()

If true, the response returns the ItemSpecifics node
(if the listing has custom Item Specifics).<br>
<br>
Item Specifics are well-known aspects of items in a given
category. For example, items in a washer and dryer category
might have an aspect like Type=Top-Loading; whereas
items in a jewelry category might have an aspect like
Gemstone=Amber.<br>
<br>
(This does not cause the response to include ID-based
attributes. To also retrieve ID-based attributes,
pass DetailLevel in the request with the value
ItemReturnAttributes or ReturnAll.)

  RequiredInput: No
  SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=ItemSpecifics, Title: Working with Custom Item Specifics
#    Argument: 'xs:boolean'

=cut
       
sub setIncludeItemSpecifics {
   my $self   = shift;
   my $sIncludeItemSpecifics = shift;
   $self->getRequestDataType()->setIncludeItemSpecifics($sIncludeItemSpecifics);
}

=head2 setIncludeTaxTable()

If true, an associated tax table is returned in the response.
If no tax table is associated with the item, then no
tax table is returned, even if IncludeTaxTable is set to true.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setIncludeTaxTable {
   my $self   = shift;
   my $sIncludeTaxTable = shift;
   $self->getRequestDataType()->setIncludeTaxTable($sIncludeTaxTable);
}

=head2 setIncludeWatchCount()

Indicates if the caller wants to include watch count for that item in the
response. You must be the seller of the item to retrieve the watch count.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setIncludeWatchCount {
   my $self   = shift;
   my $sIncludeWatchCount = shift;
   $self->getRequestDataType()->setIncludeWatchCount($sIncludeWatchCount);
}

=head2 setItemID()

Specifies the item ID that uniquely identifies the item listing for which
to retrieve the data. ItemID is a required input.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: Yes
#    Argument: 'ns:ItemIDType'

=cut
       
sub setItemID {
   my $self   = shift;
   my $pItemID = shift;
   $self->getRequestDataType()->setItemID($pItemID);
}



#
# output properties
#

=head2 getItem()

ItemType object that contains the data for the specified item.

  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll
#    Returns: 'ns:ItemType'

=cut
       
sub getItem {
   my $self = shift;
   return $self->getResponseDataType()->getItem();
}





1;   
