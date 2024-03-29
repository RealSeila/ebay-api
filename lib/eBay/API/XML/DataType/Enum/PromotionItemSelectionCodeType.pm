#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::PromotionItemSelectionCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PromotionItemSelectionCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::PromotionItemSelectionCodeType

=head1 DESCRIPTION

PromotionItemSelectionCodeType - Type declaration to be used by
other schema. Indicates how the cross-promoted item was selected for
association with the referring item. If the seller defined an
item-to-item cross-promotion rule and the item was selected because
of that rule, then "Manual" is returned. If the seller defined some
other rule and the item was selected because of that rule (or the
seller defined no rules that could be applied), then "Automatic" is
returned.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Manual

(out) Manual selection.



=cut


use constant Manual => scalar('Manual');


=head2 Automatic

(out) Automatic selection.



=cut


use constant Automatic => scalar('Automatic');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
