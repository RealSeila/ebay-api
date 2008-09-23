#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::PromotionalSaleStatusCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PromotionalSaleStatusCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::PromotionalSaleStatusCodeType

=head1 DESCRIPTION

Values indicate the status of a sale. Used for the Promotional Price Display feature,
which enables sellers to apply discounts across many listings.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Active

(out) The status of the promotional sale is active status.



=cut


use constant Active => scalar('Active');


=head2 Scheduled

(out) The status of the promotional sale is scheduled status.



=cut


use constant Scheduled => scalar('Scheduled');


=head2 Processing

(out) The status of the promotional sale is pending status.



=cut


use constant Processing => scalar('Processing');


=head2 Inactive

(out) The status of the promotional sale is inactive status status.



=cut


use constant Inactive => scalar('Inactive');


=head2 Deleted

(out) The status of the promotional sale is deleted status status.



=cut


use constant Deleted => scalar('Deleted');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
