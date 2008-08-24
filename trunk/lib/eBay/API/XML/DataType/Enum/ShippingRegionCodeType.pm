#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::ShippingRegionCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ShippingRegionCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::ShippingRegionCodeType

=head1 DESCRIPTION

Regions to which the seller is willing to ship the item.
These values are applicable to ShipToLocation.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Africa

Africa



=cut


use constant Africa => scalar('Africa');


=head2 Asia

Asia



=cut


use constant Asia => scalar('Asia');


=head2 Caribbean

Caribbean



=cut


use constant Caribbean => scalar('Caribbean');


=head2 Europe

Europe



=cut


use constant Europe => scalar('Europe');


=head2 LatinAmerica

Latin America



=cut


use constant LatinAmerica => scalar('LatinAmerica');


=head2 MiddleEast

Middle East



=cut


use constant MiddleEast => scalar('MiddleEast');


=head2 NorthAmerica

NorthA merica



=cut


use constant NorthAmerica => scalar('NorthAmerica');


=head2 Oceania

Oceania (Pacific region other than Asia)



=cut


use constant Oceania => scalar('Oceania');


=head2 SouthAmerica

South America



=cut


use constant SouthAmerica => scalar('SouthAmerica');


=head2 EuropeanUnion

European Union



=cut


use constant EuropeanUnion => scalar('EuropeanUnion');


=head2 WillNotShip

Seller will not ship the item.



=cut


use constant WillNotShip => scalar('WillNotShip');


=head2 Worldwide

Seller has specified Worldwide or eBay has
determined that the specified regions add up to Worldwide.



=cut


use constant Worldwide => scalar('Worldwide');


=head2 Americas

(in/out)



=cut


use constant Americas => scalar('Americas');


=head2 None

(in/out)



=cut


use constant None => scalar('None');


=head2 CustomCode

(out) Reserved for internal or future use



=cut


use constant CustomCode => scalar('CustomCode');







1;   
