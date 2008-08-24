#!/usr/bin/perl

package eBay::API::XML::DataType::ExtendedProductFinderIDType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ExtendedProductFinderIDType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ExtendedProductFinderIDType

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ExtendedProductFinderIDType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'ProductFinderBuySide', 'xs:boolean', '', '', '' ]
	, [ 'ProductFinderID', 'xs:int', '', '', '' ]
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



=head2 setProductFinderBuySide()

If true, the product finder can be used as input to GetSearchResults
to search for listings with Item Specifics on the eBay site.
If false or not present, the product finder can be used as input to
GetProductSearchResults to search for catalog data (Pre-filled Item Information)
that a seller might want to include in a listing.

#    Argument: 'xs:boolean'

=cut

sub setProductFinderBuySide {
  my $self = shift;
  $self->{'ProductFinderBuySide'} = shift
}

=head2 isProductFinderBuySide()

  Calls: GetCategory2CS
  Returned: Conditionally
  Details: DetailLevel: ReturnAll
  Context: MappedCategoryArray

#    Returns: 'xs:boolean'

=cut

sub isProductFinderBuySide {
  my $self = shift;
  return $self->{'ProductFinderBuySide'};
}


=head2 setProductFinderID()

A product finder ID. GetCategory2CS always (and only) returns this
when Category.ProductFinderIDs is returned.

#    Argument: 'xs:int'

=cut

sub setProductFinderID {
  my $self = shift;
  $self->{'ProductFinderID'} = shift
}

=head2 getProductFinderID()

  Calls: GetCategory2CS
  Returned: Conditionally
  Details: DetailLevel: ReturnAll
  Context: MappedCategoryArray

#    Returns: 'xs:int'

=cut

sub getProductFinderID {
  my $self = shift;
  return $self->{'ProductFinderID'};
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
