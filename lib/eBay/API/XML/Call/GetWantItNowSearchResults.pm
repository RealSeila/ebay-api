#!/usr/bin/perl

package eBay::API::XML::Call::GetWantItNowSearchResults;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetWantItNowSearchResults.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetWantItNowSearchResults

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetWantItNowSearchResults inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetWantItNowSearchResults::GetWantItNowSearchResultsRequestType;
use eBay::API::XML::Call::GetWantItNowSearchResults::GetWantItNowSearchResultsResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetWantItNowSearchResults';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetWantItNowSearchResults::GetWantItNowSearchResultsRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetWantItNowSearchResults::GetWantItNowSearchResultsResponseType';
}

#
# input properties
#

=head2 setCategoryID()

Limits the result set to just those Want It Now posts listed in the
specified category. Defaults to all categories if no category ID is
specified. If the specified category ID does not match an existing
category for the site, an invalid-category error message is returned.
Controls the set of listings to return (not the details to return for each
listing).
You must specify a Query and/or a CategoryID in the request.

MaxLength: 10

  RequiredInput: No
#    Argument: 'xs:string'

=cut
       
sub setCategoryID {
   my $self   = shift;
   my $sCategoryID = shift;
   $self->getRequestDataType()->setCategoryID($sCategoryID);
}

=head2 setPagination()

Controls the pagination of the result set. Child elements specify the
maximum number of item listings to return per call and which page of data
to return.

  RequiredInput: No
#    Argument: 'ns:PaginationType'

=cut
       
sub setPagination {
   my $self   = shift;
   my $pPagination = shift;
   $self->getRequestDataType()->setPagination($pPagination);
}

=head2 setQuery()

Specifies a search string. The search string consists of one or more
keywords to search for in the listing title. Note that the post
description will also be searched if SearchInDescription is enabled.
By default, requests return a list of Want It Now posts that include all
of the keywords specified in the Query. All words used in the query,
including "and," "or," and "the,"  will be treated as keywords. You can,
however, use modifiers and wildcards (e.g., +, -, and *) in the Query
field to create more complex searches. Be careful when using spaces before
or after modifiers and wildcards (+, -, or *), as the spaces can affect
the query logic.
See the eBay Web Services Guide for a list of valid search keyword query
operators and examples.

MaxLength: 350 (characters)

  RequiredInput: No
#    Argument: 'xs:string'

=cut
       
sub setQuery {
   my $self   = shift;
   my $sQuery = shift;
   $self->getRequestDataType()->setQuery($sQuery);
}

=head2 setSearchInDescription()

If true, include the description field of Want It Now posts in the keyword search. Want
It Now posts returned are those where specified search keywords appear in
either the description or the title. This is the default behavior if SearchInDescription
is not specified. If false, only the title will be searched. SearchInDescription is an
optional input.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setSearchInDescription {
   my $self   = shift;
   my $sSearchInDescription = shift;
   $self->getRequestDataType()->setSearchInDescription($sSearchInDescription);
}

=head2 setSearchWorldwide()

If true, the search applies to all eBay sites. If false, the search is
limited to the site specified in the URL query string when the call is
made.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setSearchWorldwide {
   my $self   = shift;
   my $sSearchWorldwide = shift;
   $self->getRequestDataType()->setSearchWorldwide($sSearchWorldwide);
}



#
# output properties
#

=head2 isHasMoreItems()

Indicates whether there are additional Want It Now posts that meet the
search criteria.

  Returned: Always
#    Returns: 'xs:boolean'

=cut
       
sub isHasMoreItems {
   my $self = shift;
   return $self->getResponseDataType()->isHasMoreItems();
}

=head2 getItemsPerPage()

Indicates the maximum number of Want It Now posts that can be returned in
a WantItNowPostArray for a request. This value can be specified in the
request by  EntriesPerPage in Pagination in the request.

  Returned: Always
#    Returns: 'xs:int'

=cut
       
sub getItemsPerPage {
   my $self = shift;
   return $self->getResponseDataType()->getItemsPerPage();
}

=head2 getPageNumber()

Indicates the page of data returned by the current call.

  Returned: Always
#    Returns: 'xs:int'

=cut
       
sub getPageNumber {
   my $self = shift;
   return $self->getResponseDataType()->getPageNumber();
}

=head2 getPaginationResult()

Indicates the results of the pagination, including the total number of
pages of data there are to be returned and the total number of posts there
are to be returned.

  Returned: Always
#    Returns: 'ns:PaginationResultType'

=cut
       
sub getPaginationResult {
   my $self = shift;
   return $self->getResponseDataType()->getPaginationResult();
}

=head2 getWantItNowPostArray()

Contains the returned Want It Now posts, if any. The data for each post is
returned in a WantItNowPostType object.

  Returned: Always
#    Returns: 'ns:WantItNowPostArrayType'

=cut
       
sub getWantItNowPostArray {
   my $self = shift;
   return $self->getResponseDataType()->getWantItNowPostArray();
}





1;   
