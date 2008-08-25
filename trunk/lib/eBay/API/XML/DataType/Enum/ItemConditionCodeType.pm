#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::ItemConditionCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ItemConditionCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::ItemConditionCodeType

=head1 DESCRIPTION

Specifies a predefined subset of item conditions. The predefined set of fields
can vary for different calls.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 New

The seller specified the Item Condition as New, or
did not specify a condition.
(Excludes items that the seller listed as Used.)



=cut


use constant New => scalar('New');


=head2 Used

The seller specified the Item Condition as Used, or
did not specify a condition.
(Excludes items that the seller listed as New.)



=cut


use constant Used => scalar('Used');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
