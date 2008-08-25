#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::OrderStatusCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. OrderStatusCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::OrderStatusCodeType

=head1 DESCRIPTION

The set of valid states for an order.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Active

The cart is active. Items can only be added, deleted, or updated in the cart
when status is Active.



=cut


use constant Active => scalar('Active');


=head2 Inactive

The cart is invalid; it does not exist. An example is a cart that has expired.



=cut


use constant Inactive => scalar('Inactive');


=head2 Completed

The order is completed.



=cut


use constant Completed => scalar('Completed');


=head2 Cancelled

The cart was cancelled.



=cut


use constant Cancelled => scalar('Cancelled');


=head2 Shipped

The order was shipped. Half.com users
can specify this in the GetOrders input.



=cut


use constant Shipped => scalar('Shipped');


=head2 Default

Default status.



=cut


use constant Default => scalar('Default');


=head2 Authenticated

The cart was authenticated.



=cut


use constant Authenticated => scalar('Authenticated');


=head2 InProcess

After placing the order and before completion of checkout,
the card is "in process."



=cut


use constant InProcess => scalar('InProcess');


=head2 Invalid

Invalid.



=cut


use constant Invalid => scalar('Invalid');


=head2 CustomCode

Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
