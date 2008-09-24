#!/usr/bin/perl

package eBay::API::XML::Call::FetchToken::FetchTokenResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. FetchTokenResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::FetchToken::FetchTokenResponseType

=head1 DESCRIPTION

Includes the authentication token for the user and the date it expires.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::FetchToken::FetchTokenResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");



my @gaProperties = ( [ 'HardExpirationTime', 'xs:dateTime', '', '', '' ]
	, [ 'RESTToken', 'xs:string', '', '', '' ]
	, [ 'eBayAuthToken', 'xs:string', '', '', '' ]
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



=head2 setHardExpirationTime()

Date and time at which the token returned in eBayAuthToken expires
and can no longer be used to authenticate the user for that application.

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


=head2 setRESTToken()

The REST authentication token for the user.

#    Argument: 'xs:string'

=cut

sub setRESTToken {
  my $self = shift;
  $self->{'RESTToken'} = shift
}

=head2 getRESTToken()

  Returned: Conditionally
#    Returns: 'xs:string'

=cut

sub getRESTToken {
  my $self = shift;
  return $self->{'RESTToken'};
}


=head2 setEBayAuthToken()

The authentication token for the user.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AuthNAuth
Title: Authentication & Authorization

#    Argument: 'xs:string'

=cut

sub setEBayAuthToken {
  my $self = shift;
  $self->{'eBayAuthToken'} = shift
}

=head2 getEBayAuthToken()

  Returned: Always
#    Returns: 'xs:string'

=cut

sub getEBayAuthToken {
  my $self = shift;
  return $self->{'eBayAuthToken'};
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
