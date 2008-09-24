#!/usr/bin/perl

package eBay::API::XML::Call::GetMyeBayBuying;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetMyeBayBuying.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetMyeBayBuying

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetMyeBayBuying inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetMyeBayBuying::GetMyeBayBuyingRequestType;
use eBay::API::XML::Call::GetMyeBayBuying::GetMyeBayBuyingResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetMyeBayBuying';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetMyeBayBuying::GetMyeBayBuyingRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetMyeBayBuying::GetMyeBayBuyingResponseType';
}

#
# input properties
#

=head2 setBestOfferList()

Specifies how to return the list of items on which the user has placed
best offers. Allowed values are Include, ListingType, Sort, DurationInDays
(0-60 valid), IncludeNotes, and Pagination. Include in the request to
return this container at a DetailLevel of ReturnSummary.

  RequiredInput: No
#    Argument: 'ns:ItemListCustomizationType'

=cut
       
sub setBestOfferList {
   my $self   = shift;
   my $pBestOfferList = shift;
   $self->getRequestDataType()->setBestOfferList($pBestOfferList);
}

=head2 setBidAssistantList()

This is an optional element, used to indicate whether the Bid Assistant feature is being used.

  RequiredInput: No
#    Argument: 'ns:BidAssistantListType'

=cut
       
sub setBidAssistantList {
   my $self   = shift;
   my $pBidAssistantList = shift;
   $self->getRequestDataType()->setBidAssistantList($pBidAssistantList);
}

=head2 setBidList()

Specifies how to return the list of items bid on in the buyer's My eBay
Bidding list. Allowed values are Sort and IncludeNotes.Include in the request to
return this container at a DetailLevel of ReturnSummary.

  RequiredInput: No
#    Argument: 'ns:ItemListCustomizationType'

=cut
       
sub setBidList {
   my $self   = shift;
   my $pBidList = shift;
   $self->getRequestDataType()->setBidList($pBidList);
}

=head2 setDeletedFromLostList()

Specifies how to return the list of items lost and deleted from the buyer's My
eBay list. Allowed values are DurationInDays (0-60), IncludeNotes, Sort,
and Pagination. Include in the request to return this container
at a DetailLevel of ReturnSummary.

  RequiredInput: No
#    Argument: 'ns:ItemListCustomizationType'

=cut
       
sub setDeletedFromLostList {
   my $self   = shift;
   my $pDeletedFromLostList = shift;
   $self->getRequestDataType()->setDeletedFromLostList($pDeletedFromLostList);
}

=head2 setDeletedFromWonList()

Specifies how to return the list of items won and deleted from the buyer's My
eBay list. Allowed values are DurationInDays (0-60), IncludeNotes, Sort,
and Pagination. Include in the request to return this container at
a DetailLevel of ReturnSummary.

  RequiredInput: No
#    Argument: 'ns:ItemListCustomizationType'

=cut
       
sub setDeletedFromWonList {
   my $self   = shift;
   my $pDeletedFromWonList = shift;
   $self->getRequestDataType()->setDeletedFromWonList($pDeletedFromWonList);
}

=head2 setFavoriteSearches()

Specifies how to return the list of favorite searches in the user's My
eBay list. Only returned if the user has Favorite Searches. All detail levels return the search name, search query, and search elements, such
as QueryKeywords, SortOrder, and Condition. Do not use an Include tag
if you are using a detail level of ReturnAll.

  RequiredInput: No
#    Argument: 'ns:MyeBaySelectionType'

=cut
       
sub setFavoriteSearches {
   my $self   = shift;
   my $pFavoriteSearches = shift;
   $self->getRequestDataType()->setFavoriteSearches($pFavoriteSearches);
}

=head2 setFavoriteSellers()

Specifies how to return the list of favorite sellers in the user's My eBay
list. All values are allowed. Include in the request to return this
container at a DetailLevel of ReturnSummary.

  RequiredInput: No
#    Argument: 'ns:MyeBaySelectionType'

=cut
       
sub setFavoriteSellers {
   my $self   = shift;
   my $pFavoriteSellers = shift;
   $self->getRequestDataType()->setFavoriteSellers($pFavoriteSellers);
}

=head2 setLostList()

Specifies how to return the list of items bid on and lost in the user's My
eBay list. Allowed values are DurationInDays (valid values 0-60), Sort,
IncludeNotes, and Pagination. Include in the request to return this
container at a DetailLevel of ReturnSummary.

  RequiredInput: No
#    Argument: 'ns:ItemListCustomizationType'

=cut
       
sub setLostList {
   my $self   = shift;
   my $pLostList = shift;
   $self->getRequestDataType()->setLostList($pLostList);
}

=head2 setSecondChanceOffer()

Specifies how to return the list of second chance offers in the user's My
eBay list. All values are allowed. Include in the request to return this
container at a DetailLevel of ReturnSummary.

  RequiredInput: No
#    Argument: 'ns:MyeBaySelectionType'

=cut
       
sub setSecondChanceOffer {
   my $self   = shift;
   my $pSecondChanceOffer = shift;
   $self->getRequestDataType()->setSecondChanceOffer($pSecondChanceOffer);
}

=head2 setWatchList()

