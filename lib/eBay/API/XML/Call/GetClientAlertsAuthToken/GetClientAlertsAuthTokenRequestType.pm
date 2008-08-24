#!/usr/bin/perl

package eBay::API::XML::Call::GetClientAlertsAuthToken::GetClientAlertsAuthTokenRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetClientAlertsAuthTokenRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetClientAlertsAuthToken::GetClientAlertsAuthTokenRequestType

=head1 DESCRIPTION

Retrieves a token required for the GetUserAlerts call in the Client Alerts API.
Required input is a valid user token, which is the same user token used for
authentication and authorization in the Trading API. Client Alerts token also
required for Client Alerts API calls Login and Logout.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetClientAlertsAuthToken::GetClientAlertsAuthTokenRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");



my @gaProperties = ( 
                    );
push @gaProperties, @{eBay::API::XML::RequestDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::RequestDataType::getAttributesList()};

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