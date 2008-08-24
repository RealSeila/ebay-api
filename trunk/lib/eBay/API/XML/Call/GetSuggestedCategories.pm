#!/usr/bin/perl

package eBay::API::XML::Call::GetSuggestedCategories;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetSuggestedCategories.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetSuggestedCategories

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetSuggestedCategories inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetSuggestedCategories::GetSuggestedCategoriesRequestType;
use eBay::API::XML::Call::GetSuggestedCategories::GetSuggestedCategoriesResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetSuggestedCategories';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetSuggestedCategories::GetSuggestedCategoriesRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetSuggestedCategories::GetSuggestedCategoriesResponseType';
}

#
# input properties
#

=head2 setQuery()

Specifies the search string, consisting of one or
more words to search for in the listing title.
The words "and" and "or" are treated like any other
word.

MaxLength: 350 (characters)

  RequiredInput: Yes
#    Argument: 'xs:string'

=cut
       
sub setQuery {
   my $self   = shift;
   my $sQuery = shift;
   $self->getRequestDataType()->setQuery($sQuery);
}



#
# output properties
#

=head2 getCategoryCount()

Indicates the number of categories in the array.

  Returned: Always
#    Returns: 'xs:int'

=cut
       
sub getCategoryCount {
   my $self = shift;
   return $self->getResponseDataType()->getCategoryCount();
}

=head2 getSuggestedCategoryArray()

Contains the categories that contain listings
that match the query string in the request. The array
can have up to 10 categories. Not returned if no categories match
the query in the request.

  Returned: Conditionally
#    Returns: 'ns:SuggestedCategoryArrayType'

=cut
       
sub getSuggestedCategoryArray {
   my $self = shift;
   return $self->getResponseDataType()->getSuggestedCategoryArray();
}





1;   
