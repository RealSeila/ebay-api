#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::ListingStatusCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ListingStatusCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::ListingStatusCodeType

=head1 DESCRIPTION

Specifies an active or ended listing's status in eBay's processing
workflow. If a listing ends with a sale (or sales), eBay needs to
update the sale details (e.g., total price and buyer/high bidder)
and the final value fee. This processing can take several minutes.
If you retrieve a sold item and no details about the buyer/high
bidder are returned or no final value fee is available, use this
listing status information to determine whether eBay has finished
processing the listing.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Active

(out) The listing is still active or the listing has ended with
a sale but eBay has not completed processing the sale details
(e.g., total price and high bidder). A multi-item listing is
considered active until all items have winning bids or
purchases or the listing ends with at least one winning bid or
purchase. If the listing has ended with a sale but this Active
status is returned, please allow several minutes for eBay to
finish processing the listing.



=cut


use constant Active => scalar('Active');


=head2 Ended

(out) The listing has ended. If the listing ended with a sale,
eBay has completed processing of the sale. All sale information
returned from eBay (e.g., total price and high bidder) should be
considered accurate and complete. However, the final value fee is
not yet available.



=cut


use constant Ended => scalar('Ended');


=head2 Completed

(out) The listing has closed and eBay has completed processing
the sale. All sale information returned from eBay (e.g., total
price and high bidder) should be considered accurate and
complete.
Although the Final Value Fee for FixedPriceItem, StoresFixedPrice,
and Buy It Now Dutch listing types is returned by
GetSellerTransactions and GetItemTransactions on a transaction by
transaction basis, all other listing types, including Chinese and
Dutch (no Buy It Now purchases), require the listing status to be
Completed before the Final Value Fee is returned.



=cut


use constant Completed => scalar('Completed');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');


=head2 Custom

(out) Reserved for internal or future use.



=cut


use constant Custom => scalar('Custom');







1;   
