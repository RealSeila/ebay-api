#!/usr/bin/perl

package eBay::API::XML::DataType::BotBlockRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. BotBlockRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::BotBlockRequestType

=head1 DESCRIPTION

Container of token and user reply.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::BotBlockRequestType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'BotBlockToken', 'xs:string', '', '', '' ]
	, [ 'BotBlockUserInput', 'xs:string', '', '', '' ]
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



=head2 setBotBlockToken()

An encrypted token that eBay generates and that applications
need to pass as input to subsquent calls. One use of this might
be to block users from the site due to multiple call requests.

  Calls: PlaceOffer
  RequiredInput: Conditionally

#    Argument: 'xs:string'

=cut

sub setBotBlockToken {
  my $self = shift;
  $self->{'BotBlockToken'} = shift
}

=head2 getBotBlockToken()

#    Returns: 'xs:string'

=cut

sub getBotBlockToken {
  my $self = shift;
  return $self->{'BotBlockToken'};
}


=head2 setBotBlockUserInput()

The user's response to being asked to type the message
in the botblock challenge image (that is, the image
corresponding to BotBlockUrl that has been returned in a previous call).

  Calls: PlaceOffer
  RequiredInput: Conditionally

#    Argument: 'xs:string'

=cut

sub setBotBlockUserInput {
  my $self = shift;
  $self->{'BotBlockUserInput'} = shift
}

=head2 getBotBlockUserInput()

#    Returns: 'xs:string'

=cut

sub getBotBlockUserInput {
  my $self = shift;
  return $self->{'BotBlockUserInput'};
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
