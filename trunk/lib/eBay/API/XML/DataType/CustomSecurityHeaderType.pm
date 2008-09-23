#!/usr/bin/perl

package eBay::API::XML::DataType::CustomSecurityHeaderType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CustomSecurityHeaderType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::CustomSecurityHeaderType

=head1 DESCRIPTION

Security header used for SOAP API calls.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::CustomSecurityHeaderType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::UserIdPasswordType;


my @gaProperties = ( [ 'Credentials', 'ns:UserIdPasswordType', ''
	     ,'eBay::API::XML::DataType::UserIdPasswordType', '1' ]
	, [ 'HardExpirationWarning', 'xs:string', '', '', '' ]
	, [ 'NotificationSignature', 'xs:string', '', '', '' ]
	, [ 'eBayAuthToken', 'xs:string', '', '', '' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::BaseDataType::getAttributesList()};

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



=head2 setCredentials()

Authentication information for the user on whose behalf the
application is making the request, and authorization information for
the application making the request. Only registered eBay users are
allowed to make API calls. To verify that a user is registered, your
application normally needs to pass a user-specific value called an
"authentication token" in the request. This is equivalent to signing
in on the eBay Web site. As API calls do not pass session
information, you need to pass the user's authentication token every
time you invoke a call on their behalf. All calls require an
authentication token, except the calls you use to retrieve a token
in the first place. For such calls, you use the eBay member's
username and password instead.

  Calls: FetchToken
  RequiredInput: Yes

#    Argument: 'ns:UserIdPasswordType'

=cut

sub setCredentials {
  my $self = shift;
  $self->{'Credentials'} = shift
}

=head2 getCredentials()

#    Returns: 'ns:UserIdPasswordType'

=cut

sub getCredentials {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Credentials'
		,'eBay::API::XML::DataType::UserIdPasswordType');
}


=head2 setHardExpirationWarning()

Expiration date of the user's authentication token. Only returned
within the 7-day period prior to a token's expiration. To ensure
that user authentication tokens are secure and to help avoid a
user's token being compromised, tokens have a limited life span. A
token is only valid for a period of time (set by eBay). After this
amount of time has passed, the token expires and must be replaced
with a new token.

#    Argument: 'xs:string'

=cut

sub setHardExpirationWarning {
  my $self = shift;
  $self->{'HardExpirationWarning'} = shift
}

=head2 getHardExpirationWarning()

  Calls:   Returned: Conditionally
  AllCallsExcept: FetchToken

#    Returns: 'xs:string'

=cut

sub getHardExpirationWarning {
  my $self = shift;
  return $self->{'HardExpirationWarning'};
}


=head2 setNotificationSignature()

A Base64-encoded MD5 hash that allows the recepient of a Platform
Notification to verify this is a valid Platform Notification sent by
eBay.

#    Argument: 'xs:string'

=cut

sub setNotificationSignature {
  my $self = shift;
  $self->{'NotificationSignature'} = shift
}

=head2 getNotificationSignature()

#    Returns: 'xs:string'

=cut

sub getNotificationSignature {
  my $self = shift;
  return $self->{'NotificationSignature'};
}


=head2 setEBayAuthToken()

Authentication token representing the user who is making the
request. The user's token must be retrieved from eBay. To determine
a user's authentication token, see the Authentication and
Authorization information in the eBay Web Services guide. For calls
that list or retrieve item or transaction data, the user usually
needs to be the seller of the item in question or, in some cases,
the buyer. Similarly, calls that retrieve user or account data may
be restricted to the user whose data is being requested. The
documentation for each call includes information about such
restrictions.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AuthNAuth
Title: Authentication & Authorization
MaxLength: 2000

  Calls:   RequiredInput: Yes
  AllCallsExcept: FetchToken

#    Argument: 'xs:string'

=cut

sub setEBayAuthToken {
  my $self = shift;
  $self->{'eBayAuthToken'} = shift
}

=head2 getEBayAuthToken()

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
