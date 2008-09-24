#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::PictureUploadPolicyCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PictureUploadPolicyCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::PictureUploadPolicyCodeType

=head1 DESCRIPTION

Values to be used in choosing that an uploaded picture is added to the available pictures on the eBay site.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Add

Specifies that an uploaded picture is added to the pictures available to a
seller on the eBay site.



=cut


use constant Add => scalar('Add');


=head2 ClearAndAdd

Specifies, first, that all pictures available to a seller on the eBay site are
removed, and then second, that the currently uploaded picture is made
available to the seller.



=cut


use constant ClearAndAdd => scalar('ClearAndAdd');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
