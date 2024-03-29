#!/usr/bin/perl

package eBay::API::XML::Call::GetMyeBayBuying::GetMyeBayBuyingRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetMyeBayBuyingRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetMyeBayBuying::GetMyeBayBuyingRequestType

=head1 DESCRIPTION

Returns items from the All Buying section of the user's My eBay
account, including items the user is watching, bidding on, has
won, has not won, or has made best offers on.
<br /><br />
A DetailLevel of ReturnSummary returns only the BuyingSummary
and the specific container(s) requested (by adding an Include value
of true for each container you want to include in the response).
<br /><br />
A DetailLevel of ReturnAll returns the BuyingSummary and all
other containers that do not contain the Include tag. Any containers
that have an Include value specified will not be returned with the
response.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetMyeBayBuying::GetMyeBayBuyingRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::BidAssistantListType;
use eBay::API::XML::DataType::ItemListCustomizationType;
use eBay::API::XML::DataType::MyeBaySelectionType;


my @gaProperties = ( [ 'BestOfferList', 'ns:ItemListCustomizationType', ''
	     ,'eBay::API::XML::DataType::ItemListCustomizationType', '1' ]
	, [ 'BidAssistantList', 'ns:BidAssistantListType', ''
	     ,'eBay::API::XML::DataType::BidAssistantListType', '1' ]
	, [ 'BidList', 'ns:ItemListCustomizationType', ''
	     ,'eBay::API::XML::DataType::ItemListCustomizationType', '1' ]
	, [ 'DeletedFromLostList', 'ns:ItemListCustomizationType', ''
	     ,'eBay::API::XML::DataType::ItemListCustomizationType', '1' ]
	, [ 'DeletedFromWonList', 'ns:ItemListCustomizationType', ''
	     ,'eBay::API::XML::DataType::ItemListCustomizationType', '1' ]
	, [ 'FavoriteSearches', 'ns:MyeBaySelectionType', ''
	     ,'eBay::API::XML::DataType::MyeBaySelectionType', '1' ]
	, [ 'FavoriteSellers', 'ns:MyeBaySelectionType', ''
	     ,'eBay::API::XML::DataType::MyeBaySelectionType', '1' ]
	, [ 'LostList', 'ns:ItemListCustomizationType', ''
	     ,'eBay::API::XML::DataType::ItemListCustomizationType', '1' ]
	, [ 'SecondChanceOffer', 'ns:MyeBaySelectionType', ''
	     ,'eBay::API::XML::DataType::MyeBaySelectionType', '1' ]
	, [ 'WatchList', 'ns:ItemListCustomizationType', ''
	     ,'eBay::API::XML::DataType::ItemListCustomizationType', '1' ]
	, [ 'WonList', 'ns:ItemListCustomizationType', ''
	     ,'eBay::API::XML::DataType::ItemListCustomizationType', '1' ]
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



=head2 setBestOfferList()

Specifies how to return the list of items on which the user has placed
best offers. Allowed values are Include, ListingType, Sort, DurationInDays
(0-60 valid), IncludeNotes, and Pagination. Include in the request to
return this container at a DetailLevel of ReturnSummary.

  RequiredInput: No
#    Argument: 'ns:ItemListCustomizationType'

=cut

sub setBestOfferList {
  my $self = shift;
  $self->{'BestOfferList'} = shift
}

=head2 getBestOfferList()

#    Returns: 'ns:ItemListCustomizationType'

=cut

sub getBestOfferList {
  my $self = shift;
  return $self->_getDataTypeInstance( 'BestOfferList'
		,'eBay::API::XML::DataType::ItemListCustomizationType');
}


=head2 setBidAssistantList()

This is an optional element, used to indicate whether the Bid Assistant feature is being used.

  RequiredInput: No
#    Argument: 'ns:BidAssistantListType'

=cut

sub setBidAssistantList {
  my $self = shift;
  $self->{'BidAssistantList'} = shift
}

=head2 getBidAssistantList()

#    Returns: 'ns:BidAssistantListType'

=cut

sub getBidAssistantList {
  my $self = shift;
  return $self->_getDataTypeInstance( 'BidAssistantList'
		,'eBay::API::XML::DataType::BidAssistantListType');
}


=head2 setBidList()

Specifies how to return the list of items bid on in the buyer's My eBay
Bidding list. Allowed values are Sort and IncludeNotes.Include in the request to
return this container at a DetailLevel of ReturnSummary.

  RequiredInput: No
#    Argument: 'ns:ItemListCustomizationType'

=cut

sub setBidList {
  my $self = shift;
  $self->{'BidList'} = shift
}

=head2 getBidList()

#    Returns: 'ns:ItemListCustomizationType'

=cut

sub getBidList {
  my $self = shift;
  return $self->_getDataTypeInstance( 'BidList'
		,'eBay::API::XML::DataType::ItemListCustomizationType');
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
  my $self = shift;
  $self->{'DeletedFromLostList'} = shift
}

=head2 getDeletedFromLostList()

#    Returns: 'ns:ItemListCustomizationType'

=cut

sub getDeletedFromLostList {
  my $self = shift;
  return $self->_getDataTypeInstance( 'DeletedFromLostList'
		,'eBay::API::XML::DataType::ItemListCustomizationType');
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
  my $self = shift;
  $self->{'DeletedFromWonList'} = shift
}

=head2 getDeletedFromWonList()

#    Returns: 'ns:ItemListCustomizationType'

=cut

sub getDeletedFromWonList {
  my $self = shift;
  return $self->_getDataTypeInstance( 'DeletedFromWonList'
		,'eBay::API::XML::DataType::ItemListCustomizationType');
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
  my $self = shift;
  $self->{'FavoriteSearches'} = shift
}

=head2 getFavoriteSearches()

#    Returns: 'ns:MyeBaySelectionType'

=cut

sub getFavoriteSearches {
  my $self = shift;
  return $self->_getDataTypeInstance( 'FavoriteSearches'
		,'eBay::API::XML::DataType::MyeBaySelectionType');
}


=head2 setFavoriteSellers()

Specifies how to return the list of favorite sellers in the user's My eBay
list. All values are allowed. Include in the request to return this
container at a DetailLevel of ReturnSummary.

  RequiredInput: No
#    Argument: 'ns:MyeBaySelectionType'

=cut

sub setFavoriteSellers {
  my $self = shift;
  $self->{'FavoriteSellers'} = shift
}

=head2 getFavoriteSellers()

#    Returns: 'ns:MyeBaySelectionType'

=cut

sub getFavoriteSellers {
  my $self = shift;
  return $self->_getDataTypeInstance( 'FavoriteSellers'
		,'eBay::API::XML::DataType::MyeBaySelectionType');
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
  my $self = shift;
  $self->{'LostList'} = shift
}

=head2 getLostList()

#    Returns: 'ns:ItemListCustomizationType'

=cut

sub getLostList {
  my $self = shift;
  return $self->_getDataTypeInstance( 'LostList'
		,'eBay::API::XML::DataType::ItemListCustomizationType');
}


=head2 setSecondChanceOffer()

Specifies how to return the list of second chance offers in the user's My
eBay list. All values are allowed. Include in the request to return this
container at a DetailLevel of ReturnSummary.

  RequiredInput: No
#    Argument: 'ns:MyeBaySelectionType'

=cut

sub setSecondChanceOffer {
  my $self = shift;
  $self->{'SecondChanceOffer'} = shift
}

=head2 getSecondChanceOffer()

#    Returns: 'ns:MyeBaySelectionType'

=cut

sub getSecondChanceOffer {
  my $self = shift;
  return $self->_getDataTypeInstance( 'SecondChanceOffer'
		,'eBay::API::XML::DataType::MyeBaySelectionType');
}


=head2 setWatchList()

Specifies how to return the list of watched items in the user's My eBay
list. Include in the request to return this container at a DetailLevel of
ReturnSummary.

  RequiredInput: No
#    Argument: 'ns:ItemListCustomizationType'

=cut

sub setWatchList {
  my $self = shift;
  $self->{'WatchList'} = shift
}

=head2 getWatchList()

#    Returns: 'ns:ItemListCustomizationType'

=cut

sub getWatchList {
  my $self = shift;
  return $self->_getDataTypeInstance( 'WatchList'
		,'eBay::API::XML::DataType::ItemListCustomizationType');
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
  my $self = shift;
  $self->{'WonList'} = shift
}

=head2 getWonList()

#    Returns: 'ns:ItemListCustomizationType'

=cut

sub getWonList {
  my $self = shift;
  return $self->_getDataTypeInstance( 'WonList'
		,'eBay::API::XML::DataType::ItemListCustomizationType');
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
