#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::RefundOptionsCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. RefundOptionsCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::RefundOptionsCodeType

=head1 DESCRIPTION

This is used to specify the refund option that the seller supports for a given item.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 MoneyBack

The seller will refund the basic listing (or transaction) cost, excluding
shipping and other costs.
Use ReturnPolicy.Description to explain how the seller will handle the refund
(such as whether the refund will occur via PayPal).



=cut


use constant MoneyBack => scalar('MoneyBack');


=head2 Exchange

The seller will exchange the returned item for another item.
Use ReturnPolicy.Description to explain how this will occur (such as
whether the seller will send an identical item it place of the
returned item).



=cut


use constant Exchange => scalar('Exchange');


=head2 MerchandiseCredit

The seller will give the buyer a credit toward the purchase of another item.
Use ReturnPolicy.Description to explain how the buyer can redeem this credit.



=cut


use constant MerchandiseCredit => scalar('MerchandiseCredit');


=head2 CustomCode

Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
