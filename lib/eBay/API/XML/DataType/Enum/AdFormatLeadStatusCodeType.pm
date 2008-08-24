#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::AdFormatLeadStatusCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AdFormatLeadStatusCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::AdFormatLeadStatusCodeType

=head1 DESCRIPTION

Contains information about the status of email correspondence for the lead.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 New

A new message from a prospective buyer that the seller has not yet responded to.



=cut


use constant New => scalar('New');


=head2 Responded

A message from a prospective buyer that the seller has responded to.



=cut


use constant Responded => scalar('Responded');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
