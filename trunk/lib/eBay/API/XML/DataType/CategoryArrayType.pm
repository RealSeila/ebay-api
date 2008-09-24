#!/usr/bin/perl

package eBay::API::XML::DataType::CategoryArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CategoryArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::CategoryArrayType

=head1 DESCRIPTION

Container for a list of categories.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::CategoryArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::CategoryType;


my @gaProperties = ( [ 'Category', 'ns:CategoryType', '1'
	     ,'eBay::API::XML::DataType::CategoryType', '1' ]
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



=head2 setCategory()

Contains details about one category. For GetCategories,
this node is not returned when no detail level is specified.

#    Argument: reference to an array  
                      of 'ns:CategoryType'

=cut

sub setCategory {
  my $self = shift;
  $self->{'Category'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getCategory()

  Calls: GetCategories
  Returned: Always
  Details: DetailLevel: ReturnAll

  Calls: GetCategoryListings
         GetPopularKeywords
  Returned: Always

  Calls: GetCategory2CS
  Returned: Always
  Details: DetailLevel: ReturnAll
  Context: MappedCategoryArray

  Calls: GetCategory2CS
  Returned: Conditionally
  Details: DetailLevel: ReturnAll
  Context: UnmappedCategoryArray

  Calls: GetSearchResults
  Returned: Conditionally
  Details: DetailLevel: ItemReturnAttributes, ItemReturnCategories, none, ReturnAll

#    Returns: reference to an array  
                      of 'ns:CategoryType'

=cut

sub getCategory {
  my $self = shift;
  return $self->_getDataTypeArray('Category');
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
