#!/usr/bin/perl

package eBay::API::XML::Call::RevokeToken::RevokeTokenRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. RevokeTokenRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::RevokeToken::RevokeTokenRequestType

=head1 DESCRIPTION

Revokes a user token. The full set of developer keys is required for the RevokeToken
call.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::RevokeToken::RevokeTokenRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");



my @gaProperties = ( [ 'UnsubscribeNotification', 'xs:boolean', '', '', '' ]
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



=head2 setUnsubscribeNotification()

Cancels notification subscriptions for the user/application if set to true. Default value is false.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setUnsubscribeNotification {
  my $self = shift;
  $self->{'UnsubscribeNotification'} = shift
}

=head2 isUnsubscribeNotification()

#    Returns: 'xs:boolean'

=cut

sub isUnsubscribeNotification {
  my $self = shift;
  return $self->{'UnsubscribeNotification'};
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
