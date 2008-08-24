#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::RCSPaymentStatusCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. RCSPaymentStatusCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::RCSPaymentStatusCodeType

=head1 DESCRIPTION

The status of a payment.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Canceled

Payment is in canceled state.



=cut


use constant Canceled => scalar('Canceled');


=head2 Paid

Payment is in completed state.



=cut


use constant Paid => scalar('Paid');


=head2 Pending

Payment is in pending state.



=cut


use constant Pending => scalar('Pending');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
