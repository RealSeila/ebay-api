#!/usr/bin/perl

package eBay::API::XML::DataType::StoreLogoArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. StoreLogoArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::StoreLogoArrayType

=head1 DESCRIPTION

Set of Store logos.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::StoreLogoArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::StoreLogoType;


my @gaProperties = ( [ 'Logo', 'ns:StoreLogoType', '1'
	     ,'eBay::API::XML::DataType::StoreLogoType', '1' ]
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



=head2 setLogo()

A Store logo.

#    Argument: reference to an array  
                      of 'ns:StoreLogoType'

=cut

sub setLogo {
  my $self = shift;
  $self->{'Logo'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getLogo()

  Calls: GetStoreOptions
  Returned: Always

#    Returns: reference to an array  
                      of 'ns:StoreLogoType'

=cut

sub getLogo {
  my $self = shift;
  return $self->_getDataTypeArray('Logo');
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
