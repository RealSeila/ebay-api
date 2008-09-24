#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::PayPalAccountTypeCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PayPalAccountTypeCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::PayPalAccountTypeCodeType

=head1 DESCRIPTION

PayPal account type.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Personal

Personal account.



=cut


use constant Personal => scalar('Personal');


=head2 Premier

Premier account.



=cut


use constant Premier => scalar('Premier');


=head2 Business

Business account.



=cut


use constant Business => scalar('Business');


=head2 Unknown

=cut


use constant Unknown => scalar('Unknown');


=head2 Invalid

=cut


use constant Invalid => scalar('Invalid');


=head2 CustomCode

Reserved for internal or future use



=cut


use constant CustomCode => scalar('CustomCode');







1;   
