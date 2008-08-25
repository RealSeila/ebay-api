#!/usr/bin/perl

package eBay::API::XML::DataType::ProductFamilyType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ProductFamilyType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ProductFamilyType

=head1 DESCRIPTION

A set of results returned from a catalog product search. Use
GetProductSearchResults or GetProductFamilyMembers to perform the search. See the
guide for information about Pre-filled Item Information (Catalogs) functionality.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ProductFamilyType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::ProductType;


my @gaProperties = ( [ 'FamilyMembers', 'ns:ProductType', '1'
	     ,'eBay::API::XML::DataType::ProductType', '1' ]
	, [ 'ParentProduct', 'ns:ProductType', ''
	     ,'eBay::API::XML::DataType::ProductType', '1' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( [ 'hasMoreChildren', 'xs:boolean', '', '', '' ]
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



=head2 setFamilyMembers()

A set of products (within the same product family) that match the search query.

#    Argument: reference to an array  
                      of 'ns:ProductType'

=cut

sub setFamilyMembers {
  my $self = shift;
  $self->{'FamilyMembers'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getFamilyMembers()

  Calls: GetProductFamilyMembers
         GetProductSearchResults
  Returned: Always

#    Returns: reference to an array  
                      of 'ns:ProductType'

=cut

sub getFamilyMembers {
  my $self = shift;
  return $self->_getDataTypeArray('FamilyMembers');
}


=head2 setParentProduct()

A transient header that describes the current search results. Contains a
an ID, a subset of attributes, and a typical stock photo
to help a user easily distinguish the products in the current result set
from products in other result sets returned in the same response.
One ParentProduct is returned per ProductFamily.

#    Argument: 'ns:ProductType'

=cut

sub setParentProduct {
  my $self = shift;
  $self->{'ParentProduct'} = shift
}

=head2 getParentProduct()

  Calls: GetProductFamilyMembers
         GetProductSearchResults
  Returned: Always

#    Returns: 'ns:ProductType'

=cut

sub getParentProduct {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ParentProduct'
		,'eBay::API::XML::DataType::ProductType');
}




=head2 setHasMoreChildren()

If true, the product family has more products than you requested in
MaxChildrenPerFamily for a query in the GetProductSearchResults request.
In this case, no products are returned in the GetProductSearchResults response.
(Call GetProductFamilyMembers to retrieve all products in the family.)
If false, the product family has MaxChildrenPerFamily or fewer product
children, and the call returns all products in the family.

#    Argument: 'xs:boolean'

=cut

sub setHasMoreChildren {
  my $self = shift;
  $self->{'hasMoreChildren'} = shift
}

=head2 isHasMoreChildren()

  Calls: GetProductFamilyMembers
         GetProductSearchResults
  Returned: Always

#    Returns: 'xs:boolean'

=cut

sub isHasMoreChildren {
  my $self = shift;
  return $self->{'hasMoreChildren'};
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