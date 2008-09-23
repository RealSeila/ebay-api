#!/usr/bin/perl

package eBay::API::XML::DataType::ReturnPolicyType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ReturnPolicyType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ReturnPolicyType

=head1 DESCRIPTION

Type for the return policy details of an item.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ReturnPolicyType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'Description', 'xs:string', '', '', '' ]
	, [ 'EAN', 'xs:string', '', '', '' ]
	, [ 'Refund', 'xs:string', '', '', '' ]
	, [ 'RefundOption', 'xs:token', '', '', '' ]
	, [ 'ReturnsAccepted', 'xs:string', '', '', '' ]
	, [ 'ReturnsAcceptedOption', 'xs:token', '', '', '' ]
	, [ 'ReturnsWithin', 'xs:string', '', '', '' ]
	, [ 'ReturnsWithinOption', 'xs:token', '', '', '' ]
	, [ 'ShippingCostPaidBy', 'xs:string', '', '', '' ]
	, [ 'ShippingCostPaidByOption', 'xs:token', '', '', '' ]
	, [ 'WarrantyDuration', 'xs:string', '', '', '' ]
	, [ 'WarrantyDurationOption', 'xs:token', '', '', '' ]
	, [ 'WarrantyOffered', 'xs:string', '', '', '' ]
	, [ 'WarrantyOfferedOption', 'xs:token', '', '', '' ]
	, [ 'WarrantyType', 'xs:string', '', '', '' ]
	, [ 'WarrantyTypeOption', 'xs:token', '', '', '' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::BaseDataType::getAttributesList()};

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



=head2 setDescription()

A detailed explanation of the seller's return policy.
<br>
<br>
<b>For AddItem, VerifyAddItem, and RelistItem:</b>
If the seller accepts returns (ReturnsAcceptedOption=ReturnsAccepted)
but does not specify this field when listing the item,
GetItem returns this as an empty node<br>
<br>
<b>For ReviseItem only:</b> 
If the listing has bids or sales and/or ends within 12 hours, 
you can't change this value. See the parent ReturnPolicy node description
for more details.

SeeLink: URL: GeteBayDetails.html#Response.ReturnPolicyDetails.Description
For: sites that support this field
Title: (GeteBayDetails) ReturnPolicyDetails.Description
MaxLength: 5000

  Calls: AddItem
         AddLiveAuctionItem
         GetItemRecommendations
         ReviseItem
         ReviseLiveAuctionItem
         RelistItem
         VerifyAddItem
  RequiredInput: No

#    Argument: 'xs:string'

=cut

sub setDescription {
  my $self = shift;
  $self->{'Description'} = shift
}

=head2 getDescription()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetBidderList
  Returned: Conditionally
  Details: GranularityLevel: Medium, Fine

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Coarse, Medium, Fine


#    Returns: 'xs:string'

=cut

sub getDescription {
  my $self = shift;
  return $self->{'Description'};
}


=head2 setEAN()

The European Article Number (EAN) associated with the item, if any.
Refer to the ReturnPolicyDetails node in GeteBayDetails
to determine which sites support this field.
Only returned if the seller has specified this value in their return policy.<br>
<br>
<b>For ReviseItem only:</b> 
If the listing has bids or sales and/or ends within 12 hours, 
you can't change this value. See the parent ReturnPolicy node description
for more details.<br>

SeeLink: URL: GeteBayDetails.html#Response.ReturnPolicyDetails.EAN
For: sites that support this field
Title: (GeteBayDetails) ReturnPolicyDetails.EAN

  Calls: AddItem
         AddLiveAuctionItem
         GetItemRecommendations
         ReviseItem
         ReviseLiveAuctionItem
         RelistItem
         VerifyAddItem
  RequiredInput: No

#    Argument: 'xs:string'

=cut

sub setEAN {
  my $self = shift;
  $self->{'EAN'} = shift
}

=head2 getEAN()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetBidderList
  Returned: Conditionally
  Details: GranularityLevel: Medium, Fine

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Coarse, Medium, Fine


#    Returns: 'xs:string'

=cut

sub getEAN {
  my $self = shift;
  return $self->{'EAN'};
}


