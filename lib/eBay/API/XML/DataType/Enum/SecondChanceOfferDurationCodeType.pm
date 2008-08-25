#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::SecondChanceOfferDurationCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SecondChanceOfferDurationCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::SecondChanceOfferDurationCodeType

=head1 DESCRIPTION

SecondChanceOfferDurationCodeType - Type declaration to be used by other schema.
Specifies the number of days the second chance offer active. The recipient bidder
must purchase the item within that time or the listing expires. The duration for a
new second chance offer listing is limited to these values.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Days_1

(in) 1 Day.



=cut


use constant Days_1 => scalar('Days_1');


=head2 Days_3

(in) 3 Days.



=cut


use constant Days_3 => scalar('Days_3');


=head2 Days_5

(in) 5 Days.



=cut


use constant Days_5 => scalar('Days_5');


=head2 Days_7

(in) 7 Days.



=cut


use constant Days_7 => scalar('Days_7');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
