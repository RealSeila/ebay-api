#!/usr/bin/perl

package eBay::API::XML::DataType::RequestCategoriesType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. RequestCategoriesType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::RequestCategoriesType

=head1 DESCRIPTION

A set of parameters that control the retrieval of categories (not items)
that match a search query. In GetSearchResults, at least one child element
must be specified in order to retrieve matching categories. If empty or
not present, no matching category information is returned.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::RequestCategoriesType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'CategoriesOnly', 'xs:boolean', '', '', '' ]
	, [ 'DemandData', 'xs:boolean', '', '', '' ]
	, [ 'Levels', 'xs:int', '', '', '' ]
	, [ 'MaxCategories', 'xs:int', '', '', '' ]
	, [ 'MaxSubcategories', 'xs:int', '', '', '' ]
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



=head2 setCategoriesOnly()

Filter to retrieve matching categories but not matching items or buying
guides.
If true, only matching categories are returned (with no item or buying
guide details).
If false or not present, matching items and matching categories are both
returned, along with buying guide details (if any).
If TotalOnly and Categories.CategoriesOnly are both specified
in the request and their values are inconsistent with each other,
TotalOnly overrides Categories.CategoriesOnly.
That is, if TotalOnly is true and Categories.CategoriesOnly is false,
the results include matching categories but no item data or buying
guides.
If TotalOnly is false and Categories.CategoriesOnly is true, the
results include matching categories, item data, and buying guides.

  Calls: GetSearchResults
  RequiredInput: No

#    Argument: 'xs:boolean'

=cut

sub setCategoriesOnly {
  my $self = shift;
  $self->{'CategoriesOnly'} = shift
}

=head2 isCategoriesOnly()

#    Returns: 'xs:boolean'

=cut

sub isCategoriesOnly {
  my $self = shift;
  return $self->{'CategoriesOnly'};
}


=head2 setDemandData()

If you specify that DemandData is true, then the categories
returned will be sorted based on Best Match. The most
relevant categories will be returned first.

  Calls: GetSearchResults
  RequiredInput: No

#    Argument: 'xs:boolean'

=cut

sub setDemandData {
  my $self = shift;
  $self->{'DemandData'} = shift
}

=head2 isDemandData()

#    Returns: 'xs:boolean'

=cut

sub isDemandData {
  my $self = shift;
  return $self->{'DemandData'};
}


=head2 setLevels()

Filter to control the deepest matching category level to return.
If you specify 0, no category data is returned. If you specify a
negative number, the results are unpredictable.

Default: 2
Min: 1

  Calls: GetSearchResults
  RequiredInput: No

#    Argument: 'xs:int'

=cut

sub setLevels {
  my $self = shift;
  $self->{'Levels'} = shift
}

=head2 getLevels()

#    Returns: 'xs:int'

=cut

sub getLevels {
  my $self = shift;
  return $self->{'Levels'};
}


=head2 setMaxCategories()

Maximum quantity of matching categories to return at the first level of the
category hierarchy (CategoryLevel 1).

Default: 3

  Calls: GetSearchResults
  RequiredInput: No

#    Argument: 'xs:int'

=cut

sub setMaxCategories {
  my $self = shift;
  $self->{'MaxCategories'} = shift
}

=head2 getMaxCategories()

#    Returns: 'xs:int'

=cut

sub getMaxCategories {
  my $self = shift;
  return $self->{'MaxCategories'};
}


=head2 setMaxSubcategories()

Maximum quantity of matching subcategories to return at each lower level
of the hierarchy.

Default: 3

  Calls: GetSearchResults
  RequiredInput: No

#    Argument: 'xs:int'

=cut

sub setMaxSubcategories {
  my $self = shift;
  $self->{'MaxSubcategories'} = shift
}

=head2 getMaxSubcategories()

#    Returns: 'xs:int'

=cut

sub getMaxSubcategories {
  my $self = shift;
  return $self->{'MaxSubcategories'};
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
