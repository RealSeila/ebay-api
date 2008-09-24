#!/usr/bin/perl

package eBay::API::XML::DataType::NotificationMessageType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. NotificationMessageType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::NotificationMessageType

=head1 DESCRIPTION

(out) A template for an SMS notification message.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::NotificationMessageType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");



my @gaProperties = ( [ 'EIAS', 'xs:string', '', '', '' ]
	, [ 'MessageBody', 'xs:string', '', '', '' ]
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



=head2 setEIAS()

(out) The EIAS userId.

#    Argument: 'xs:string'

=cut

sub setEIAS {
  my $self = shift;
  $self->{'EIAS'} = shift
}

=head2 getEIAS()

  Returned: Conditionally
  NoCalls: 
#    Returns: 'xs:string'

=cut

sub getEIAS {
  my $self = shift;
  return $self->{'EIAS'};
}


=head2 setMessageBody()

(out) The SMS message.

#    Argument: 'xs:string'

=cut

sub setMessageBody {
  my $self = shift;
  $self->{'MessageBody'} = shift
}

=head2 getMessageBody()

  Returned: Conditionally
  NoCalls: 
#    Returns: 'xs:string'

=cut

sub getMessageBody {
  my $self = shift;
  return $self->{'MessageBody'};
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
