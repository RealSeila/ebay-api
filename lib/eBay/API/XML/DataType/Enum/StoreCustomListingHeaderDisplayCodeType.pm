#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::StoreCustomListingHeaderDisplayCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. StoreCustomListingHeaderDisplayCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::StoreCustomListingHeaderDisplayCodeType

=head1 DESCRIPTION

Specifies how the custom listing header will be displayed.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 None

No custom listing header is displayed.



=cut


use constant None => scalar('None');


=head2 Full

The full custom listing header is displayed.



=cut


use constant Full => scalar('Full');


=head2 FullAndLeftNavigationBar

The full custom listing header and the left navigation bar is displayed.



=cut


use constant FullAndLeftNavigationBar => scalar('FullAndLeftNavigationBar');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   