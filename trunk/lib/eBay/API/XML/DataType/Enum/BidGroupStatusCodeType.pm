#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::BidGroupStatusCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. BidGroupStatusCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::BidGroupStatusCodeType

=head1 DESCRIPTION

This code identifies the status of the bid group.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Open

(out) Indicates that the bid group is open.



=cut


use constant Open => scalar('Open');


=head2 Closed

(out) Indicates that the bid group is Closed.



=cut


use constant Closed => scalar('Closed');


=head2 CustomCode

Reserved for future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
