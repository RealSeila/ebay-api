#!/usr/bin/perl

package eBay::API::XML::Call::ValidateChallengeInput;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ValidateChallengeInput.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::ValidateChallengeInput

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::ValidateChallengeInput inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::ValidateChallengeInput::ValidateChallengeInputRequestType;
use eBay::API::XML::Call::ValidateChallengeInput::ValidateChallengeInputResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'ValidateChallengeInput';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::ValidateChallengeInput::ValidateChallengeInputRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::ValidateChallengeInput::ValidateChallengeInputResponseType';
}

#
# input properties
#

=head2 setChallengeToken()

Botblock token that was returned by GetChallengeToken.

  RequiredInput: Yes
#    Argument: 'xs:string'

=cut
       
sub setChallengeToken {
   my $self   = shift;
   my $sChallengeToken = shift;
   $self->getRequestDataType()->setChallengeToken($sChallengeToken);
}

=head2 setKeepTokenValid()

Whether the challenge token should remain valid for up to two minutes.

Default: false

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setKeepTokenValid {
   my $self   = shift;
   my $sKeepTokenValid = shift;
   $self->getRequestDataType()->setKeepTokenValid($sKeepTokenValid);
}

=head2 setUserInput()

User response to a botblock challenge.

  RequiredInput: Yes
#    Argument: 'xs:string'

=cut
       
sub setUserInput {
   my $self   = shift;
   my $sUserInput = shift;
   $self->getRequestDataType()->setUserInput($sUserInput);
}



#
# output properties
#

=head2 isValidToken()

Indicates whether the token is valid.

  Returned: Always
#    Returns: 'xs:boolean'

=cut
       
sub isValidToken {
   my $self = shift;
   return $self->getResponseDataType()->isValidToken();
}





1;   
