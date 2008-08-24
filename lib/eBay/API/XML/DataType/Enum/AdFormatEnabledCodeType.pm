#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::AdFormatEnabledCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AdFormatEnabledCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::AdFormatEnabledCodeType

=head1 DESCRIPTION

Used to indicate whether the Ad Format feature is enabled for a category.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Disabled

The Ad Format feature is disabled for the category.



=cut


use constant Disabled => scalar('Disabled');


=head2 Enabled

The Ad Format feature is enabled for the category.



=cut


use constant Enabled => scalar('Enabled');


=head2 Only

The category supports the Ad Format feature only.



=cut


use constant Only => scalar('Only');


=head2 ClassifiedAdEnabled

The lead generation Classified Ad Format feature is enabled for the category.



=cut


use constant ClassifiedAdEnabled => scalar('ClassifiedAdEnabled');


=head2 ClassifiedAdOnly

The category supports the lead generation Classified Ad Format feature only.



=cut


use constant ClassifiedAdOnly => scalar('ClassifiedAdOnly');


=head2 LocalMarketBestOfferOnly

The category supports the lead generation Motors Loccal Market feature only.



=cut


use constant LocalMarketBestOfferOnly => scalar('LocalMarketBestOfferOnly');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   