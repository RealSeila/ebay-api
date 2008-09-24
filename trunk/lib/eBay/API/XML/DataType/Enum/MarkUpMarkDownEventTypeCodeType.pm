#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::MarkUpMarkDownEventTypeCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. MarkUpMarkDownEventTypeCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::MarkUpMarkDownEventTypeCodeType

=head1 DESCRIPTION

Valid application status codes, either MarkUp (application was marked up,
communication is restored) or MarkDown (application was marked down, no
communication).



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 MarkUp

(out) Status indicating the application was or is marked up.



=cut


use constant MarkUp => scalar('MarkUp');


=head2 MarkDown

(out) Status indicating the application was marked down.



=cut


use constant MarkDown => scalar('MarkDown');


=head2 CustomCode

(out) Reserved for future internal or external use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
