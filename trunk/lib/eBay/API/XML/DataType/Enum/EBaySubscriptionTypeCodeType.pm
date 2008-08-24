#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::EBaySubscriptionTypeCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. EBaySubscriptionTypeCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::EBaySubscriptionTypeCodeType

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 SellerAssistant

=cut


use constant SellerAssistant => scalar('SellerAssistant');


=head2 SellerAssistantPro

=cut


use constant SellerAssistantPro => scalar('SellerAssistantPro');


=head2 EBayStoreBasic

=cut


use constant EBayStoreBasic => scalar('EBayStoreBasic');


=head2 EBayStoreFeatured

=cut


use constant EBayStoreFeatured => scalar('EBayStoreFeatured');


=head2 EBayStoreAnchor

=cut


use constant EBayStoreAnchor => scalar('EBayStoreAnchor');


=head2 SellingManager

=cut


use constant SellingManager => scalar('SellingManager');


=head2 SellingManagerPro

=cut


use constant SellingManagerPro => scalar('SellingManagerPro');


=head2 PictureManagerLevel1

=cut


use constant PictureManagerLevel1 => scalar('PictureManagerLevel1');


=head2 PictureManagerLevel2

=cut


use constant PictureManagerLevel2 => scalar('PictureManagerLevel2');


=head2 PictureManagerLevel3

=cut


use constant PictureManagerLevel3 => scalar('PictureManagerLevel3');


=head2 PictureManagerLevel4

=cut


use constant PictureManagerLevel4 => scalar('PictureManagerLevel4');


=head2 PictureManagerLevel5

=cut


use constant PictureManagerLevel5 => scalar('PictureManagerLevel5');


=head2 PictureManagerLevel6

=cut


use constant PictureManagerLevel6 => scalar('PictureManagerLevel6');


=head2 PictureManagerLevel7

=cut


use constant PictureManagerLevel7 => scalar('PictureManagerLevel7');


=head2 SellerReportsBasic

=cut


use constant SellerReportsBasic => scalar('SellerReportsBasic');


=head2 SellerReportsPlus

=cut


use constant SellerReportsPlus => scalar('SellerReportsPlus');


=head2 FileExchange

=cut


use constant FileExchange => scalar('FileExchange');


=head2 LocalMarketSpecialty

Allowed categories are Motorcycles, Powersports, and Other Vehicles.



=cut


use constant LocalMarketSpecialty => scalar('LocalMarketSpecialty');


=head2 LocalMarketRegular

In addition to the categories allowed by LocalMarketSpecialty, allows
Passenger Vehicles. Includes five sub-types. See LocalMarketRegularSubscriptionDefinitionType for details.



=cut


use constant LocalMarketRegular => scalar('LocalMarketRegular');


=head2 LocalMarketPremium

Allows same categories as LocalMarketRegular.



=cut


use constant LocalMarketPremium => scalar('LocalMarketPremium');


=head2 CustomCode

=cut


use constant CustomCode => scalar('CustomCode');







1;   