=head2 setRefund()

Display string that buyer applications can use to present RefundOption in
a more user-friendly format to buyers. For example, in GetItem and
related calls, this value is usually localized and can contain spaces.
If necessary, you can predict the choice of values based on
the Refund.Description options returned by GeteBayDetails.<br>
<br>
Not applicable as input to the AddItem family of calls. (Use RefundOption instead.)

#    Argument: 'xs:string'

=cut

sub setRefund {
  my $self = shift;
  $self->{'Refund'} = shift
}

=head2 getRefund()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetBidderList
  Returned: Conditionally
  Details: GranularityLevel: Medium, Fine

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Coarse, Medium, Fine


#    Returns: 'xs:string'

=cut

sub getRefund {
  my $self = shift;
  return $self->{'Refund'};
}


=head2 setRefundOption()

Indicates how the seller will compensate the buyer for a returned item.
Use the ReturnPolicy.Description field to explain the policy details
(such as how quickly the seller will process the refund, whether the seller must
receive the item before processing the refund, and other useful details.).<br>
<br>
<b>Applicable values:</b> 
Use GeteBayDetails to determine which sites support this field, 
and the applicable values for each site. 
(RefundOptionsCodeType defines all the possible values.)<br>
<br>
<b>For AddItem, VerifyAddItem, and RelistItem:</b>
If the seller accepts returns (ReturnsAcceptedOption=ReturnsAccepted)
but you do not pass in this RefundOption field when listing the item,
some eBay sites may set a default value (like MoneyBack), and the seller
is obligated to honor this setting. Therefore, to avoid unexpected obligations,
the seller should set a specific value for this field.<br>
<br>
<b>For ReviseItem only:</b> 
If the listing has bids or sales and/or ends within 12 hours, 
you can't change this value. See the parent ReturnPolicy node description
for more details.

SeeLink: URL: GeteBayDetails.html#Response.ReturnPolicyDetails.Refund.RefundOption
For: sites that support this field, and applicable values
Title: (GeteBayDetails) RefundOption

  Calls: AddItem
         AddLiveAuctionItem
         GetItemRecommendations
         ReviseItem
         ReviseLiveAuctionItem
         RelistItem
         VerifyAddItem
  RequiredInput: No

#    Argument: 'xs:token'

=cut

sub setRefundOption {
  my $self = shift;
  $self->{'RefundOption'} = shift
}

=head2 getRefundOption()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetBidderList
  Returned: Conditionally
  Details: GranularityLevel: Medium, Fine

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Coarse, Medium, Fine


#    Returns: 'xs:token'

=cut

sub getRefundOption {
  my $self = shift;
  return $self->{'RefundOption'};
}


=head2 setReturnsAccepted()

Display string that buyer applications can use to present ReturnsAcceptedOption in
a more user-friendly format to buyers. For example, in GetItem and
related calls, this value is usually localized and can contain spaces.
If necessary, you can predict the choice of values based on
the ReturnsAccepted.Description options returned by GeteBayDetails.<br>
<br>
Not applicable as input to the AddItem family of calls. (Use ReturnsAcceptedOption instead.)

#    Argument: 'xs:string'

=cut

sub setReturnsAccepted {
  my $self = shift;
  $self->{'ReturnsAccepted'} = shift
}

=head2 getReturnsAccepted()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetBidderList
  Returned: Conditionally
  Details: GranularityLevel: Medium, Fine

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Coarse, Medium, Fine


#    Returns: 'xs:string'

=cut

sub getReturnsAccepted {
  my $self = shift;
  return $self->{'ReturnsAccepted'};
}


=head2 setReturnsAcceptedOption()

Indicates whether the seller allows the buyer to return the item.
This field is required when ReturnPolicy is specified.
(If you specify ReturnsNotAccepted, the View Item page may initially show the
return policy as unspecified. In a future release, the View Item page
will be updated to indicate that returns are not accepted instead.)<br>
<br>
On the eBay UK and Ireland sites, business sellers must accept returns for fixed price
items (including auction items with Buy It Now, and any other fixed price formats)
when the category requires a return policy.<br>
<br>
<b>Applicable values:</b> 
Use GeteBayDetails to determine which sites support this field, 
and the applicable values for each site. 
(ReturnsAcceptedOptionsCodeType defines all the possible values.)<br>
<br>
<b>For ReviseItem only:</b> 
If the listing has bids or sales and/or ends within 12 hours, 
you can't change this value. See the parent ReturnPolicy node description
for more details.

