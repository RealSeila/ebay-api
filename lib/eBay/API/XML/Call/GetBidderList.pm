#!/usr/bin/perl

package eBay::API::XML::Call::GetBidderList;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetBidderList.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetBidderList

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetBidderList inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetBidderList::GetBidderListRequestType;
use eBay::API::XML::Call::GetBidderList::GetBidderListResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetBidderList';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetBidderList::GetBidderListRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetBidderList::GetBidderListResponseType';
}

#
# input properties
#

=head2 setActiveItemsOnly()

Indicates whether to limit the result set to active items.
If true, only active items are returned and the EndTimeFrom
and EndTimeTo filters are ignored. If false (or not sent),
active and ended items are returned.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setActiveItemsOnly {
   my $self   = shift;
   my $sActiveItemsOnly = shift;
   $self->getRequestDataType()->setActiveItemsOnly($sActiveItemsOnly);
}

=head2 setEndTimeFrom()

Limits returned items to only those for which the item's
end date is on or after the date-time specified. Specify an
end date within 30 days prior to today. Items that ended
more than 30 days ago are omitted from the results. If
specified, EndTimeTo must also be specified. Express
date-time in the format YYYY-MM-DD HH:MM:SS, and in GMT.
(For information on how to convert between your local time zone
and GMT, see Time Values Note.) This field is ignored if ActiveItemsOnly is true.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut
       
sub setEndTimeFrom {
   my $self   = shift;
   my $sEndTimeFrom = shift;
   $self->getRequestDataType()->setEndTimeFrom($sEndTimeFrom);
}

=head2 setEndTimeTo()

Limits returned items to only those for which the item's
end date is on or before the date-time specified. If
specified, EndTimeFrom must also be specified. Express
date-time in the format YYYY-MM-DD HH:MM:SS, and in GMT.
This field is ignored if ActiveItemsOnly is true.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut
       
sub setEndTimeTo {
   my $self   = shift;
   my $sEndTimeTo = shift;
   $self->getRequestDataType()->setEndTimeTo($sEndTimeTo);
}

=head2 setGranularityLevel()

For GetBidderList, you can reduce the ItemType fields and other fields returned
by specifying one of two values in the GranularityLevel field, Coarse or Medium.
If you specify Coarse, the primary fields returned are the following: Item.ItemID and Item.ListingDetails.EndTime. If you specify Medium, an abbreviated result set is returned
that includes many more fields than in the case of Coarse, including the following:
Item.BuyItNowPrice, Item.Currency, Item.Site, and Item.Title.

PresentDetails: Yes

  RequiredInput: No
#    Argument: 'ns:GranularityLevelCodeType'

=cut
       
sub setGranularityLevel {
   my $self   = shift;
   my $sGranularityLevel = shift;
   $self->getRequestDataType()->setGranularityLevel($sGranularityLevel);
}

=head2 setUserID()

The user for whom information should be returned. If
provided, overrides user defined via RequesterCredentials
in header.

  RequiredInput: No
#    Argument: 'ns:UserIDType'

=cut
       
sub setUserID {
   my $self   = shift;
   my $pUserID = shift;
   $self->getRequestDataType()->setUserID($pUserID);
}



#
# output properties
#

=head2 getBidItemArray()

Array of items the bidder has bid on, has won or has lost.

  Returned: Always
#    Returns: 'ns:ItemArrayType'

=cut
       
sub getBidItemArray {
   my $self = shift;
   return $self->getResponseDataType()->getBidItemArray();
}

=head2 getBidder()

Data for one eBay bidder.

  Returned: Always
#    Returns: 'ns:UserType'

=cut
       
sub getBidder {
   my $self = shift;
   return $self->getResponseDataType()->getBidder();
}





1;   
