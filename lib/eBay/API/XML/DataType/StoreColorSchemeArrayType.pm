#!/usr/bin/perl

package eBay::API::XML::DataType::StoreColorSchemeArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. StoreColorSchemeArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::StoreColorSchemeArrayType

=head1 DESCRIPTION

Set of eBay Store color schemes.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::StoreColorSchemeArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::StoreColorSchemeType;


my @gaProperties = ( [ 'ColorScheme', 'ns:StoreColorSchemeType', '1'
	     ,'eBay::API::XML::DataType::StoreColorSchemeType', '1' ]
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



=head2 setColorScheme()

A Store color scheme.

#    Argument: reference to an array  
                      of 'ns:StoreColorSchemeType'

=cut

sub setColorScheme {
  my $self = shift;
  $self->{'ColorScheme'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getColorScheme()

  Calls: GetStoreOptions
  Returned: Always

#    Returns: reference to an array  
                      of 'ns:StoreColorSchemeType'

=cut

sub getColorScheme {
  my $self = shift;
  return $self->_getDataTypeArray('ColorScheme');
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
