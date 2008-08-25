#!/usr/bin/perl

package eBay::API::XML::Call::GetClientAlertsAuthToken;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetClientAlertsAuthToken.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetClientAlertsAuthToken

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetClientAlertsAuthToken inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetClientAlertsAuthToken::GetClientAlertsAuthTokenRequestType;
use eBay::API::XML::Call::GetClientAlertsAuthToken::GetClientAlertsAuthTokenResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetClientAlertsAuthToken';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetClientAlertsAuthToken::GetClientAlertsAuthTokenRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetClientAlertsAuthToken::GetClientAlertsAuthTokenResponseType';
}

#
# input properties
#



#
# output properties
#

=head2 getClientAlertsAuthToken()

This token string is required for the Login call in the Client Alerts API.
The Client Alerts GetUserAlerts call, which returns alerts about events
associated with a specific user, requires Login.

  Returned: Always
#    Returns: 'xs:string'

=cut
       
sub getClientAlertsAuthToken {
   my $self = shift;
   return $self->getResponseDataType()->getClientAlertsAuthToken();
}

=head2 getHardExpirationTime()

A Client Alerts token expires after seven days.

  Returned: Always
#    Returns: 'xs:dateTime'

=cut
       
sub getHardExpirationTime {
   my $self = shift;
   return $self->getResponseDataType()->getHardExpirationTime();
}





1;   
