#!/usr/bin/perl

package eBay::API::XML::Call::GetItem::GetItemRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetItemRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetItem::GetItemRequestType

=head1 DESCRIPTION

Requests data for a specific item identified by item ID. Use no
DetailLevel to return all item fields without Item.Description.
Use a DetailLevel of ReturnAll to return all item fields. See
GetItem in the eBay Web Services Guide for more information.
If a listing ended more than 90 days ago, its title,
price, and other item information are not returned.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetItem::GetItemRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::ItemIDType;


my @gaProperties = ( [ 'IncludeCrossPromotion', 'xs:boolean', '', '', '' ]
	, [ 'IncludeItemSpecifics', 'xs:boolean', '', '', '' ]
	, [ 'IncludeTaxTable', 'xs:boolean', '', '', '' ]
	, [ 'IncludeWatchCount', 'xs:boolean', '', '', '' ]
	, [ 'ItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
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
  my $self = shift;
  $self->{'IncludeCrossPromotion'} = shift
}

=head2 isIncludeCrossPromotion()

#    Returns: 'xs:boolean'

=cut

sub isIncludeCrossPromotion {
  my $self = shift;
  return $self->{'IncludeCrossPromotion'};
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
  my $self = shift;
  $self->{'IncludeItemSpecifics'} = shift
}

=head2 isIncludeItemSpecifics()

#    Returns: 'xs:boolean'

=cut

sub isIncludeItemSpecifics {
  my $self = shift;
  return $self->{'IncludeItemSpecifics'};
}


=head2 setIncludeTaxTable()

If true, an associated tax table is returned in the response.
If no tax table is associated with the item, then no
tax table is returned, even if IncludeTaxTable is set to true.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setIncludeTaxTable {
  my $self = shift;
  $self->{'IncludeTaxTable'} = shift
}

=head2 isIncludeTaxTable()

#    Returns: 'xs:boolean'

=cut

sub isIncludeTaxTable {
  my $self = shift;
  return $self->{'IncludeTaxTable'};
}


=head2 setIncludeWatchCount()

Indicates if the caller wants to include watch count for that item in the
response. You must be the seller of the item to retrieve the watch count.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setIncludeWatchCount {
  my $self = shift;
  $self->{'IncludeWatchCount'} = shift
}

=head2 isIncludeWatchCount()

#    Returns: 'xs:boolean'

=cut

sub isIncludeWatchCount {
  my $self = shift;
  return $self->{'IncludeWatchCount'};
}


=head2 setItemID()

Specifies the item ID that uniquely identifies the item listing for which
to retrieve the data. ItemID is a required input.

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