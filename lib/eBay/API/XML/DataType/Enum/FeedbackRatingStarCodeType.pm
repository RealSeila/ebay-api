#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::FeedbackRatingStarCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. FeedbackRatingStarCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::FeedbackRatingStarCodeType

=head1 DESCRIPTION

FeedbackRatingStarCodeType - Type declaration to be used by other
schema. The color of a feedback score star visually denotes the
range in which the member's summary feedback score falls. The score
is the net positive feedback minus the net negative feedback left
for the member.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 None

(out) No graphic displayed, feedback score 0-9.



=cut


use constant None => scalar('None');


=head2 Yellow

(out) Yellow Star, feedback score 10-49.



=cut


use constant Yellow => scalar('Yellow');


=head2 Blue

(out) Blue Star, feedback score 50-99.



=cut


use constant Blue => scalar('Blue');


=head2 Turquoise

(out) Turquoise Star, feedback score 100-499.



=cut


use constant Turquoise => scalar('Turquoise');


=head2 Purple

(out) Purple Star, feedback score 500-999.



=cut


use constant Purple => scalar('Purple');


=head2 Red

(out) Red Star, feedback score 1,000-4,999



=cut


use constant Red => scalar('Red');


=head2 Green

(out) Green Star, feedback score 5,000-9,999.



=cut


use constant Green => scalar('Green');


=head2 YellowShooting

(out) Yellow Shooting Star, feedback score 10,000-24,999.



=cut


use constant YellowShooting => scalar('YellowShooting');


=head2 TurquoiseShooting

(out) Turquoise Shooting Star, feedback score 25,000-49,999.



=cut


use constant TurquoiseShooting => scalar('TurquoiseShooting');


=head2 PurpleShooting

(out) Purple Shooting Star, feedback score 50,000-99,999.



=cut


use constant PurpleShooting => scalar('PurpleShooting');


=head2 RedShooting

(out) Red Shooting Star, feedback score 100,000 and above.



=cut


use constant RedShooting => scalar('RedShooting');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
