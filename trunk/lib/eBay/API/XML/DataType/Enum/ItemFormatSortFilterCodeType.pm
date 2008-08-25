#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::ItemFormatSortFilterCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ItemFormatSortFilterCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::ItemFormatSortFilterCodeType

=head1 DESCRIPTION

Specifies that you want to display items based
on selling format, such as Buy It Now or Store items.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 ShowAnyItems

Show any items, in no particular order.



=cut


use constant ShowAnyItems => scalar('ShowAnyItems');


=head2 ShowItemsWithBINFirst

Show items with a Buy It Now price first.



=cut


use constant ShowItemsWithBINFirst => scalar('ShowItemsWithBINFirst');


=head2 ShowOnlyItemsWithBIN

Show only items with a Buy It Now price.



=cut


use constant ShowOnlyItemsWithBIN => scalar('ShowOnlyItemsWithBIN');


=head2 ShowOnlyStoreItems

Show only store inventory items.



=cut


use constant ShowOnlyStoreItems => scalar('ShowOnlyStoreItems');


=head2 CustomCode

Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   