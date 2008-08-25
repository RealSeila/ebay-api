#!/usr/bin/perl

package eBay::API::XML::Call::ConfirmIdentity::ConfirmIdentityResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ConfirmIdentityResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::ConfirmIdentity::ConfirmIdentityResponseType

=head1 DESCRIPTION

Confirms the identity of the user by returning the UserID and the EIASToken belonging to
the user.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::ConfirmIdentity::ConfirmIdentityResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");



my @gaProperties = ( [ 'UserID', 'xs:string', '', '', '' ]
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



=head2 setUserID()

Unique eBay user ID for the user.

#    Argument: 'xs:string'

=cut

sub setUserID {
  my $self = shift;
  $self->{'UserID'} = shift
}

=head2 getUserID()

#    Returns: 'xs:string'

=cut

sub getUserID {
  my $self = shift;
  return $self->{'UserID'};
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
