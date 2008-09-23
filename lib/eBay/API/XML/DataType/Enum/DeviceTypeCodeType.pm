#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::DeviceTypeCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. DeviceTypeCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::DeviceTypeCodeType

=head1 DESCRIPTION

The means of receipt of notification.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Platform

Typical API, web page interaction.



=cut


use constant Platform => scalar('Platform');


=head2 SMS

For SMS/wireless application. 
Note that SMS is currently reserved for future use.



=cut


use constant SMS => scalar('SMS');


=head2 ClientAlerts

Warning: do NOT set this value in production if you currently use Platform Notifications
with this application ID. Setting this value will discontinue all platform
notifications for this application ID, until this value is reset to Platform. <br>
<br>
Set this enum value to specify that the notification client is a Client Alerts API client.
Alerts will be delivered through the Client Alerts system.



=cut


use constant ClientAlerts => scalar('ClientAlerts');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
