#!/usr/bin/perl

package eBay::API::XML::Call::GetProductSearchResults::GetProductSearchResultsResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetProductSearchResultsResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetProductSearchResults::GetProductSearchResultsResponseType

=head1 DESCRIPTION

GetProductSearchResults performs a product search and collects the results. Result
attributes for each product/product family are grouped and identified with a
product ID. If more matches are found than the max amount specified per family,
only the product family information is returned. In this case, call
GetProductFamilyMembers to retrieve more products within the same family.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetProductSearchResults::GetProductSearchResultsResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

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

Container for one or more DataElement fields containing supplemental
helpful data. A DataElement field is an HTML snippet that specifies hints
for the user, help links, help graphics, and other supplemental
information that varies per characteristic set. Usage of this information
is optional and may require you to inspect the information to determine
how it can be applied in an application. Also returned with warnings when
no matches are found.

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

Contains the attributes and product details that match the attributes or
query keywords passed in the request. Always returned when product search
results are found.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AttrProductSearch
Title: Searching for Pre-filled Item Information

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
