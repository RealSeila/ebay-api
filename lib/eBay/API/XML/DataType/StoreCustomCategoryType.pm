#!/usr/bin/perl

package eBay::API::XML::DataType::StoreCustomCategoryType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. StoreCustomCategoryType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::StoreCustomCategoryType

=head1 DESCRIPTION

Configuration of a store custom category.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::StoreCustomCategoryType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::StoreCustomCategoryType;


my @gaProperties = ( [ 'CategoryID', 'xs:long', '', '', '' ]
	, [ 'ChildCategory', 'ns:StoreCustomCategoryType', '1'
	     ,'eBay::API::XML::DataType::StoreCustomCategoryType', '1' ]
	, [ 'Name', 'xs:string', '', '', '' ]
	, [ 'Order', 'xs:int', '', '', '' ]
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



=head2 setCategoryID()

Custom category ID. For SetStoreCategories, required only if 
Action is set to Rename, Move or Delete.

  Calls: SetStoreCategories
  RequiredInput: Conditionally

#    Argument: 'xs:long'

=cut

sub setCategoryID {
  my $self = shift;
  $self->{'CategoryID'} = shift
}

=head2 getCategoryID()

  Calls: GetStore
  Returned: Always

#    Returns: 'xs:long'

=cut

sub getCategoryID {
  my $self = shift;
  return $self->{'CategoryID'};
}


=head2 setChildCategory()

Describes the configuration of a store custom subcategory. Stores support
three levels of categories.

  Calls: SetStoreCategories
  RequiredInput: Conditionally

#    Argument: reference to an array  
                      of 'ns:StoreCustomCategoryType'

=cut

sub setChildCategory {
  my $self = shift;
  $self->{'ChildCategory'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getChildCategory()

  Calls: GetStore
  Returned: Always

#    Returns: reference to an array  
                      of 'ns:StoreCustomCategoryType'

=cut

sub getChildCategory {
  my $self = shift;
  return $self->_getDataTypeArray('ChildCategory');
}


=head2 setName()

Name of the custom category.

  Calls: SetStoreCategories
  RequiredInput: Conditionally

#    Argument: 'xs:string'

=cut

sub setName {
  my $self = shift;
  $self->{'Name'} = shift
}

=head2 getName()

  Calls: GetStore
  Returned: Always

#    Returns: 'xs:string'

=cut

sub getName {
  my $self = shift;
  return $self->{'Name'};
}


=head2 setOrder()

Order in which the custom category appears in the list of store
categories.

  Calls: SetStoreCategories
  RequiredInput: No

#    Argument: 'xs:int'

=cut

sub setOrder {
  my $self = shift;
  $self->{'Order'} = shift
}

=head2 getOrder()

  Calls: GetStore
  Returned: Always

#    Returns: 'xs:int'

=cut

sub getOrder {
  my $self = shift;
  return $self->{'Order'};
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
