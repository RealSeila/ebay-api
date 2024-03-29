#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::ItemSortFilterCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ItemSortFilterCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::ItemSortFilterCodeType

=head1 DESCRIPTION

Specifies how items should be sorted.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 EndingLast

Sort items by ending time, with items ending last first.



=cut


use constant EndingLast => scalar('EndingLast');


=head2 EndingSoonest

Sort items by ending time, with items ending soonest first.



=cut


use constant EndingSoonest => scalar('EndingSoonest');


=head2 HighestPrice

Sort items by price, with the highest price first.



=cut


use constant HighestPrice => scalar('HighestPrice');


=head2 LowestPrice

Sort items by price, with the lowest price first.



=cut


use constant LowestPrice => scalar('LowestPrice');


=head2 NewlyListed

Sort items by listing time, with newly listed items first.



=cut


use constant NewlyListed => scalar('NewlyListed');


=head2 RandomlySelected

Sort items in a randomly selected order.



=cut


use constant RandomlySelected => scalar('RandomlySelected');


=head2 CustomCode

Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
