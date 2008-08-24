#!/usr/bin/perl

package eBay::API::XML::Call::ValidateTestUserRegistration::ValidateTestUserRegistrationRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ValidateTestUserRegistrationRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::ValidateTestUserRegistration::ValidateTestUserRegistrationRequestType

=head1 DESCRIPTION

Requests to enable a test user to sell items in the Sandbox environment.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::ValidateTestUserRegistration::ValidateTestUserRegistrationRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");



my @gaProperties = ( [ 'FeedbackScore', 'xs:int', '', '', '' ]
	, [ 'RegistrationDate', 'xs:dateTime', '', '', '' ]
	, [ 'SubscribeSA', 'xs:boolean', '', '', '' ]
	, [ 'SubscribeSAPro', 'xs:boolean', '', '', '' ]
	, [ 'SubscribeSM', 'xs:boolean', '', '', '' ]
	, [ 'SubscribeSMPro', 'xs:boolean', '', '', '' ]
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



=head2 setFeedbackScore()

Value for the feedback score of a user. If no value is passed in the request,
or if the value is zero, the feedback score is unchanged. This element is not intended
for regularly testing feedback because the feedback value can change after the request.

  RequiredInput: No
#    Argument: 'xs:int'

=cut

sub setFeedbackScore {
  my $self = shift;
  $self->{'FeedbackScore'} = shift
}

=head2 getFeedbackScore()

#    Returns: 'xs:int'

=cut

sub getFeedbackScore {
  my $self = shift;
  return $self->{'FeedbackScore'};
}


=head2 setRegistrationDate()

Value for the date and time that a user's registration begins.

  RequiredInput: No
#    Argument: 'xs:dateTime'

=cut

sub setRegistrationDate {
  my $self = shift;
  $self->{'RegistrationDate'} = shift
}

=head2 getRegistrationDate()

#    Returns: 'xs:dateTime'

=cut

sub getRegistrationDate {
  my $self = shift;
  return $self->{'RegistrationDate'};
}


=head2 setSubscribeSA()

Indicates if a user subscribes to Seller's Assistant. You cannot
request to subscribe a user to both Seller's Assistant and
Seller's Assistant Pro. You cannot request to unsubscribe a user.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setSubscribeSA {
  my $self = shift;
  $self->{'SubscribeSA'} = shift
}

=head2 isSubscribeSA()

#    Returns: 'xs:boolean'

=cut

sub isSubscribeSA {
  my $self = shift;
  return $self->{'SubscribeSA'};
}


=head2 setSubscribeSAPro()

Indicates if a user subscribes to Seller's Assistant Pro. You cannot
request to subscribe a user to both Seller's Assistant and
Seller's Assistant Pro. You cannot request to unsubscribe a user.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setSubscribeSAPro {
  my $self = shift;
  $self->{'SubscribeSAPro'} = shift
}

=head2 isSubscribeSAPro()

#    Returns: 'xs:boolean'

=cut

sub isSubscribeSAPro {
  my $self = shift;
  return $self->{'SubscribeSAPro'};
}


=head2 setSubscribeSM()

Indicates if a user subscribes to Selling Manager. You cannot
request to subscribe a user to both Selling Manager and
Selling Manager Pro. You cannot request to unsubscribe a user.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setSubscribeSM {
  my $self = shift;
  $self->{'SubscribeSM'} = shift
}

=head2 isSubscribeSM()

#    Returns: 'xs:boolean'

=cut

sub isSubscribeSM {
  my $self = shift;
  return $self->{'SubscribeSM'};
}


=head2 setSubscribeSMPro()

Indicates if a user subscribes to Selling Manager Pro. You cannot
request to subscribe a user to both Selling Manager and
Selling Manager Pro. You cannot request to unsubscribe a user.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setSubscribeSMPro {
  my $self = shift;
  $self->{'SubscribeSMPro'} = shift
}

=head2 isSubscribeSMPro()

#    Returns: 'xs:boolean'

=cut

sub isSubscribeSMPro {
  my $self = shift;
  return $self->{'SubscribeSMPro'};
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
