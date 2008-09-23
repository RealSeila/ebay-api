#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::PictureSourceCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PictureSourceCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::PictureSourceCodeType

=head1 DESCRIPTION

Specifies the service that is used to host a listing's pictures.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 EPS

(out) The PictureURL images are hosted by eBay Picture Services
and the seller is not a Picture Manager subscriber.



=cut


use constant EPS => scalar('EPS');


=head2 PictureManager

(out) The PictureURL images are hosted by eBay Picture Manager
and the seller is a Picture Manager subscriber.



=cut


use constant PictureManager => scalar('PictureManager');


=head2 Vendor

(out) The PictureURL images are not hosted by eBay.



=cut


use constant Vendor => scalar('Vendor');


=head2 CustomCode

(out) Reserved for internal or future use



=cut


use constant CustomCode => scalar('CustomCode');







1;   
