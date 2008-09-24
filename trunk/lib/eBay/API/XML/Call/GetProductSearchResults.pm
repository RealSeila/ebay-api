#!/usr/bin/perl

package eBay::API::XML::Call::GetProductSearchResults;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetProductSearchResults.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetProductSearchResults

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetProductSearchResults inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetProductSearchResults::GetProductSearchResultsRequestType;
use eBay::API::XML::Call::GetProductSearchResults::GetProductSearchResultsResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetProductSearchResults';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetProductSearchResults::GetProductSearchResultsRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetProductSearchResults::GetProductSearchResultsResponseType';
}

#
# input properties
#

=head2 setProductSearch()

Specifies the keywords or attributes that make up the product query, with
pagination instructions. ProductSearch is a required input. To search for
multiple different products at the same time (i.e., to perform a batch
search), pass in multiple ProductSearch properties.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AttrProductSearch
Title: Searching for Pre-filled Item Information

  RequiredInput: Yes
#    Argument: reference to an array  
                      of 'ns:ProductSearchType'

=cut
       
sub setProductSearch {
   my $self   = shift;
   my $pProductSearch = shift;
   $self->getRequestDataType()->setProductSearch($pProductSearch);
}



#
# output properties
#

=head2 getDataElementSets()

Container for one or more DataElement fields containing supplemental
helpful data. A DataElement field is an HTML snippet that specifies hints
for the user, help links, help graphics, and other supplemental
information that varies per characteristic set. Usage of this information
is optional and may require you to inspect the information to determine
how it can be applied in an application. Also returned with warnings when
no matches are found.

  Returned: Always
#    Returns: reference to an array  
                      of 'ns:DataElementSetType'

=cut
       
sub getDataElementSets {
   my $self = shift;
   return $self->getResponseDataType()->getDataElementSets();
}

=head2 getProductSearchResult()

Contains the attributes and product details that match the attributes or
query keywords passed in the request. Always returned when product search
results are found.

  Returned: Always
#    Returns: reference to an array  
                      of 'ns:ProductSearchResultType'

=cut
       
sub getProductSearchResult {
   my $self = shift;
   return $self->getResponseDataType()->getProductSearchResult();
}





1;   