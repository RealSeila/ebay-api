#!/usr/bin/perl

package eBay::API::XML::Call::GetProductFamilyMembers;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetProductFamilyMembers.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetProductFamilyMembers

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetProductFamilyMembers inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetProductFamilyMembers::GetProductFamilyMembersRequestType;
use eBay::API::XML::Call::GetProductFamilyMembers::GetProductFamilyMembersResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetProductFamilyMembers';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetProductFamilyMembers::GetProductFamilyMembersRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetProductFamilyMembers::GetProductFamilyMembersResponseType';
}

#
# input properties
#

=head2 setProductSearch()

Specifies the ID of a product in the family to be retrieved,
along with pagination and sorting instructions.
ProductSearch is a required input.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AttrGPFM
Title: Retrieving All Members of a Product Family

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

Container for one or more DataElement fields containing supplemental helpful data.
A DataElement field is an HTML snippet that specifies hints for the user, help links,
help graphics, and other supplemental information that varies per characteristics set.
Usage of this information is optional and may require developers to inspect the information
to determine how it can be applied in an application.

  Returned: Always
#    Returns: reference to an array  
                      of 'ns:DataElementSetType'

=cut
       
sub getDataElementSets {
   my $self = shift;
   return $self->getResponseDataType()->getDataElementSets();
}

=head2 getProductSearchResult()

Contains the attributes and summary product details for all products that match
the product ID (or IDs) passed in the request.

  Returned: Always
#    Returns: reference to an array  
                      of 'ns:ProductSearchResultType'

=cut
       
sub getProductSearchResult {
   my $self = shift;
   return $self->getResponseDataType()->getProductSearchResult();
}





1;   
