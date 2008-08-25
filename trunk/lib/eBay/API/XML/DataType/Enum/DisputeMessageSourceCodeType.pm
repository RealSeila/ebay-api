#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::DisputeMessageSourceCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. DisputeMessageSourceCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::DisputeMessageSourceCodeType

=head1 DESCRIPTION

Defines who added a message to a dispute. Used for both Unpaid Item
and Item Not Received disputes.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Buyer

(out) The buyer of the item under dispute.



=cut


use constant Buyer => scalar('Buyer');


=head2 Seller

(out) The seller of the item under dispute.



=cut


use constant Seller => scalar('Seller');


=head2 eBay

(out) eBay, either an administrator or the site itself.



=cut


use constant eBay => scalar('eBay');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
