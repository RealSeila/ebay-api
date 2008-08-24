#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::BestOfferStatusCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. BestOfferStatusCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::BestOfferStatusCodeType

=head1 DESCRIPTION

The status of the best offer.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Pending

The best offer is awaiting seller response or will naturally expire after 48 hours.



=cut


use constant Pending => scalar('Pending');


=head2 Accepted

The best offer was accepted by the seller.



=cut


use constant Accepted => scalar('Accepted');


=head2 Declined

The best offer was rejected by the seller.



=cut


use constant Declined => scalar('Declined');


=head2 Expired

The best offer expired after 48 hours due to no action by the seller.



=cut


use constant Expired => scalar('Expired');


=head2 Retracted

The best offer was retracted by the buyer.



=cut


use constant Retracted => scalar('Retracted');


=head2 AdminEnded

The best offer was ended by an administrator.



=cut


use constant AdminEnded => scalar('AdminEnded');


=head2 Active

Retrieve active best offers only.



=cut


use constant Active => scalar('Active');


=head2 Countered

Retrieve all counter best offers.



=cut


use constant Countered => scalar('Countered');


=head2 All

Retrieve all best offers (including declined offers, etc.).



=cut


use constant All => scalar('All');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
