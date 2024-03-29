#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::DescriptionReviseModeCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. DescriptionReviseModeCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::DescriptionReviseModeCodeType

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Replace

(in) Specifies that you want to replace the description text of an item.



=cut


use constant Replace => scalar('Replace');


=head2 Prepend

(in) Specifies that you want to prepend text to the description text of an item.



=cut


use constant Prepend => scalar('Prepend');


=head2 Append

(in) Specifies that you want to append text to the description text of an item.



=cut


use constant Append => scalar('Append');


=head2 CustomCode

Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
