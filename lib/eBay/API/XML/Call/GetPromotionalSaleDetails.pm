#!/usr/bin/perl

package eBay::API::XML::Call::GetPromotionalSaleDetails;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetPromotionalSaleDetails.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetPromotionalSaleDetails

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetPromotionalSaleDetails inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetPromotionalSaleDetails::GetPromotionalSaleDetailsRequestType;
use eBay::API::XML::Call::GetPromotionalSaleDetails::GetPromotionalSaleDetailsResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetPromotionalSaleDetails';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetPromotionalSaleDetails::GetPromotionalSaleDetailsRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetPromotionalSaleDetails::GetPromotionalSaleDetailsResponseType';
}

#
# input properties
#

=head2 setPromotionalSaleID()

The ID of the promotional sale about which you want information.
If you do not specify this field, then GetPromotionalSaleDetails returns
all promotional sales for the seller making the call.

  RequiredInput: No
#    Argument: 'xs:long'

=cut
       
sub setPromotionalSaleID {
   my $self   = shift;
   my $sPromotionalSaleID = shift;
   $self->getRequestDataType()->setPromotionalSaleID($sPromotionalSaleID);
}



#
# output properties
#

=head2 getPromotionalSaleDetails()

Contains information about a promotional sale or sales. If you did not 
specify a PromotionalSaleID in the request, then all promotional sales
for the seller are returned. Promotional sales enable sellers to add 
discounts and/or free shipping to items.

  Returned: Conditionally
#    Returns: 'ns:PromotionalSaleArrayType'

=cut
       
sub getPromotionalSaleDetails {
   my $self = shift;
   return $self->getResponseDataType()->getPromotionalSaleDetails();
}





1;   
