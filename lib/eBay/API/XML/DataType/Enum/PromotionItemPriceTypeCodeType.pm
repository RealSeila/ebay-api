#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::PromotionItemPriceTypeCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PromotionItemPriceTypeCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::PromotionItemPriceTypeCodeType

=head1 DESCRIPTION

PromotionItemPriceTypeCodeType - Type declaration to be used by other schema.
Indicates the type of offer that can be made for a cross-promoted item. Note that
for a Chinese listing with a still-active Buy It Now option, either a Bid
(Auction) or a Buy It Now type offer may be made.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 AuctionPrice

(out) Bid offer in a competitive-bidding listing.



=cut


use constant AuctionPrice => scalar('AuctionPrice');


=head2 BuyItNowPrice

(out) Buy It Now offer in a fixed-price or Buy It Now listing.



=cut


use constant BuyItNowPrice => scalar('BuyItNowPrice');


=head2 BestOfferOnlyPrice

(out) Best Offer in Best Offer Only listing.



=cut


use constant BestOfferOnlyPrice => scalar('BestOfferOnlyPrice');


=head2 ClassifiedAdPrice

(out) Advertised price for a Classified Ad format listing.



=cut


use constant ClassifiedAdPrice => scalar('ClassifiedAdPrice');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
