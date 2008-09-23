#!/usr/bin/perl

package eBay::API::XML::Call::ConfirmIdentity::ConfirmIdentityRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ConfirmIdentityRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::ConfirmIdentity::ConfirmIdentityRequestType

=head1 DESCRIPTION

Identifies a user without requiring UserID or password or user token.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::ConfirmIdentity::ConfirmIdentityRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");



my @gaProperties = ( [ 'SessionID', 'xs:string', '', '', '' ]
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



=head2 setSessionID()

A string obtained by making GetSessionID call, passed in redirect
URL to the eBay signin page.

  RequiredInput: Yes
#    Argument: 'xs:string'

=cut

sub setSessionID {
  my $self = shift;
  $self->{'SessionID'} = shift
}

=head2 getSessionID()

#    Returns: 'xs:string'

=cut

sub getSessionID {
  my $self = shift;
  return $self->{'SessionID'};
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