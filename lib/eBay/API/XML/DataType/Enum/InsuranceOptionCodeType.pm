#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::InsuranceOptionCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. InsuranceOptionCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::InsuranceOptionCodeType

=head1 DESCRIPTION

The seller's requirements regarding whether the buyer pays
for shipping insurance.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Optional

The seller offers the buyer the choice of paying
for shipping insurance or not.



=cut


use constant Optional => scalar('Optional');


=head2 Required

The seller requires that the buyer pay for
shipping insurance.



=cut


use constant Required => scalar('Required');


=head2 NotOffered

The seller does not offer shipping insurance to the buyer.



=cut


use constant NotOffered => scalar('NotOffered');


=head2 IncludedInShippingHandling

The seller is not charging separately for shipping
insurance costs; any insurance is already included in the
base shipping cost.



=cut


use constant IncludedInShippingHandling => scalar('IncludedInShippingHandling');


=head2 NotOfferedOnSite

Shipping insurance is not offered as a separate option on the site
where the item is listed. (Some shipping services, such as
DE_InsuredExpressOrCourier, include insurance as part of the service.) If
another insurance option is specified in the listing request and the site does
not support shipping insurance as a separate option, eBay will reset the
insurance option to this value. At the time of this writing, this option is
only meaningful for the eBay Germany, Austria, and Switzerland sites.



=cut


use constant NotOfferedOnSite => scalar('NotOfferedOnSite');


=head2 CustomCode

Reserved for internal or future use



=cut


use constant CustomCode => scalar('CustomCode');







1;   
