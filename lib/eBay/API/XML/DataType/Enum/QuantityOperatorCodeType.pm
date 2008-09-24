#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::QuantityOperatorCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. QuantityOperatorCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::QuantityOperatorCodeType

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 LessThan

Used by QuantityOperator to specify that you are seeking quantities less than Quantity.



=cut


use constant LessThan => scalar('LessThan');


=head2 LessThanOrEqual

Used by QuantityOperator to specify that you are seeking quantities less than or equal to Quantity.



=cut


use constant LessThanOrEqual => scalar('LessThanOrEqual');


=head2 Equal

Used by QuantityOperator to specify that you are seeking quantities equal to Quantity.



=cut


use constant Equal => scalar('Equal');


=head2 GreaterThan

Used by QuantityOperator to specify that you are seeking quantities greater than Quantity.



=cut


use constant GreaterThan => scalar('GreaterThan');


=head2 GreaterThanOrEqual

Used by QuantityOperator to specify that you are seeking quantities greater than or equal to Quantity.



=cut


use constant GreaterThanOrEqual => scalar('GreaterThanOrEqual');


=head2 CustomCode

Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
