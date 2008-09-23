#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::VeROItemStatusCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. VeROItemStatusCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::VeROItemStatusCodeType

=head1 DESCRIPTION

The VeRO reporting status for an item.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Received

(out) The VeRO report request for the item has been received by eBay.



=cut


use constant Received => scalar('Received');


=head2 Submitted

(out) The VeRO report request for the item has been submitted to eBay.



=cut


use constant Submitted => scalar('Submitted');


=head2 Removed

(out) The reported item has been ended by eBay.



=cut


use constant Removed => scalar('Removed');


=head2 SubmissionFailed

(out) The VeRO report request for the item failed.



=cut


use constant SubmissionFailed => scalar('SubmissionFailed');


=head2 ClarificationRequired

(out) The VeRO report request for the item has been received by eBay, but 
additional clarification is needed before eBay can end the item.



=cut


use constant ClarificationRequired => scalar('ClarificationRequired');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
