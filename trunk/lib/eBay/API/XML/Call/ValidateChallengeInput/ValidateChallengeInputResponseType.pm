#!/usr/bin/perl

package eBay::API::XML::Call::ValidateChallengeInput::ValidateChallengeInputResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ValidateChallengeInputResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::ValidateChallengeInput::ValidateChallengeInputResponseType

=head1 DESCRIPTION

Validate the user response to botblock challenge.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::ValidateChallengeInput::ValidateChallengeInputResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");



my @gaProperties = ( [ 'ValidToken', 'xs:boolean', '', '', '' ]
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



=head2 setValidToken()

Indicates whether the token is valid.

#    Argument: 'xs:boolean'

=cut

sub setValidToken {
  my $self = shift;
  $self->{'ValidToken'} = shift
}

=head2 isValidToken()

  Returned: Always
#    Returns: 'xs:boolean'

=cut

sub isValidToken {
  my $self = shift;
  return $self->{'ValidToken'};
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