SeeLink: URL: GeteBayDetails.html#Response.ReturnPolicyDetails.ReturnsAccepted.ReturnsAcceptedOption
For: sites that support this field, and applicable values
Title: (GeteBayDetails) ReturnsAcceptedOption

  Calls: AddItem
         AddLiveAuctionItem
         VerifyAddItem
  RequiredInput: Conditionally

  Calls: GetItemRecommendations
         ReviseItem
         ReviseLiveAuctionItem
         RelistItem
  RequiredInput: No

#    Argument: 'xs:token'

=cut

sub setReturnsAcceptedOption {
  my $self = shift;
  $self->{'ReturnsAcceptedOption'} = shift
}

=head2 getReturnsAcceptedOption()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetBidderList
  Returned: Conditionally
  Details: GranularityLevel: Medium, Fine

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Coarse, Medium, Fine


#    Returns: 'xs:token'

=cut

sub getReturnsAcceptedOption {
  my $self = shift;
  return $self->{'ReturnsAcceptedOption'};
}


=head2 setReturnsWithin()

Display string that buyer applications can use to present ReturnsWithinOption in
a more user-friendly format to buyers. For example, in GetItem and
related calls, this value is usually localized and can contain spaces.
If necessary, you can predict the choice of values based on
the ReturnsWithin.Description options returned by GeteBayDetails.<br>
<br>
Not applicable as input to the AddItem family of calls. (Use ReturnsWithinOption instead.)

#    Argument: 'xs:string'

=cut

sub setReturnsWithin {
  my $self = shift;
  $self->{'ReturnsWithin'} = shift
}

=head2 getReturnsWithin()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetBidderList
  Returned: Conditionally
  Details: GranularityLevel: Medium, Fine

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Coarse, Medium, Fine


#    Returns: 'xs:string'

=cut

sub getReturnsWithin {
  my $self = shift;
  return $self->{'ReturnsWithin'};
}


=head2 setReturnsWithinOption()

The buyer can return the item within this period of time from the day they receive the item.
Use the ReturnPolicy.Description field to explain the policy details.<br>
<br>
<b>Applicable values:</b> 
Use GeteBayDetails to determine which sites support this field, 
and the applicable values for each site. 
(ReturnsWithinOptionsCodeType defines all the possible values.)<br>
<br>
<b>For AddItem, VerifyAddItem, and RelistItem:</b>
If the seller accepts returns (ReturnsAcceptedOption=ReturnsAccepted)
but you do not pass in this ReturnsWithinOption field when listing the item,
some eBay sites may set a default value (like Days_7), and the seller
is obligated to honor this setting. Therefore, to avoid unexpected obligations,
the seller should set a specific value for this field.<br>
<br>
<b>For ReviseItem only:</b> 
If the listing has bids or sales and/or ends within 12 hours, 
you can't change this value. See the parent ReturnPolicy node description
for more details.

SeeLink: URL: GeteBayDetails.html#Response.ReturnPolicyDetails.ReturnsWithin.ReturnsWithinOption
For: sites that support this field, and applicable values
Title: (GeteBayDetails) ReturnsWithinOption

  Calls: AddItem
         AddLiveAuctionItem
         GetItemRecommendations
         ReviseItem
         ReviseLiveAuctionItem
         RelistItem
         VerifyAddItem
  RequiredInput: Conditionally

#    Argument: 'xs:token'

=cut

sub setReturnsWithinOption {
  my $self = shift;
  $self->{'ReturnsWithinOption'} = shift
}

=head2 getReturnsWithinOption()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetBidderList
  Returned: Conditionally
  Details: GranularityLevel: Medium, Fine

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Coarse, Medium, Fine


#    Returns: 'xs:token'

=cut

sub getReturnsWithinOption {
  my $self = shift;
  return $self->{'ReturnsWithinOption'};
}


