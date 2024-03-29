#!/usr/bin/perl

package eBay::API::XML::Call::AddItem;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AddItem.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::AddItem

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::AddItem inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::AddItem::AddItemRequestType;
use eBay::API::XML::Call::AddItem::AddItemResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'AddItem';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::AddItem::AddItemRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::AddItem::AddItemResponseType';
}

#
# input properties
#

=head2 setItem()

Child elements hold the values that define the new item. Item is a
required input.
Also applicable to Half.com.

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
and the ID you passed in SecondaryCategory was mapped to a new ID by eBay.
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
and the ID you passed in PrimaryCategory was mapped to a new ID by eBay.
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

Child elements contain the estimated listing fees for the new item listing.
The fees do not include the Final Value Fee (FVF), which cannot be determined
until an item is sold.
Also returned for Half.com, but the values are not applicable to Half.com listings.

  Returned: Always
#    Returns: 'ns:FeesType'

=cut
       
sub getFees {
   my $self = shift;
   return $self->getResponseDataType()->getFees();
}

=head2 getItemID()

Unique item ID for the new listing.
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
Also returned for Half.com (for Half.com, the start time is always the time the item was listed).

  Returned: Always
#    Returns: 'xs:dateTime'

=cut
       
sub getStartTime {
   my $self = shift;
   return $self->getResponseDataType()->getStartTime();
}





1;   
