#!/usr/bin/perl

package eBay::API::XML::Call::GetProductFamilyMembers::GetProductFamilyMembersResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetProductFamilyMembersResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetProductFamilyMembers::GetProductFamilyMembersResponseType

=head1 DESCRIPTION

GetProductFamilyMembers performs a product search and returns results comprising
all the children in the product family identified by a product ID that was
specified in the request. Use this call when more matches are found than the
max amount specified per family in a call to GetProductSearchResults.
This call supports batch requests. This means you can retrieve products in
multiple families by using a single request.
The results are compatible with the results from GetProductSearchResults,
so similar application logic can be used to handle both requests and responses.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetProductFamilyMembers::GetProductFamilyMembersResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::DataElementSetType;
use eBay::API::XML::DataType::ProductSearchResultType;


my @gaProperties = ( [ 'DataElementSets', 'ns:DataElementSetType', '1'
	     ,'eBay::API::XML::DataType::DataElementSetType', '1' ]
	, [ 'ProductSearchResult', 'ns:ProductSearchResultType', '1'
	     ,'eBay::API::XML::DataType::ProductSearchResultType', '1' ]
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



=head2 setDataElementSets()

Container for one or more DataElement fields containing supplemental helpful data.
A DataElement field is an HTML snippet that specifies hints for the user, help links,
help graphics, and other supplemental information that varies per characteristics set.
Usage of this information is optional and may require developers to inspect the information
to determine how it can be applied in an application.

#    Argument: reference to an array  
                      of 'ns:DataElementSetType'

=cut

sub setDataElementSets {
  my $self = shift;
  $self->{'DataElementSets'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getDataElementSets()

  Returned: Always
#    Returns: reference to an array  
                      of 'ns:DataElementSetType'

=cut

sub getDataElementSets {
  my $self = shift;
  return $self->_getDataTypeArray('DataElementSets');
}


=head2 setProductSearchResult()

Contains the attributes and summary product details for all products that match
the product ID (or IDs) passed in the request.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AttrGPFM
Title: Retrieving All Members of a Product Family

#    Argument: reference to an array  
                      of 'ns:ProductSearchResultType'

=cut

sub setProductSearchResult {
  my $self = shift;
  $self->{'ProductSearchResult'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getProductSearchResult()

  Returned: Always
#    Returns: reference to an array  
                      of 'ns:ProductSearchResultType'

=cut

sub getProductSearchResult {
  my $self = shift;
  return $self->_getDataTypeArray('ProductSearchResult');
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
