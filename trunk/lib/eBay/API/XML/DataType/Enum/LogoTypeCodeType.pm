#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::LogoTypeCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. LogoTypeCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::LogoTypeCodeType

=head1 DESCRIPTION

The type of logo.



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


=head2 Custom

A custom logo specified in LogoURL.



=cut


use constant Custom => scalar('Custom');


=head2 CustomCode

Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   