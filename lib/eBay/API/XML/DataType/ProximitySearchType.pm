#!/usr/bin/perl

package eBay::API::XML::DataType::ProximitySearchType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ProximitySearchType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ProximitySearchType

=head1 DESCRIPTION

Contains data for filtering a search by proximity.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ProximitySearchType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'MaxDistance', 'xs:int', '', '', '' ]
	, [ 'PostalCode', 'xs:string', '', '', '' ]
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



=head2 setMaxDistance()

The maximum distance from the specified postal code to search for items.

  Calls: GetSearchResults
         GetCategoryListings
  RequiredInput: No

#    Argument: 'xs:int'

=cut

sub setMaxDistance {
  my $self = shift;
  $self->{'MaxDistance'} = shift
}

=head2 getMaxDistance()

#    Returns: 'xs:int'

=cut

sub getMaxDistance {
  my $self = shift;
  return $self->{'MaxDistance'};
}


=head2 setPostalCode()

The postal code to use as the basis for the proximity search.

  Calls: GetSearchResults
         GetCategoryListings
  RequiredInput: No

#    Argument: 'xs:string'

=cut

sub setPostalCode {
  my $self = shift;
  $self->{'PostalCode'} = shift
}

=head2 getPostalCode()

#    Returns: 'xs:string'

=cut

sub getPostalCode {
  my $self = shift;
  return $self->{'PostalCode'};
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
