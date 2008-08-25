#!/usr/bin/perl

package eBay::API::XML::Call::SetStore::SetStoreRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SetStoreRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::SetStore::SetStoreRequestType

=head1 DESCRIPTION

Sets the configuration of the eBay store owned by the caller.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::SetStore::SetStoreRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::StoreType;


my @gaProperties = ( [ 'Store', 'ns:StoreType', ''
	     ,'eBay::API::XML::DataType::StoreType', '1' ]
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



=head2 setStore()

Specifies the Store configuration that is being set for the user.

  RequiredInput: Yes
#    Argument: 'ns:StoreType'

=cut

sub setStore {
  my $self = shift;
  $self->{'Store'} = shift
}

=head2 getStore()

#    Returns: 'ns:StoreType'

=cut

sub getStore {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Store'
		,'eBay::API::XML::DataType::StoreType');
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
