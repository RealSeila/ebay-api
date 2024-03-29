#!/usr/bin/perl

package eBay::API::XML::Call::AddOrder;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AddOrder.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::AddOrder

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::AddOrder inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::AddOrder::AddOrderRequestType;
use eBay::API::XML::Call::AddOrder::AddOrderResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'AddOrder';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::AddOrder::AddOrderRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::AddOrder::AddOrderResponseType';
}

#
# input properties
#

=head2 setOrder()

The order that is being created.

  RequiredInput: Yes
#    Argument: 'ns:OrderType'

=cut
       
sub setOrder {
   my $self   = shift;
   my $pOrder = shift;
   $self->getRequestDataType()->setOrder($pOrder);
}



#
# output properties
#

=head2 getCreatedTime()

The date and time the order was created.

  Returned: Always
#    Returns: 'xs:dateTime'

=cut
       
sub getCreatedTime {
   my $self = shift;
   return $self->getResponseDataType()->getCreatedTime();
}

=head2 getOrderID()

The unique identifier for the order.

  Returned: Always
#    Returns: 'ns:OrderIDType'

=cut
       
sub getOrderID {
   my $self = shift;
   return $self->getResponseDataType()->getOrderID();
}





1;   
