#!/usr/bin/perl

package eBay::API::XML::Call::AddMemberMessagesAAQToBidder::AddMemberMessagesAAQToBidderResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AddMemberMessagesAAQToBidderResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::AddMemberMessagesAAQToBidder::AddMemberMessagesAAQToBidderResponseType

=head1 DESCRIPTION

Contains the response information.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::AddMemberMessagesAAQToBidder::AddMemberMessagesAAQToBidderResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::AddMemberMessagesAAQToBidderResponseContainerType;


my @gaProperties = ( [ 'AddMemberMessagesAAQToBidderResponseContainer', 'ns:AddMemberMessagesAAQToBidderResponseContainerType', '1'
	     ,'eBay::API::XML::DataType::AddMemberMessagesAAQToBidderResponseContainerType', '1' ]
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



=head2 setAddMemberMessagesAAQToBidderResponseContainer()

Contains the response information.

#    Argument: reference to an array  
                      of 'ns:AddMemberMessagesAAQToBidderResponseContainerType'

=cut

sub setAddMemberMessagesAAQToBidderResponseContainer {
  my $self = shift;
  $self->{'AddMemberMessagesAAQToBidderResponseContainer'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getAddMemberMessagesAAQToBidderResponseContainer()

  Returned: Always
#    Returns: reference to an array  
                      of 'ns:AddMemberMessagesAAQToBidderResponseContainerType'

=cut

sub getAddMemberMessagesAAQToBidderResponseContainer {
  my $self = shift;
  return $self->_getDataTypeArray('AddMemberMessagesAAQToBidderResponseContainer');
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
