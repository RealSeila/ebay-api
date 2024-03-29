#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::NotificationDeliveryStatusCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. NotificationDeliveryStatusCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::NotificationDeliveryStatusCodeType

=head1 DESCRIPTION

Valid notification status codes



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 CustomCode

Reserved for future internal or external use



=cut


use constant CustomCode => scalar('CustomCode');


=head2 Delivered

Status indicating the notification was delivered



=cut


use constant Delivered => scalar('Delivered');


=head2 Failed

Status indicating the notification was failed



=cut


use constant Failed => scalar('Failed');


=head2 Rejected

Status indicating the notification was rejected



=cut


use constant Rejected => scalar('Rejected');


=head2 MarkedDown

Status indicating the notification was marked down



=cut


use constant MarkedDown => scalar('MarkedDown');







1;   
