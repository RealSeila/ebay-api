#!/usr/bin/perl

package eBay::API::XML::DataType::ProductSearchResultType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ProductSearchResultType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ProductSearchResultType

=head1 DESCRIPTION

Container for the results of a product query.
Supports Pre-filled Product Information functionality.
See the Developer's Guide for more information about working with this data.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ProductSearchResultType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::ResponseAttributeSetType;


my @gaProperties = ( [ 'AttributeSet', 'ns:ResponseAttributeSetType', '1'
	     ,'eBay::API::XML::DataType::ResponseAttributeSetType', '1' ]
	, [ 'DisplayStockPhotos', 'xs:boolean', '', '', '' ]
	, [ 'ID', 'xs:string', '', '', '' ]
	, [ 'NumProducts', 'xs:string', '', '', '' ]
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



=head2 setAttributeSet()

A result containing a set of one or more product families.
For GetProductSearchResults, if QueryKeywords and multiple characteristic set IDs were
specified in the request, multiple AttributeSet objects can be returned.
Each AttributeSet corresponds to a characteristic set ID specified
in the request. See the eBay Web Services guide for more information
about working with this data.
For GetProductSearchResults, only returned with request version 387 and higher.
For GetProductFamilyMembers, only returned with request version 415 and higher.

#    Argument: reference to an array  
                      of 'ns:ResponseAttributeSetType'

=cut

sub setAttributeSet {
  my $self = shift;
  $self->{'AttributeSet'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getAttributeSet()

  Calls: GetProductFamilyMembers
         GetProductSearchResults
  Returned: Always

#    Returns: reference to an array  
                      of 'ns:ResponseAttributeSetType'

=cut

sub getAttributeSet {
  my $self = shift;
  return $self->_getDataTypeArray('AttributeSet');
}


=head2 setDisplayStockPhotos()

If true, your application should attempt to display stock photos that
are returned. If false, your application should not attempt to display any
stock photos that are returned. This recommendation is useful for catalog data
related to products like coins, where stock photos are not applicable. An
application with a graphical user interface can use this flag to determine
when to hide stock photo widgets for a set of search results.

#    Argument: 'xs:boolean'

=cut

sub setDisplayStockPhotos {
  my $self = shift;
  $self->{'DisplayStockPhotos'} = shift
}

=head2 isDisplayStockPhotos()

  Calls: GetProductFamilyMembers
         GetProductSearchResults
  Returned: Always

#    Returns: 'xs:boolean'

=cut

sub isDisplayStockPhotos {
  my $self = shift;
  return $self->{'DisplayStockPhotos'};
}


=head2 setID()

Key you specified in ProductSearchID in the search request to
distinguish between query results. Primarily useful when conducting
multiple searches in the same call. If no ProductSearchID value was
specified in the request, returns the array index of the search result
(beginning with 0). Not applicable to GetProductFamilyMembers.

#    Argument: 'xs:string'

=cut

sub setID {
  my $self = shift;
  $self->{'ID'} = shift
}

=head2 getID()

  Calls: GetProductSearchResults
  Returned: Always

#    Returns: 'xs:string'

=cut

sub getID {
  my $self = shift;
  return $self->{'ID'};
}


=head2 setNumProducts()

Total quantity of products that match the search request
(across all characteristic sets). This value can exceed the actual
quantity of products returned in the current virtual page.
Not applicable to GetProductFamilyMembers.

#    Argument: 'xs:string'

=cut

sub setNumProducts {
  my $self = shift;
  $self->{'NumProducts'} = shift
}

=head2 getNumProducts()

  Calls: GetProductSearchResults
  Returned: Always

#    Returns: 'xs:string'

=cut

sub getNumProducts {
  my $self = shift;
  return $self->{'NumProducts'};
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
