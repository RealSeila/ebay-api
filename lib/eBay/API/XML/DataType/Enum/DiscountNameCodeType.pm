#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::DiscountNameCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. DiscountNameCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::DiscountNameCodeType

=head1 DESCRIPTION

The type of shipping discount profile.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 EachAdditionalAmount

The cost to ship each item beyond the first item (where the item with the
highest shipping cost is selected by eBay as the first item).
Let's say the buyer purchases three items, each set to ship for $8, and
the seller set EachAdditionalAmount to $6.  The cost to ship three items would
normally be $24, but since the seller specified $6, the total shipping
cost would be $8 + $6 + $6, or $20.
For flat shipping discount profile only.



=cut


use constant EachAdditionalAmount => scalar('EachAdditionalAmount');


=head2 EachAdditionalAmountOff

The amount by which to reduce the cost to ship each item beyond the
first item (where the item with the highest shipping cost is selected by eBay
as the first item).
Let's say the buyer purchases three items, each set to ship for $8, and
the seller set EachAdditionalAmountOff to $2.  The cost to ship three items would
normally be $24, but since the seller specified $2, the total shipping
cost would be $24 - (two additional items x $2), or $20.
For flat shipping discount profile only.



=cut


use constant EachAdditionalAmountOff => scalar('EachAdditionalAmountOff');


=head2 EachAdditionalPercentOff

The percentage by which to reduce the cost to ship each item beyond
the first item (where the item with the highest shipping cost is selected by
eBay as the first item).
Let's say the buyer purchases three items, each set to ship for $8, and
the seller set EachAdditionalPercentOff to 0.25.  The cost to ship three items would
normally be $24, but since the seller specified 0.25 ($2 out of 8), the total shipping
cost would be $24 - (two additional items x $2), or $20.
For flat rate shipping discount profile only.



=cut


use constant EachAdditionalPercentOff => scalar('EachAdditionalPercentOff');


=head2 IndividualItemWeight

Shipping cost is the total of what it would cost to ship each item individually.
This is simply a way to define how shipping is to be calculated--there is no
discount for the buyer with this selection.
For calculated shipping discount profile only.



=cut


use constant IndividualItemWeight => scalar('IndividualItemWeight');


=head2 CombinedItemWeight

Shipping cost is based on the total weight of all individual items.
This is simply a way to define how shipping is to be calculated--there is no
discount for the buyer with this selection.
For calculated shipping discount profile only.



=cut


use constant CombinedItemWeight => scalar('CombinedItemWeight');


=head2 WeightOff

The amount of weight to subtract for each item beyond the first item
before shipping costs are calculated. For example, there may be less packing
material when the items are combined in one box than if they were shipped
individually. Let's say the buyer purchases three items, each 10 oz. in weight, and
the seller set WeightOff to 2 oz.  The combined weight would be 30 oz., but since
the seller specified 2 oz. off, the total weight for shipping cost calculation
would be 30 oz. - (two additional items x 2 oz.), or 26 oz.
For calculated shipping discount profile only.



=cut


use constant WeightOff => scalar('WeightOff');


=head2 ShippingCostXForAmountY

Shipping cost X applies if the total cost of items purchased is Y.
For promotional discount only.



=cut


use constant ShippingCostXForAmountY => scalar('ShippingCostXForAmountY');


=head2 ShippingCostXForItemCountN

Shipping cost X applies if the total number of items purchased is N.
For promotional discount only.



=cut


use constant ShippingCostXForItemCountN => scalar('ShippingCostXForItemCountN');


=head2 MaximumShippingCostPerOrder

The shipping cost will not exceed this.
For promotional discount only.



=cut


use constant MaximumShippingCostPerOrder => scalar('MaximumShippingCostPerOrder');


=head2 CustomCode

Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
