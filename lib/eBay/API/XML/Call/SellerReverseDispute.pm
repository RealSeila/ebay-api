#!/usr/bin/perl

package eBay::API::XML::Call::SellerReverseDispute;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SellerReverseDispute.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::SellerReverseDispute

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::SellerReverseDispute inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::SellerReverseDispute::SellerReverseDisputeRequestType;
use eBay::API::XML::Call::SellerReverseDispute::SellerReverseDisputeResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'SellerReverseDispute';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::SellerReverseDispute::SellerReverseDisputeRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::SellerReverseDispute::SellerReverseDisputeResponseType';
}

#
# input properties
#

=head2 setDisputeID()

The unique identifier of the dispute that was returned when the dispute was created.
The dispute must be an Unpaid Item dispute that the seller opened.

  RequiredInput: Yes
#    Argument: 'ns:DisputeIDType'

=cut
       
sub setDisputeID {
   my $self   = shift;
   my $pDisputeID = shift;
   $self->getRequestDataType()->setDisputeID($pDisputeID);
}

=head2 setDisputeResolutionReason()

The reason the dispute is being reversed.

  RequiredInput: Yes
#    Argument: 'ns:DisputeResolutionReasonCodeType'

=cut
       
sub setDisputeResolutionReason {
   my $self   = shift;
   my $sDisputeResolutionReason = shift;
   $self->getRequestDataType()->setDisputeResolutionReason($sDisputeResolutionReason);
}



#
# output properties
#





1;   
