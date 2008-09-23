#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::SearchSortOrderCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SearchSortOrderCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::SearchSortOrderCodeType

=head1 DESCRIPTION

Determines the order in which items are returned when you use the GetSearchResults call.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 SortByEndDate

(in) Sorts items by the end date (items ending soonest). This is the default for most sites,
except where noted for other values.



=cut


use constant SortByEndDate => scalar('SortByEndDate');


=head2 SortByStartDate

(in) Sorts items by the start date (most recently listed first).



=cut


use constant SortByStartDate => scalar('SortByStartDate');


=head2 SortByCurrentBid

(in) Sorts items by current price (lowest bid first).
Note that if an item was listed in a different currency from the
site's currency, that item is sorted is based on its ConvertedCurrentPrice value.



=cut


use constant SortByCurrentBid => scalar('SortByCurrentBid');


=head2 SortByListingDate

(in) Sorts items by the listing date in descending order.



=cut


use constant SortByListingDate => scalar('SortByListingDate');


=head2 SortByCurrentBidAsc

(in)Due to the new Price Plus Shipping Sort feature, SortByCurrentBidAsc
is no longer functional.
The Price Plus Shipping Sort feature causes item sorting to consider shipping costs. For more information, please see the PricePlusShippingAsc value.
Formerly, SortByCurrentBidAsc sorted items by the current bid price in
ascending order (lowest bid first).
(If an item was listed in a different currency from the
site currency, the item was sorted based on its ConvertedCurrentPrice value.)



=cut


use constant SortByCurrentBidAsc => scalar('SortByCurrentBidAsc');


=head2 SortByCurrentBidDesc

(in) Sorts items by the current bid price in descending order (highest bid first).
Note that if an item was listed in a different currency from the
site's currency, the item is sorted based on its ConvertedCurrentPrice value.



=cut


use constant SortByCurrentBidDesc => scalar('SortByCurrentBidDesc');


=head2 SortByPayPalAsc

(in) This input value for sorting is no longer functional.
Formerly, this input value sorted items in ascending order
based on whether PayPal was accepted (accepted followed by unaccepted).



=cut


use constant SortByPayPalAsc => scalar('SortByPayPalAsc');


=head2 SortByPayPalDesc

(in) This input value for sorting is no longer functional.
Formerly, this input value sorted items in descending order
based on whether PayPal was accepted (unaccepted followed by accepted).



=cut


use constant SortByPayPalDesc => scalar('SortByPayPalDesc');


=head2 SortByEscrowAsc

(in) Sorts items in ascending order based on whether Escrow is applicable (applicable followed by inapplicable).



=cut


use constant SortByEscrowAsc => scalar('SortByEscrowAsc');


=head2 SortByEscrowDesc

(in) Sorts items in descending order based on whether Escrow is applicable (inapplicable followed by applicable).



=cut


use constant SortByEscrowDesc => scalar('SortByEscrowDesc');


=head2 SortByCountryAsc

(in) Sorts items in ascending order by the country in which the items are located.



=cut


use constant SortByCountryAsc => scalar('SortByCountryAsc');


=head2 SortByCountryDesc

(in) Sorts items in descending order by the country in which the items are located.



=cut


use constant SortByCountryDesc => scalar('SortByCountryDesc');


=head2 SortByDistanceAsc

(in) Sorts items based on distance from the buyer, with the nearest items returned first.



=cut


use constant SortByDistanceAsc => scalar('SortByDistanceAsc');


=head2 SortByBidCountAsc

(in) Sorts items based on the number of bids, fewest bids first.



=cut


use constant SortByBidCountAsc => scalar('SortByBidCountAsc');


=head2 SortByBidCountDesc

(in) Sorts items based on the number of bids, most bids first.



=cut


use constant SortByBidCountDesc => scalar('SortByBidCountDesc');


=head2 BestMatchSort

(in) Sorts items by Best Match, which is based on community buying activity and other relevance-based factors.



=cut


use constant BestMatchSort => scalar('BestMatchSort');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');


=head2 BestMatchCategoryGroup

(in) Groups BestMatch results. BestMatch results are based on community buying activity and other relevance-based factors. You can also set the number of groups to be returned and you can set the number of items to be returned in each group.



=cut


use constant BestMatchCategoryGroup => scalar('BestMatchCategoryGroup');


=head2 PricePlusShippingAsc

(in) This value is part of the Price Plus Shipping Sort feature, to be enabled
by the end of Sept. 2007 for the following sites:
US (site ID 0), Germany (77), Canada (2), and Australia (15).
The Price Plus Shipping Sort feature causes item sorting to consider shipping costs.
Specify PricePlusShippingAsc to sort items by lowest cost first, as follows:
Lowest-total-cost (for items where shipping was properly specified), 
then freight-shipping items, then items for which shipping was not specified (sorted by price).



=cut


use constant PricePlusShippingAsc => scalar('PricePlusShippingAsc');


=head2 PricePlusShippingDesc

(in) This value is part of the Price Plus Shipping Sort feature, to be enabled
by the end of Sept. 2007 for the following sites:
US (site ID 0), Germany (77), Canada (2), and Australia (15).
The Price Plus Shipping Sort feature causes item sorting to consider shipping costs.
Specify PricePlusShippingDesc to sort items by highest cost first, as follows:
highest-total-cost (for items where shipping was properly specified), 
then freight-shipping items, then items for which shipping was not specified (sorted by price).



=cut


use constant PricePlusShippingDesc => scalar('PricePlusShippingDesc');







1;   
