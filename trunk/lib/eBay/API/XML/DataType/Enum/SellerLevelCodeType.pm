#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::SellerLevelCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SellerLevelCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::SellerLevelCodeType

=head1 DESCRIPTION

Indicates the user's eBay PowerSeller tier.
PowerSellers are distinguished in 5 tiers based on average monthly sales. 
Benefits and services vary for each tier. eBay calculates eligibility for each tier monthly.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Bronze

Bronze (lowest tier)



=cut


use constant Bronze => scalar('Bronze');


=head2 Silver

Silver (between Bronze and Gold)



=cut


use constant Silver => scalar('Silver');


=head2 Gold

Gold (between Silver and Platinum)



=cut


use constant Gold => scalar('Gold');


=head2 Platinum

Platinum (between Gold and Titanium)



=cut


use constant Platinum => scalar('Platinum');


=head2 Titanium

Titanium (highest tier)



=cut


use constant Titanium => scalar('Titanium');


=head2 None

Not a PowerSeller (eBay has not yet evaluated your PowerSeller status, or
you have not chosen to be a member of the PowerSeller program,
or you lost your PowerSeller status due to a policy violation.)



=cut


use constant None => scalar('None');


=head2 CustomCode

Reserved for internal or future use



=cut


use constant CustomCode => scalar('CustomCode');







1;   
