#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::ItemSpecificSourceCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ItemSpecificSourceCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::ItemSpecificSourceCodeType

=head1 DESCRIPTION

Defines the system source for an Item Specific.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 ItemSpecific

The seller defined the Item Specific by using custom
Item Specifics fields. (For example, the seller used
the ItemSpecifics node in AddItem.)
This is the default setting if Source isn't returned.



=cut


use constant ItemSpecific => scalar('ItemSpecific');


=head2 Attribute

The seller defined the Item Specific by using eBay's
system-defined (ID-based) attributes format. (For example,
the seller used the AttributeSetArray node in AddItem.)



=cut


use constant Attribute => scalar('Attribute');


=head2 Product

The Item Specific is from a product catalog. (For example,
the seller used ExternalProductID or ProductID in AddItem.)



=cut


use constant Product => scalar('Product');


=head2 CustomCode

Reserved for future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
