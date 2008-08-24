#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::AccountHistorySelectionCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AccountHistorySelectionCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::AccountHistorySelectionCodeType

=head1 DESCRIPTION

Specifies a report format to be used to describe the seller's account.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 LastInvoice

(in) Contains the entries since the last invoice eBay sent to the seller.
If you use LastInvoice, then InvoiceDate, BeginDate and EndDate are ignored.



=cut


use constant LastInvoice => scalar('LastInvoice');


=head2 SpecifiedInvoice

(in) Contains the entries for a specific invoice, identified
by the invoice month and year. If you use SpecifiedInvoice, then you
must also use InvoiceDate. If you use SpecifiedInvoice, then BeginDate and EndDate are ignored.



=cut


use constant SpecifiedInvoice => scalar('SpecifiedInvoice');


=head2 BetweenSpecifiedDates

(in) Contains entries that were posted to the seller's account between two dates.
The period covered may cross the boundaries of formal invoices.
If you use BetweenSpecifiedDates, then you also must specify BeginDate and EndDate.
If you use BetweenSpecifiedDates, then InvoiceDate is ignored.



=cut


use constant BetweenSpecifiedDates => scalar('BetweenSpecifiedDates');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
