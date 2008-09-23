#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::VeROReportPacketStatusCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. VeROReportPacketStatusCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::VeROReportPacketStatusCodeType

=head1 DESCRIPTION

The status of a set of items (packet) reported for infringement. Packet states 
are based on the states of the reported items within the packet.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Received

(out) The packet has been received by eBay.



=cut


use constant Received => scalar('Received');


=head2 InProcess

(out) The packet is being processed by eBay.



=cut


use constant InProcess => scalar('InProcess');


=head2 Processed

(out) The packet has been processed by eBay. Each item within the packet has a status of Removed, SubmissionFailed, or ClarificationRequired.



=cut


use constant Processed => scalar('Processed');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   