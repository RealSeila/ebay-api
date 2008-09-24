#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::StoreItemListSortOrderCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. StoreItemListSortOrderCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::StoreItemListSortOrderCodeType

=head1 DESCRIPTION

List of available options for how items are sorted in an eBay Store.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 EndingFirst

Lists items with those ending soon listed first.



=cut


use constant EndingFirst => scalar('EndingFirst');


=head2 NewlyListed

Lists items with those newly listed appearing in the list first.



=cut


use constant NewlyListed => scalar('NewlyListed');


=head2 LowestPriced

Lists items by price in ascending order. The item with the lowest
starting price is listed first.



=cut


use constant LowestPriced => scalar('LowestPriced');


=head2 HighestPriced

Lists items by price in descending order. The item with the highest
starting price is listed first.



=cut


use constant HighestPriced => scalar('HighestPriced');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
