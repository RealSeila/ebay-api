#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::EndReasonCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. EndReasonCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::EndReasonCodeType

=head1 DESCRIPTION

Specifies the seller's reason for ending an item listing early. This
is required if the seller ended the listing early and the item did
not successfully sell of if the item has bids and the seller wants to sell
to the high bidder.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 LostOrBroken

The item was lost or broken.



=cut


use constant LostOrBroken => scalar('LostOrBroken');


=head2 NotAvailable

The item is no longer available for sale.



=cut


use constant NotAvailable => scalar('NotAvailable');


=head2 Incorrect

The start price or reserve price is incorrect.



=cut


use constant Incorrect => scalar('Incorrect');


=head2 OtherListingError

The listing contained an error (other than start price or reserve
price).



=cut


use constant OtherListingError => scalar('OtherListingError');


=head2 CustomCode

Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');


=head2 SellToHighBidder

The listing has qualifying bids (i.e., there is a current high bid that, 
when applicable, meets the minimum reserve price) and there are more 
than 12 hours before the listing ends.
Sell the item to the highest eligible bidder.
<br>
In the last 12 hours of an item listing, you cannot end an item early 
if it has bids.



=cut


use constant SellToHighBidder => scalar('SellToHighBidder');







1;   
