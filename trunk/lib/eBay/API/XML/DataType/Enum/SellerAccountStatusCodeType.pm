#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::SellerAccountStatusCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SellerAccountStatusCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::SellerAccountStatusCodeType

=head1 DESCRIPTION

Seller account status.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Current

Your account is current.



=cut


use constant Current => scalar('Current');


=head2 PastDue

Your account is past due.



=cut


use constant PastDue => scalar('PastDue');


=head2 OnHold

Your account is on hold and risking suspension.



=cut


use constant OnHold => scalar('OnHold');


=head2 CustomCode

Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