=head2 setShippingCostPaidBy()

Display string that buyer applications can use to present ShippingCostPaidByOption in
a more user-friendly format to buyers. For example, in GetItem and
related calls, this value is usually localized and can contain spaces.
If necessary, you can predict the choice of values based on
the ShippingCostPaidBy.Description options returned by GeteBayDetails.<br>
<br>
Not applicable as input to the AddItem family of calls. (Use ShippingCostPaidByOption instead.)

#    Argument: 'xs:string'

=cut

sub setShippingCostPaidBy {
  my $self = shift;
  $self->{'ShippingCostPaidBy'} = shift
}

=head2 getShippingCostPaidBy()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetBidderList
  Returned: Conditionally
  Details: GranularityLevel: Medium, Fine

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Coarse, Medium, Fine


#    Returns: 'xs:string'

=cut

sub getShippingCostPaidBy {
  my $self = shift;
  return $self->{'ShippingCostPaidBy'};
}


=head2 setShippingCostPaidByOption()

The party who pays the shipping cost for a returned item.
Use the ReturnPolicy.Description field to explain any additional details.<br>
<br>
<b>Applicable values:</b> 
Use GeteBayDetails to determine which sites support this field, 
and the applicable values for each site. 
(ShippingCostPaidByOptionsCodeType defines all the possible values.)<br>
<br>
<b>For AddItem, VerifyAddItem, and RelistItem:</b>
If the seller accepts returns (ReturnsAcceptedOption=ReturnsAccepted)
but you do not pass in this ShippingCostPaidByOption field when listing the item,
some eBay sites may set a default value (like Buyer), and the seller
is obligated to honor this setting. Therefore, to avoid unexpected obligations,
the seller should set a specific value for this field.<br>
<br>
<b>For ReviseItem only:</b> 
If the listing has bids or sales and/or ends within 12 hours, 
you can't change this value. See the parent ReturnPolicy node description
for more details.

SeeLink: URL: GeteBayDetails.html#Response.ReturnPolicyDetails.ShippingCostPaidBy.ShippingCostPaidByOption
For: sites that support this field, and applicable values
Title: (GeteBayDetails) ShippingCostPaidByOption

  Calls: AddItem
         AddLiveAuctionItem
         GetItemRecommendations
         ReviseItem
         ReviseLiveAuctionItem
         RelistItem
         VerifyAddItem
  RequiredInput: No

#    Argument: 'xs:token'

=cut

sub setShippingCostPaidByOption {
  my $self = shift;
  $self->{'ShippingCostPaidByOption'} = shift
}

=head2 getShippingCostPaidByOption()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetBidderList
  Returned: Conditionally
  Details: GranularityLevel: Medium, Fine

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Coarse, Medium, Fine


#    Returns: 'xs:token'

=cut

sub getShippingCostPaidByOption {
  my $self = shift;
  return $self->{'ShippingCostPaidByOption'};
}


=head2 setWarrantyDuration()

Display string that buyer applications can use to present WarrantyDurationOption in
a more user-friendly format to buyers. For example, For example, in GetItem and
related calls, this value is usually localized and can contain spaces.
If necessary, you can predict the choice of values based on
the WarrantyDuration.Description options returned by GeteBayDetails.<br>
<br>
Not applicable as input to the AddItem family of calls. (Use WarrantyDurationOption instead.)

#    Argument: 'xs:string'

=cut

sub setWarrantyDuration {
  my $self = shift;
  $self->{'WarrantyDuration'} = shift
}

=head2 getWarrantyDuration()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetBidderList
  Returned: Conditionally
  Details: GranularityLevel: Medium, Fine

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Coarse, Medium, Fine


#    Returns: 'xs:string'

=cut

sub getWarrantyDuration {
  my $self = shift;
  return $self->{'WarrantyDuration'};
}


=head2 setWarrantyDurationOption()

