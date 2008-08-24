#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::SummaryWindowPeriodCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SummaryWindowPeriodCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::SummaryWindowPeriodCodeType

=head1 DESCRIPTION

The period of time for which to create a summary.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Last24Hours

The last 24 hours.



=cut


use constant Last24Hours => scalar('Last24Hours');


=head2 Last7Days

The last 7 days.



=cut


use constant Last7Days => scalar('Last7Days');


=head2 Last31Days

The last 31 days.



=cut


use constant Last31Days => scalar('Last31Days');


=head2 CurrentWeek

The current week.



=cut


use constant CurrentWeek => scalar('CurrentWeek');


=head2 LastWeek

The prior week.



=cut


use constant LastWeek => scalar('LastWeek');


=head2 CurrentMonth

The current month.



=cut


use constant CurrentMonth => scalar('CurrentMonth');


=head2 LastMonth

The prior month.



=cut


use constant LastMonth => scalar('LastMonth');


=head2 Last60Days

The last 60 days.



=cut


use constant Last60Days => scalar('Last60Days');


=head2 CustomCode

=cut


use constant CustomCode => scalar('CustomCode');







1;   