Specifies how to return the list of watched items in the user's My eBay
list. Include in the request to return this container at a DetailLevel of
ReturnSummary.

  RequiredInput: No
#    Argument: 'ns:ItemListCustomizationType'

=cut
       
sub setWatchList {
   my $self   = shift;
   my $pWatchList = shift;
   $self->getRequestDataType()->setWatchList($pWatchList);
}

=head2 setWonList()

Specifies how to return the list of items bid on and won in the user's My
eBay list. Allowed values are DurationInDays (valid values 0-60), Sort,
IncludeNotes, and Pagination. Include in the request to return this
container at a DetailLevel of ReturnSummary.

  RequiredInput: No
#    Argument: 'ns:ItemListCustomizationType'

=cut
       
sub setWonList {
   my $self   = shift;
   my $pWonList = shift;
   $self->getRequestDataType()->setWonList($pWonList);
}



#
# output properties
#

=head2 getBestOfferList()

Contains the items the user has placed best offers on. Only returned if
items exist that meet the request criteria.

  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
#    Returns: 'ns:PaginatedItemArrayType'

=cut
       
sub getBestOfferList {
   my $self = shift;
   return $self->getResponseDataType()->getBestOfferList();
}

=head2 getBidAssistantList()

Contains the items that were bid on using the Bid Assistant feature.

  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
#    Returns: 'ns:BidGroupArrayType'

=cut
       
sub getBidAssistantList {
   my $self = shift;
   return $self->getResponseDataType()->getBidAssistantList();
}

=head2 getBidList()

Contains all the items the buyer has bid on.
Only returned if items exist that meet the request criteria.

  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
#    Returns: 'ns:PaginatedItemArrayType'

=cut
       
sub getBidList {
   my $self = shift;
   return $self->getResponseDataType()->getBidList();
}

=head2 getBuyingSummary()

Contains a summary of the items the user has bid on. Returned at all detail levels.

  Returned: Always
  Details: DetailLevel: none, ReturnSummary, ReturnAll
#    Returns: 'ns:BuyingSummaryType'

=cut
       
sub getBuyingSummary {
   my $self = shift;
   return $self->getResponseDataType()->getBuyingSummary();
}

=head2 getDeletedFromLostList()

Contains the items the buyer has bid on, lost, and deleted from My eBay. 
Only returned if items exist that meet the request criteria.

  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
#    Returns: 'ns:PaginatedItemArrayType'

=cut
       
sub getDeletedFromLostList {
   my $self = shift;
   return $self->getResponseDataType()->getDeletedFromLostList();
}

=head2 getDeletedFromWonList()

Contains the items the buyer has bid on, won, and deleted from My eBay. 
Only returned if items exist that meet the request criteria.

  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
#    Returns: 'ns:PaginatedOrderTransactionArrayType'

=cut
       
sub getDeletedFromWonList {
   my $self = shift;
   return $self->getResponseDataType()->getDeletedFromWonList();
}

=head2 getFavoriteSearches()

Contains a list of the user's favorite searches. Only returned if the 
user has Favorite Searches. The search name, search query, and search
elements, such as QueryKeywords, SortOrder, and Condition are returned.
<br /><br />
You can paste the Search Query response, that comes back as a URL, into a browser to re-play the Favorite Search.<br /><br />
The search elements that are returned by this call can be used as input
for the Shopping Web Service FindItemsAdvanced request.

  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
#    Returns: 'ns:MyeBayFavoriteSearchListType'

=cut
       
sub getFavoriteSearches {
   my $self = shift;
   return $self->getResponseDataType()->getFavoriteSearches();
}

=head2 getFavoriteSellers()

Contains a list of the user's favorite sellers. Only returned if items
exist that meet the request criteria.

  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
#    Returns: 'ns:MyeBayFavoriteSellerListType'

=cut
       
sub getFavoriteSellers {
   my $self = shift;
   return $self->getResponseDataType()->getFavoriteSellers();
}

=head2 getLostList()

Contains the items the user has bid on and lost. Only returned if items
exist that meet the request criteria.

  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
#    Returns: 'ns:PaginatedItemArrayType'

=cut
       
sub getLostList {
   my $self = shift;
   return $self->getResponseDataType()->getLostList();
}

=head2 getSecondChanceOffer()

Contains the list of second chance offers the user has received. Only
returned if items exist that meet the request criteria.

  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
#    Returns: reference to an array  
                      of 'ns:ItemType'

=cut
       
sub getSecondChanceOffer {
   my $self = shift;
   return $self->getResponseDataType()->getSecondChanceOffer();
}

=head2 getWatchList()

Contains the items the user is watching. Only returned if items exist that
meet the request criteria.

  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
#    Returns: 'ns:PaginatedItemArrayType'

=cut
       
sub getWatchList {
   my $self = shift;
   return $self->getResponseDataType()->getWatchList();
}

=head2 getWonList()

Contains the items the user has bid on and won. Only returned if items
exist that meet the request criteria.

  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll
#    Returns: 'ns:PaginatedOrderTransactionArrayType'

=cut
       
sub getWonList {
   my $self = shift;
   return $self->getResponseDataType()->getWonList();
}





1;   
