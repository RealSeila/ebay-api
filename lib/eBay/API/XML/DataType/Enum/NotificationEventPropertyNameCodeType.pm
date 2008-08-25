#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::NotificationEventPropertyNameCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. NotificationEventPropertyNameCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::NotificationEventPropertyNameCodeType

=head1 DESCRIPTION

Defines all property names that can be used.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 TimeLeft

Property name for WatchItemEndingSoon event, part of
enabling a user to specify a time in minutes before the end
of the listing.



=cut


use constant TimeLeft => scalar('TimeLeft');


=head2 CustomCode

Reserved for future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
