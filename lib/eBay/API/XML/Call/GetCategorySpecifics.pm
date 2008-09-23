#!/usr/bin/perl

package eBay::API::XML::Call::GetCategorySpecifics;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetCategorySpecifics.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetCategorySpecifics

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetCategorySpecifics inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetCategorySpecifics::GetCategorySpecificsRequestType;
use eBay::API::XML::Call::GetCategorySpecifics::GetCategorySpecificsResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetCategorySpecifics';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetCategorySpecifics::GetCategorySpecificsRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetCategorySpecifics::GetCategorySpecificsResponseType';
}

#
# input properties
#

=head2 setCategoryID()

A leaf category to retrieve recommended Item Specifics for.
(This call returns no results for a parent category.)
To determine which leaf categories support custom Item Specifics,
use GetCategoryFeatures and GetCategories.
You can specify multiple leaf categories (but more categories
can result in longer response times). If you specify the same
ID twice, we use the first instance.

  RequiredInput: Yes
#    Argument: reference to an array  
                      of 'xs:string'

=cut
       
sub setCategoryID {
   my $self   = shift;
   my $sCategoryID = shift;
   $self->getRequestDataType()->setCategoryID($sCategoryID);
}

=head2 setLastUpdateTime()

Causes the recommendation engine to check whether the list of
popular Item Specifics for each specified category has changed
since this date and time. If specified, this call returns no
Item Specifics; it only returns whether the data has changed
for any of the requested categories.<br>
<br>
Typically, you pass in the Timestamp that was
returned the last time you refreshed the list of names and values
for the same categories. If the Updated flag returns true for any
categories in the response, call GetCategorySpecifics again
for those categories to get the latest names and values.
(As downloading all the data may affect your application's
performance, it may help to only download Item Specifics
for a category if they have changed since you last checked.)

  RequiredInput: No
#    Argument: 'xs:dateTime'

=cut
       
sub setLastUpdateTime {
   my $self   = shift;
   my $sLastUpdateTime = shift;
   $self->getRequestDataType()->setLastUpdateTime($sLastUpdateTime);
}

=head2 setMaxNames()

Maximum number of Item Specifics to return
per category (where each Item Specific is identified
by a unique name within the category).
Use this to retrieve fewer results per category.
For example, if you only want up to 2 per category
(the top 2 most popular names), specify 2.

Max: 15 (see GeteBayDetails)
Default: 15
Min: 1

  RequiredInput: No
#    Argument: 'xs:int'

=cut
       
sub setMaxNames {
   my $self   = shift;
   my $sMaxNames = shift;
   $self->getRequestDataType()->setMaxNames($sMaxNames);
}

=head2 setMaxValuesPerName()

Maximum number of values to retrieve per Item Specific.
Use this to retrieve fewer values per name.
For example, if you only want the most popular value,
specify 1.

Max: 10 (see GeteBayDetails)
Default: 10
Min: 1

  RequiredInput: No
#    Argument: 'xs:int'

=cut
       
sub setMaxValuesPerName {
   my $self   = shift;
   my $sMaxValuesPerName = shift;
   $self->getRequestDataType()->setMaxValuesPerName($sMaxValuesPerName);
}

=head2 setName()

The name of one Item Specific name to find values for.
Use this if you want to find out whether a name
that the seller provided has recommended values.
If you specify multiple leaf categories in the request,
the recommendation engine returns all matching
names and values it finds for each of those categories.
At the time of this writing, this value is case-sensitive.
(Wildcards are not supported.)

MaxLength: 30 (see GeteBayDetails)

  RequiredInput: No
#    Argument: 'xs:string'

=cut
       
sub setName {
   my $self   = shift;
   my $sName = shift;
   $self->getRequestDataType()->setName($sName);
}



#
# output properties
#

=head2 getCategoryItemSpecifics()

Contains the most popular Item Specifics, if any, for a category
specified in the request, or contains information about whether
the recommendations have changed for that category since
the LastUpdateTime you requested. <br>
<br>
The most relevant Item Specifics are returned first. If a name
has multiple values, the first value is more popular.<br>
<br>
This node returns empty (or it's not returned) for a category if
there is no applicable data (such as when you request a parent category, a category that has no popular Item Specifics yet,
or a duplicate category that was already returned).
If you pass in the CategoryID and Name fields together, but no
matching values are found for the name, eBay returns the name
with no values (even if the name is not recommended).<br>
<br>
If custom Item Specifics are enabled for a leaf category you
requested, but GetCategorySpecifics doesn't return any
recommendations for that category, the seller can still
specify their own custom Item Specifics for listings in that category.

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:CategoryItemSpecificsType'

=cut
       
sub getCategoryItemSpecifics {
   my $self = shift;
   return $self->getResponseDataType()->getCategoryItemSpecifics();
}





1;   
