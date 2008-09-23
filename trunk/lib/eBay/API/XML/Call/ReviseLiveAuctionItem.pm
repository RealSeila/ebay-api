#!/usr/bin/perl

package eBay::API::XML::Call::ReviseLiveAuctionItem;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ReviseLiveAuctionItem.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::ReviseLiveAuctionItem

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::ReviseLiveAuctionItem inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::ReviseLiveAuctionItem::ReviseLiveAuctionItemRequestType;
use eBay::API::XML::Call::ReviseLiveAuctionItem::ReviseLiveAuctionItemResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'ReviseLiveAuctionItem';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::ReviseLiveAuctionItem::ReviseLiveAuctionItemRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::ReviseLiveAuctionItem::ReviseLiveAuctionItemResponseType';
}

#
# input properties
#

=head2 setDeletedField()

Reserved for future use.

  RequiredInput: No
#    Argument: reference to an array  
                      of 'xs:string'

=cut
       
sub setDeletedField {
   my $self   = shift;
   my $sDeletedField = shift;
   $self->getRequestDataType()->setDeletedField($sDeletedField);
}

=head2 setItem()

Child elements hold the values for properties that are changing.
The Item.ID property must always be set to the ID of the listing
being changed. Set other fields in the Item object only for those
properties that are changing.

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

  Returned: Conditionally
#    Returns: 'xs:string'

=cut
       
sub getCategoryID {
   my $self = shift;
   return $self->getResponseDataType()->getCategoryID();
}

=head2 getFees()

Child elements contain the estimated listing fees for the revised item
listing. The fees do not include the Final Value Fee (FVF), which cannot
be determined until an item is sold. Revising an item does not itself
incur a fee. However, certain item properties are fee-based and result
in the return of fees in the call's response.

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

  Returned: Always
#    Returns: 'ns:ItemIDType'

=cut
       
sub getItemID {
   my $self = shift;
   return $self->getResponseDataType()->getItemID();
}





1;   
