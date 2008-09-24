#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::CharacteristicsSearchCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CharacteristicsSearchCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::CharacteristicsSearchCodeType

=head1 DESCRIPTION

Indicates whether one attribute or multiple attributes can be used
as the search criteria when calling GetProductSearchResults.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Single

(out) The search criteria can consist of one attribute.



=cut


use constant Single => scalar('Single');


=head2 Multi

(out) Not used. (For multi-attribute search criteria,
call GetProductFinder instead.)



=cut


use constant Multi => scalar('Multi');


=head2 CustomCode

(out) Reserved for internal or future use



=cut


use constant CustomCode => scalar('CustomCode');







1;   