The warranty period.<br>
<br>
<b>Applicable values:</b> 
Use GeteBayDetails to determine which sites support this field, 
and the applicable values for each site. 
(Initially, only the eBay India site supports this field.)
(WarrantyDurationOptionsCodeType defines all the possible values.)<br>
<br>
<b>For AddItem, VerifyAddItem, and RelistItem:</b>
If the seller accepts returns (ReturnsAcceptedOption=ReturnsAccepted)
but you do not pass in this WarrantyDurationOption field when listing the item,
the eBay India site may set a default value, and the seller
is obligated to honor this setting. Therefore, to avoid unexpected obligations,
the seller should set a specific value for this field.<br>
<br>
<b>For ReviseItem only:</b> 
If the listing has bids or sales and/or ends within 12 hours, 
you can't change this value. See the parent ReturnPolicy node description
for more details.

SeeLink: URL: GeteBayDetails.html#Response.ReturnPolicyDetails.WarrantyDuration.WarrantyDurationOption
For: sites that support this field, and applicable values
Title: (GeteBayDetails) WarrantyDurationOption

  Calls: AddItem
         AddLiveAuctionItem
         GetItemRecommendations
         ReviseItem
         ReviseLiveAuctionItem
         RelistItem
         VerifyAddItem
  RequiredInput: No

#    Argument: 'xs:token'

=cut

sub setWarrantyDurationOption {
  my $self = shift;
  $self->{'WarrantyDurationOption'} = shift
}

=head2 getWarrantyDurationOption()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetBidderList
  Returned: Conditionally
  Details: GranularityLevel: Medium, Fine

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Coarse, Medium, Fine


#    Returns: 'xs:token'

=cut

sub getWarrantyDurationOption {
  my $self = shift;
  return $self->{'WarrantyDurationOption'};
}


=head2 setWarrantyOffered()

Display string that buyer applications can use to present WarrantyOfferedOption in
a more user-friendly format to buyers. For example, in GetItem and
related calls, this value is usually localized and can contain spaces.
If necessary, you can predict the choice of values based on
the WarrantyOffered.Description options returned by GeteBayDetails.<br>
<br>
Not applicable as input to the AddItem family of calls. (Use WarrantyOfferedOption instead.)

#    Argument: 'xs:string'

=cut

sub setWarrantyOffered {
  my $self = shift;
  $self->{'WarrantyOffered'} = shift
}

=head2 getWarrantyOffered()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetBidderList
  Returned: Conditionally
  Details: GranularityLevel: Medium, Fine

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Coarse, Medium, Fine


#    Returns: 'xs:string'

=cut

sub getWarrantyOffered {
  my $self = shift;
  return $self->{'WarrantyOffered'};
}


=head2 setWarrantyOfferedOption()

Indicates whether a warranty is offered for the item.<br>
<br>
<b>Applicable values:</b> 
Use GeteBayDetails to determine which sites support this field, 
and the applicable values for each site. 
(Initially, only the eBay India site supports this field.)
(WarrantyOfferedCodeType defines all the possible values.)<br>
<br>
<b>For AddItem, VerifyAddItem, and RelistItem:</b>
If the seller accepts returns (ReturnsAcceptedOption=ReturnsAccepted)
but you do not pass in this WarrantyOfferedOption field when listing the item,
the eBay India site may set a default value, and the seller
is obligated to honor this setting. Therefore, to avoid unexpected obligations,
the seller should set a specific value for this field.<br>
<br>
<span class="tablenote"><b>Note:</b>
For the US eBay Motors limited warranty (Short-Term Service Agreement) option,
use Item.LimitedWarrantyEligible instead.<br>
<br>
For the US eBay Motors "Is There an Existing Warranty?" option, use
Item.AttributeSetArray instead.</span><br>
<br>
<b>For ReviseItem only:</b> 
If the listing has bids or sales and/or ends within 12 hours, 
you can't change this value. See the parent ReturnPolicy node description
for more details.

