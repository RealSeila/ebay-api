#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::StoreItemListLayoutCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. StoreItemListLayoutCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::StoreItemListLayoutCodeType

=head1 DESCRIPTION

Set of available layouts for items listed in an eBay Store.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 ListView

Displays item list as a single column, with smaller item pictures.



=cut


use constant ListView => scalar('ListView');


=head2 GalleryView

Displays item list in two columns, with larger item pictures.



=cut


use constant GalleryView => scalar('GalleryView');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
