#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::FeedbackRatingDetailCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. FeedbackRatingDetailCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::FeedbackRatingDetailCodeType

=head1 DESCRIPTION

Applicable to sites that support the Detailed Seller Ratings feature.
The FeedbackRatingDetailCodeType is the list of areas for detailed seller ratings. When buyers leave an overall Feedback rating (positive, neutral, or negative) for a seller, they also can leave ratings in four areas: item as described, communication, shipping time, and charges for shipping and handling. Users retrieve detailed ratings as averages of the ratings left by buyers.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 ItemAsDescribed

Detailed seller rating in the area of "item as described."



=cut


use constant ItemAsDescribed => scalar('ItemAsDescribed');


=head2 Communication

Detailed seller rating in the area of "communication."



=cut


use constant Communication => scalar('Communication');


=head2 ShippingTime

Detailed seller rating in the area of "shipping time." Inapplicable to 
motor vehicle items.



=cut


use constant ShippingTime => scalar('ShippingTime');


=head2 ShippingAndHandlingCharges

Detailed seller rating in the area of "charges for shipping and handling."
Inapplicable to motor vehicle items.



=cut


use constant ShippingAndHandlingCharges => scalar('ShippingAndHandlingCharges');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
