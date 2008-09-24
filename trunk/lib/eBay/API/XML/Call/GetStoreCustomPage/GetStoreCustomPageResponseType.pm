#!/usr/bin/perl

package eBay::API::XML::Call::GetStoreCustomPage::GetStoreCustomPageResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetStoreCustomPageResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetStoreCustomPage::GetStoreCustomPageResponseType

=head1 DESCRIPTION

Contains the custom page or pages for the user's Store.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetStoreCustomPage::GetStoreCustomPageResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::StoreCustomPageArrayType;


my @gaProperties = ( [ 'CustomPageArray', 'ns:StoreCustomPageArrayType', ''
	     ,'eBay::API::XML::DataType::StoreCustomPageArrayType', '1' ]
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



=head2 setCustomPageArray()

The custom page or custom pages.

#    Argument: 'ns:StoreCustomPageArrayType'

=cut

sub setCustomPageArray {
  my $self = shift;
  $self->{'CustomPageArray'} = shift
}

=head2 getCustomPageArray()

  Returned: Always
#    Returns: 'ns:StoreCustomPageArrayType'

=cut

sub getCustomPageArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'CustomPageArray'
		,'eBay::API::XML::DataType::StoreCustomPageArrayType');
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