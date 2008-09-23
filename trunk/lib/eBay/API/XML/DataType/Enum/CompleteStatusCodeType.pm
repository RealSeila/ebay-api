#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::CompleteStatusCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CompleteStatusCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::CompleteStatusCodeType

=head1 DESCRIPTION

Indicates whether the transaction process is complete, incomplete, or pending.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Incomplete

Transaction is incomplete.



=cut


use constant Incomplete => scalar('Incomplete');


=head2 Complete

Transaction is complete.



=cut


use constant Complete => scalar('Complete');


=head2 Pending

Transaction is pending.



=cut


use constant Pending => scalar('Pending');


=head2 CustomCode

Reserved for internal or future use



=cut


use constant CustomCode => scalar('CustomCode');







1;   
