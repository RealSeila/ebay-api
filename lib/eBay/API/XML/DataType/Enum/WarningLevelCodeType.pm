#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::WarningLevelCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. WarningLevelCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::WarningLevelCodeType

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Low

Do not return warnings when the application passes
unrecognized or deprecated elements in a request.
This is the default value if WarningLevel is not specified.



=cut


use constant Low => scalar('Low');


=head2 High

Return warnings when the application passes
unrecognized or deprecated elements in a request.



=cut


use constant High => scalar('High');







1;   
