#!/usr/bin/perl

package eBay::API::XML::Call::DeleteMyMessages::DeleteMyMessagesRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. DeleteMyMessagesRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::DeleteMyMessages::DeleteMyMessagesRequestType

=head1 DESCRIPTION

Removes selected alerts and messages for a given user. Alerts that
require action and have not been resolved by the user cannot be
deleted.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::DeleteMyMessages::DeleteMyMessagesRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::MyMessagesAlertIDArrayType;
use eBay::API::XML::DataType::MyMessagesMessageIDArrayType;


my @gaProperties = ( [ 'AlertIDs', 'ns:MyMessagesAlertIDArrayType', ''
	     ,'eBay::API::XML::DataType::MyMessagesAlertIDArrayType', '1' ]
	, [ 'MessageIDs', 'ns:MyMessagesMessageIDArrayType', ''
	     ,'eBay::API::XML::DataType::MyMessagesMessageIDArrayType', '1' ]
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



=head2 setAlertIDs()

Contains a list of up to 10 AlertID values.

  RequiredInput: No
#    Argument: 'ns:MyMessagesAlertIDArrayType'

=cut

sub setAlertIDs {
  my $self = shift;
  $self->{'AlertIDs'} = shift
}

=head2 getAlertIDs()

#    Returns: 'ns:MyMessagesAlertIDArrayType'

=cut

sub getAlertIDs {
  my $self = shift;
  return $self->_getDataTypeInstance( 'AlertIDs'
		,'eBay::API::XML::DataType::MyMessagesAlertIDArrayType');
}


=head2 setMessageIDs()

Contains a list of up to 10 MessageID values.

  RequiredInput: No
#    Argument: 'ns:MyMessagesMessageIDArrayType'

=cut

sub setMessageIDs {
  my $self = shift;
  $self->{'MessageIDs'} = shift
}

=head2 getMessageIDs()

#    Returns: 'ns:MyMessagesMessageIDArrayType'

=cut

sub getMessageIDs {
  my $self = shift;
  return $self->_getDataTypeInstance( 'MessageIDs'
		,'eBay::API::XML::DataType::MyMessagesMessageIDArrayType');
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
