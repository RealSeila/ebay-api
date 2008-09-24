#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::PromotionSchemeCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PromotionSchemeCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::PromotionSchemeCodeType

=head1 DESCRIPTION

Identifies the scheme used for a cross-promotion rule.
The scheme defines referring and promoted items and categories.
To define a rule scheme, you must be the owner of an eBay Store.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 ItemToItem

The seller specifies individual items in the store that are
promoted when a buyer views, bids on, or purchases a store item.



=cut


use constant ItemToItem => scalar('ItemToItem');


=head2 ItemToStoreCat

The seller specifies a store category from which items are promoted
when a buyer views, bids on, or purchases an individual item in the store.



=cut


use constant ItemToStoreCat => scalar('ItemToStoreCat');


=head2 StoreToStoreCat

The seller specifies referring and promoted categories, both from
the store. When a buyer views or acts on any item from that category, items
from the promoted category are also displayed.



=cut


use constant StoreToStoreCat => scalar('StoreToStoreCat');


=head2 ItemToDefaultRule

The seller specifies a referring item and defines promoted items
selected from a store category, eBay category, or keywords.



=cut


use constant ItemToDefaultRule => scalar('ItemToDefaultRule');


=head2 DefaultRule

The seller specifies a store category or eBay category, with
optional keywords, for referring items and one for promoted items. When a
referring item is selected from the category and keywords, items from the
promoted category and keywords are also displayed.



=cut


use constant DefaultRule => scalar('DefaultRule');


=head2 CategoryProximity

This scheme is returned as a backfill scheme used to promote items.



=cut


use constant CategoryProximity => scalar('CategoryProximity');


=head2 RelatedCategoryRule

This scheme is returned as related category scheme used to promote
items.



=cut


use constant RelatedCategoryRule => scalar('RelatedCategoryRule');


=head2 DefaultUpSellLogic

This scheme is returned as a backfill scheme used to promote items.



=cut


use constant DefaultUpSellLogic => scalar('DefaultUpSellLogic');


=head2 DefaultCrossSellLogic

This scheme is returned as a backfill scheme used to promote items.



=cut


use constant DefaultCrossSellLogic => scalar('DefaultCrossSellLogic');


=head2 CustomCode

Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
