#!/usr/bin/perl

package eBay::API::XML::DataType::CharacteristicSetIDsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CharacteristicSetIDsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::CharacteristicSetIDsType

=head1 DESCRIPTION

A list of one or more characteristic set IDs.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::CharacteristicSetIDsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'ID', 'xs:string', '1', '', '' ]
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



=head2 setID()

Numeric identifier for a domain (characteristic set).<br>
<br>
For GetProducts (for buying tools), you can use the list of
catalog-enabled attribute sets in the documentation
(see link below).<br>
<br>
For GetProductSearchResults (for selling tools), it's best to use
GetCategory2CS to determine mappings between categories and
characteristic sets that are flagged as CatalogEnabled.

SeeLink: URL: ../../Support/CatalogEnabledAttrSets.html
Title: Catalog-Enabled Attribute Sets

  Calls: GetProductSearchResults
         GetProducts
  RequiredInput: No

#    Argument: reference to an array  
                      of 'xs:string'

=cut

sub setID {
  my $self = shift;
  $self->{'ID'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getID()

#    Returns: reference to an array  
                      of 'xs:string'

=cut

sub getID {
  my $self = shift;
  return $self->_getDataTypeArray('ID');
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
