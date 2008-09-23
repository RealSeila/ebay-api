#!/usr/bin/perl

package eBay::API::XML::Call::DeleteMyMessages;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. DeleteMyMessages.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::DeleteMyMessages

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::DeleteMyMessages inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::DeleteMyMessages::DeleteMyMessagesRequestType;
use eBay::API::XML::Call::DeleteMyMessages::DeleteMyMessagesResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'DeleteMyMessages';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::DeleteMyMessages::DeleteMyMessagesRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::DeleteMyMessages::DeleteMyMessagesResponseType';
}

#
# input properties
#

=head2 setAlertIDs()

Contains a list of up to 10 AlertID values.

  RequiredInput: No
#    Argument: 'ns:MyMessagesAlertIDArrayType'

=cut
       
sub setAlertIDs {
   my $self   = shift;
   my $pAlertIDs = shift;
   $self->getRequestDataType()->setAlertIDs($pAlertIDs);
}

=head2 setMessageIDs()

Contains a list of up to 10 MessageID values.

  RequiredInput: No
#    Argument: 'ns:MyMessagesMessageIDArrayType'

=cut
       
sub setMessageIDs {
   my $self   = shift;
   my $pMessageIDs = shift;
   $self->getRequestDataType()->setMessageIDs($pMessageIDs);
}



#
# output properties
#





1;   
