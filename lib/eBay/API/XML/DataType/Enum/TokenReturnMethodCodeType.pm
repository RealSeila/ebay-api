#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::TokenReturnMethodCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. TokenReturnMethodCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::TokenReturnMethodCodeType

=head1 DESCRIPTION

Indicates how the application wants eBay to handle the user's token after
the user signs in.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Redirect

Return the token in the HTTP redirect to the application-specified
accept URL.



=cut


use constant Redirect => scalar('Redirect');


=head2 FetchToken

Leave the token at eBay so that the application can get
the token through the FetchToken API call (SecretId required).



=cut


use constant FetchToken => scalar('FetchToken');


=head2 CustomCode

Reserved for future use



=cut


use constant CustomCode => scalar('CustomCode');







1;   
