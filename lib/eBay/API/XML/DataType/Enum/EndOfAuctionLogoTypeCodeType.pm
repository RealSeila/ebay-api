#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::EndOfAuctionLogoTypeCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. EndOfAuctionLogoTypeCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::EndOfAuctionLogoTypeCodeType

=head1 DESCRIPTION

EndOfAuctionLogoTypeCodeType - Type declaration to be used by other schema.
Indicatest the type of logo to be used in a customize end of auction (EOA) email.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 WinningBidderNotice

The PayPal Winning Bidder Notice logo.



=cut


use constant WinningBidderNotice => scalar('WinningBidderNotice');


=head2 Store

The seller's eBay Store logo.



=cut


use constant Store => scalar('Store');


=head2 Customized

A custom logo specified in LogoURL.



=cut


use constant Customized => scalar('Customized');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');


=head2 None

Indicates that no logo has been specified for use in
the end of auction (EOA) email.



=cut


use constant None => scalar('None');







1;   
