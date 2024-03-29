#!/usr/bin/perl

package eBay::API::XML::DataType::StoreCustomPageArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. StoreCustomPageArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::StoreCustomPageArrayType

=head1 DESCRIPTION

Set of Store custom pages.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::StoreCustomPageArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::StoreCustomPageType;


my @gaProperties = ( [ 'CustomPage', 'ns:StoreCustomPageType', '1'
	     ,'eBay::API::XML::DataType::StoreCustomPageType', '1' ]
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



=head2 setCustomPage()

A Store custom page.

#    Argument: reference to an array  
                      of 'ns:StoreCustomPageType'

=cut

sub setCustomPage {
  my $self = shift;
  $self->{'CustomPage'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getCustomPage()

  Calls: GetStoreCustomPage
  Returned: Always

#    Returns: reference to an array  
                      of 'ns:StoreCustomPageType'

=cut

sub getCustomPage {
  my $self = shift;
  return $self->_getDataTypeArray('CustomPage');
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
