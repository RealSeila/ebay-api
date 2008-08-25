#!/usr/bin/perl

package eBay::API::XML::Call::FetchToken;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. FetchToken.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::FetchToken

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::FetchToken inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::FetchToken::FetchTokenRequestType;
use eBay::API::XML::Call::FetchToken::FetchTokenResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'FetchToken';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::FetchToken::FetchTokenRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::FetchToken::FetchTokenResponseType';
}

#
# input properties
#

=head2 setIncludeRESTToken()

Specified if you want to retrieve a REST token for a user.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setIncludeRESTToken {
   my $self   = shift;
   my $sIncludeRESTToken = shift;
   $self->getRequestDataType()->setIncludeRESTToken($sIncludeRESTToken);
}

=head2 setSecretID()

A value that is associated with the token retrieval request. SecretID
is defined by the application, and is passed in redirect
URL to the eBay signin page. eBay recommends using a UUID for the secret
ID value. You must also set Username (part of the RequesterCredentials)
for the particular user of interest. SecretID and Username are not
required if SessionID is present.

  RequiredInput: No
#    Argument: 'xs:string'

=cut
       
sub setSecretID {
   my $self   = shift;
   my $sSecretID = shift;
   $self->getRequestDataType()->setSecretID($sSecretID);
}

=head2 setSessionID()

A value that is associated with the token retrieval request. The session ID
is generated by eBay by the application making GetSessionID call, and is passed in redirect
URL to the eBay signin page. The advantage of using SessionID is that it
does not require UserID as part of the FetchToken request. SessionID is not required
if SecretID is present.

  RequiredInput: No
#    Argument: 'xs:string'

=cut
       
sub setSessionID {
   my $self   = shift;
   my $sSessionID = shift;
   $self->getRequestDataType()->setSessionID($sSessionID);
}



#
# output properties
#

=head2 getHardExpirationTime()

Date and time at which the token returned in eBayAuthToken expires
and can no longer be used to authenticate the user for that application.

  Returned: Always
#    Returns: 'xs:dateTime'

=cut
       
sub getHardExpirationTime {
   my $self = shift;
   return $self->getResponseDataType()->getHardExpirationTime();
}

=head2 getRESTToken()

The REST authentication token for the user.

  Returned: Conditionally
#    Returns: 'xs:string'

=cut
       
sub getRESTToken {
   my $self = shift;
   return $self->getResponseDataType()->getRESTToken();
}

=head2 getEBayAuthToken()

The authentication token for the user.

  Returned: Always
#    Returns: 'xs:string'

=cut
       
sub getEBayAuthToken {
   my $self = shift;
   return $self->getResponseDataType()->getEBayAuthToken();
}





1;   
