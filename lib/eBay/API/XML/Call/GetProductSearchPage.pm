#!/usr/bin/perl

package eBay::API::XML::Call::GetProductSearchPage;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetProductSearchPage.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetProductSearchPage

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetProductSearchPage inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetProductSearchPage::GetProductSearchPageRequestType;
use eBay::API::XML::Call::GetProductSearchPage::GetProductSearchPageResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetProductSearchPage';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetProductSearchPage::GetProductSearchPageRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetProductSearchPage::GetProductSearchPageResponseType';
}

#
# input properties
#

=head2 setAttributeSetID()

A characteristic set ID that is associated with a
catalog-enabled category that supports product search pages.
You can pass an array of these IDs in the request.
Each characteristic set corresponds to a level in the
eBay category hierarchy at which all items share common characteristics.
Multiple categories can be mapped to the same characteristic set.
Each ID is used as a filter to limit the response content to fewer
characteristic sets. When IDs are specified, the call only returns
search page data for the corresponding characteristic sets.
When no IDs are specified, the call returns all the current
search page data in the system.

  RequiredInput: No
#    Argument: reference to an array  
                      of 'xs:int'

=cut
       
sub setAttributeSetID {
   my $self   = shift;
   my $sAttributeSetID = shift;
   $self->getRequestDataType()->setAttributeSetID($sAttributeSetID);
}

=head2 setAttributeSystemVersion()

A version of the search page definitions for the site. Typically, an
application passes the version value that was returned the last time the
application executed this call. Filter that causes the call to return only
the search pages for which the attribute meta-data has changed since the
specified version. The latest version value is not necessarily greater
than the previous value that was returned. Therefore, when comparing
versions, only compare whether the value has changed.

  RequiredInput: No
#    Argument: 'xs:string'

=cut
       
sub setAttributeSystemVersion {
   my $self   = shift;
   my $sAttributeSystemVersion = shift;
   $self->getRequestDataType()->setAttributeSystemVersion($sAttributeSystemVersion);
}



#
# output properties
#

=head2 getAttributeSystemVersion()

Current version of the product search page data for the site.
This value changes each time changes are made to the search page data.
The current version value is not necessarily greater than the previous
value. Therefore, when comparing versions, only compare whether the
value has changed.

  Returned: Always
  Details: DetailLevel: none, ReturnAll
#    Returns: 'xs:string'

=cut
       
sub getAttributeSystemVersion {
   my $self = shift;
   return $self->getResponseDataType()->getAttributeSystemVersion();
}

=head2 getProductSearchPage()

A list of catalog search criteria and sort keys associated with a catalog-enabled category,
plus supplemental information to help the seller understand how to make selections.

  Returned: Always
  Details: DetailLevel: ReturnAll
#    Returns: reference to an array  
                      of 'ns:ProductSearchPageType'

=cut
       
sub getProductSearchPage {
   my $self = shift;
   return $self->getResponseDataType()->getProductSearchPage();
}





1;   
