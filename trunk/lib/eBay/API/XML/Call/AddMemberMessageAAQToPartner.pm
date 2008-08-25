#!/usr/bin/perl

package eBay::API::XML::Call::AddMemberMessageAAQToPartner;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AddMemberMessageAAQToPartner.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::AddMemberMessageAAQToPartner

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::AddMemberMessageAAQToPartner inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::AddMemberMessageAAQToPartner::AddMemberMessageAAQToPartnerRequestType;
use eBay::API::XML::Call::AddMemberMessageAAQToPartner::AddMemberMessageAAQToPartnerResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'AddMemberMessageAAQToPartner';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::AddMemberMessageAAQToPartner::AddMemberMessageAAQToPartnerRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::AddMemberMessageAAQToPartner::AddMemberMessageAAQToPartnerResponseType';
}

#
# input properties
#

=head2 setItemID()

The unique ID of the item about which the question was asked.

  RequiredInput: Yes
#    Argument: 'ns:ItemIDType'

=cut
       
sub setItemID {
   my $self   = shift;
   my $pItemID = shift;
   $self->getRequestDataType()->setItemID($pItemID);
}

=head2 setMemberMessage()

The message itself.

  RequiredInput: Yes
#    Argument: 'ns:MemberMessageType'

=cut
       
sub setMemberMessage {
   my $self   = shift;
   my $pMemberMessage = shift;
   $self->getRequestDataType()->setMemberMessage($pMemberMessage);
}



#
# output properties
#





1;   
