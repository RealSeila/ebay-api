#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::CharityStatusCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CharityStatusCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::CharityStatusCodeType

=head1 DESCRIPTION

CharityStatusCodeType - Type declaration to be used by other schema.
Indicates the nonprofit status of the nonprofit charity organization registered with the dedicated eBay Giving Works provider.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Valid

(out)	The specified nonprofit charity organization is a valid nonprofit charity organization according to the requirements of the dedicated eBay Giving Works provider.



=cut


use constant Valid => scalar('Valid');


=head2 NoLongerValid

(out)	The specified nonprofit charity organization is no longer a valid nonprofit charity organization according to the requirements of the dedicated eBay Giving Works provider.



=cut


use constant NoLongerValid => scalar('NoLongerValid');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
