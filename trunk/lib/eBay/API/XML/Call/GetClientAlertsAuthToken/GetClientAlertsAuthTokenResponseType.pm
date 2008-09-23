#!/usr/bin/perl

package eBay::API::XML::Call::GetClientAlertsAuthToken::GetClientAlertsAuthTokenResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetClientAlertsAuthTokenResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetClientAlertsAuthToken::GetClientAlertsAuthTokenResponseType

=head1 DESCRIPTION

Returns a Client Alerts token.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetClientAlertsAuthToken::GetClientAlertsAuthTokenResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");



my @gaProperties = ( [ 'ClientAlertsAuthToken', 'xs:string', '', '', '' ]
	, [ 'HardExpirationTime', 'xs:dateTime', '', '', '' ]
                    );
push @gaProperties, @{eBay::API::XML::ResponseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::ResponseDataType::getAttributesList()};

=head1 Subroutines:

=cut

sub new {
  my $classname = shift;
  my %args = @_;
  my $self = $classname->SUPER::new(%args);
  return $self;
}

sub isScalar {
   return 0; 
}



=head2 setClientAlertsAuthToken()

This token string is required for the Login call in the Client Alerts API.
The Client Alerts GetUserAlerts call, which returns alerts about events
associated with a specific user, requires Login.

#    Argument: 'xs:string'

=cut

sub setClientAlertsAuthToken {
  my $self = shift;
  $self->{'ClientAlertsAuthToken'} = shift
}

=head2 getClientAlertsAuthToken()

  Returned: Always
#    Returns: 'xs:string'

=cut

sub getClientAlertsAuthToken {
  my $self = shift;
  return $self->{'ClientAlertsAuthToken'};
}


=head2 setHardExpirationTime()

A Client Alerts token expires after seven days.

#    Argument: 'xs:dateTime'

=cut

sub setHardExpirationTime {
  my $self = shift;
  $self->{'HardExpirationTime'} = shift
}

=head2 getHardExpirationTime()

  Returned: Always
#    Returns: 'xs:dateTime'

=cut

sub getHardExpirationTime {
  my $self = shift;
  return $self->{'HardExpirationTime'};
}





##  Attribute and Property lists
sub getPropertiesList {
   my $self = shift;
   return \@gaProperties;
}

sub getAttributesList {
   my $self = shift;
   return \@gaAttributes;
}



1;   
