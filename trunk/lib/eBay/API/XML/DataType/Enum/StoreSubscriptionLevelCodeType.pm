#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::StoreSubscriptionLevelCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. StoreSubscriptionLevelCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::StoreSubscriptionLevelCodeType

=head1 DESCRIPTION

User's eBay Store subscription level.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Close

(in) This closes your eBay Store and cancels your eBay Store subscription.
All of your current Store Inventory items (if any) will end automatically.
All of your current Online Auction and Fixed Price items will remain active
until their ending date is reached or they are sold. All your Store pictures
hosted on eBay will be deleted unless you have a Picture Manager
subscription.



=cut


use constant Close => scalar('Close');


=head2 Basic

Basic level subscription.



=cut


use constant Basic => scalar('Basic');


=head2 Featured

Featured level subscription.



=cut


use constant Featured => scalar('Featured');


=head2 Anchor

Anchor level subscription.



=cut


use constant Anchor => scalar('Anchor');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
