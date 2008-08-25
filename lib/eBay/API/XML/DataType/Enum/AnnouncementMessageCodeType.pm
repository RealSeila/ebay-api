#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::AnnouncementMessageCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AnnouncementMessageCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::AnnouncementMessageCodeType

=head1 DESCRIPTION

Part of the mechanism for eBay to control which announcement messages are
to be made available to the user.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 None

No message is to be made available.



=cut


use constant None => scalar('None');


=head2 Deprecation

A deprecation message is to be made available,
but only if today's date is between AnnouncementMessageType.AnnouncementStartTime
and AnnouncementMessageType.EventTime.



=cut


use constant Deprecation => scalar('Deprecation');


=head2 Mapping

A mapping message is to be made available,
but only if today's date is after AnnouncementMessageType.EventTime.



=cut


use constant Mapping => scalar('Mapping');


=head2 DeprecationAndMapping

Both "Deprecation" and "Mapping" enumerations are to apply.



=cut


use constant DeprecationAndMapping => scalar('DeprecationAndMapping');


=head2 CustomCode

Reserved for future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