SeeLink: URL: http://pages.ebay.in/help/policies/warranties.html
Title: Warranties (eBay India)
, URL: http://pages.ebay.in/help/tp/compliant-listings.html
Title: Guidelines for Creating Legally Compliant Listings (eBay India)
, URL: GeteBayDetails.html#Response.ReturnPolicyDetails.WarrantyOffered.WarrantyOfferedOption
For: sites that support this field, and applicable values
Title: (GeteBayDetails) WarrantyOfferedOption
, URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=MotorsWarranty
Title: Short-Term Service Agreement (Limited Warranty)
, URL: AddItem.html#Request.Item.LimitedWarrantyEligible
For: US eBay Motors Short-Term Service Agreement
Title: (AddItem) Item.LimitedWarrantyEligible
, URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=MotorsCarAttrs
For: US eBay Motors existing warranty option
Title: Valid Item Specifics for Listing eBay Motors US Cars & Trucks
, URL: AddItem.html#Request.Item.AttributeSetArray
For: US eBay Motors existing warranty option
Title: (AddItem) Item.AttributeSetArray


  Calls: AddItem
         AddLiveAuctionItem
         GetItemRecommendations
         ReviseItem
         ReviseLiveAuctionItem
         RelistItem
         VerifyAddItem
  RequiredInput: No

#    Argument: 'xs:token'

=cut

sub setWarrantyOfferedOption {
  my $self = shift;
  $self->{'WarrantyOfferedOption'} = shift
}

=head2 getWarrantyOfferedOption()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetBidderList
  Returned: Conditionally
  Details: GranularityLevel: Medium, Fine

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Coarse, Medium, Fine


#    Returns: 'xs:token'

=cut

sub getWarrantyOfferedOption {
  my $self = shift;
  return $self->{'WarrantyOfferedOption'};
}


=head2 setWarrantyType()

Display string that buyer applications can use to present WarrantyTypeOption in
a more user-friendly format to buyers. For example, in GetItem and
related calls, this value is usually localized and can contain spaces.
If necessary, you can predict the choice of values based on
the WarrantyType.Description options returned by GeteBayDetails.<br>
<br>
Not applicable as input to the AddItem family of calls. (Use WarrantyTypeOption instead.)

#    Argument: 'xs:string'

=cut

sub setWarrantyType {
  my $self = shift;
  $self->{'WarrantyType'} = shift
}

=head2 getWarrantyType()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetBidderList
  Returned: Conditionally
  Details: GranularityLevel: Medium, Fine

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Coarse, Medium, Fine


#    Returns: 'xs:string'

=cut

sub getWarrantyType {
  my $self = shift;
  return $self->{'WarrantyType'};
}


=head2 setWarrantyTypeOption()

Indicates the source or type of the warranty, if any.<br>
<br>
<b>Applicable values:</b> 
Use GeteBayDetails to determine which sites support this field, 
and the applicable values for each site. 
(Initially, only the eBay India site supports this field.)
(WarrantyTypeOptionsCodeType defines all the possible values.)<br>
<br>
<b>For AddItem, VerifyAddItem, and RelistItem:</b>
If the seller accepts returns (ReturnsAcceptedOption=ReturnsAccepted)
but you do not pass in this WarrantyTypeOption field when listing the item,
the eBay India site may set a default value, and the seller
is obligated to honor this setting. Therefore, to avoid unexpected obligations,
the seller should set a specific value for this field.<br>
<br>
<b>For ReviseItem only:</b> 
If the listing has bids or sales and/or ends within 12 hours, 
you can't change this value. See the parent ReturnPolicy node description
for more details.

SeeLink: URL: GeteBayDetails.html#Response.ReturnPolicyDetails.WarrantyType.WarrantyTypeOption
For: sites that support this field, and applicable values
Title: (GeteBayDetails) WarrantyTypeOption

  Calls: AddItem
         AddLiveAuctionItem
         GetItemRecommendations
         ReviseItem
         ReviseLiveAuctionItem
         RelistItem
         VerifyAddItem
  RequiredInput: No

#    Argument: 'xs:token'

=cut

sub setWarrantyTypeOption {
  my $self = shift;
  $self->{'WarrantyTypeOption'} = shift
}

=head2 getWarrantyTypeOption()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetBidderList
  Returned: Conditionally
  Details: GranularityLevel: Medium, Fine

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll
           GranularityLevel: Coarse, Medium, Fine


#    Returns: 'xs:token'

=cut

sub getWarrantyTypeOption {
  my $self = shift;
  return $self->{'WarrantyTypeOption'};
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
