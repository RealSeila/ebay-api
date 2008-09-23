#!/usr/bin/perl

package eBay::API::XML::Call::GetAttributesCS;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetAttributesCS.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetAttributesCS

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetAttributesCS inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetAttributesCS::GetAttributesCSRequestType;
use eBay::API::XML::Call::GetAttributesCS::GetAttributesCSResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetAttributesCS';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetAttributesCS::GetAttributesCSRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetAttributesCS::GetAttributesCSResponseType';
}

#
# input properties
#

=head2 setAttributeSetID()

An array of characteristic setIDs (which always correspond to
attribute set IDs).
Each characteristic setcorresponds to a level in the eBay
category hierarchy at
which all items share common characteristics.
Multiple categories can be mapped to the same characteristic set.
AttributeSetIDs is an optional input. When IDs are specified,
the call only returns meta-data for the corresponding
characteristic sets.
When no IDs are specified, the call returns all the current
attribute meta-data in the system.

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

A version of the Item Specifics definitions (attribute meta-data)
for the site.
Typically, an application passes the version value that was
returned the last time the application executed this call.
Filter that causes the call to return only the characteristic sets
for which the attribute meta-data has changed since the specified
version. If not specified, all characteristics sets are returned.
The latest version value is not necessarily greater than the
previous value that was returned. Therefore, when comparing
versions, only compare whether the value has changed.

  RequiredInput: No
#    Argument: 'xs:string'

=cut
       
sub setAttributeSystemVersion {
   my $self   = shift;
   my $sAttributeSystemVersion = shift;
   $self->getRequestDataType()->setAttributeSystemVersion($sAttributeSystemVersion);
}

=head2 setIncludeCategoryMappingDetails()

If true, includes a list of CategoryMapping nodes in the response.
Each CategoryMapping node specifies category information as well as
attributes and values that your application can auto-fill for
items listed in that category. See the eBay Web Services Guide for more
information about options for maintaining category data and
auto-filling Item Specifics.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setIncludeCategoryMappingDetails {
   my $self   = shift;
   my $sIncludeCategoryMappingDetails = shift;
   $self->getRequestDataType()->setIncludeCategoryMappingDetails($sIncludeCategoryMappingDetails);
}



#
# output properties
#

=head2 getAttributeData()

A string containing a list of all the attributes that are
applicable to the site (or characteristic sets in the request),
along with related meta-data.
The meta-data specifies all the possible values of each attribute,
the logic for presenting attributes to a user, and rules for
validating the user's selections. Individual
elements are not described in the eBay schema format.
For information about each element in the AttributeData string,
see the attribute model documentation in the
eBay Web Services guide (see links below).<br>
<br>
Because this is returned as a string, the XML markup elements
are escaped with character entity references (e.g.,
&amp;lt;eBay&amp;gt;&amp;lt;Attributes&amp;gt;
...).
See the appendices in the eBay Web Services guide for general
information about string data types.

  Returned: Always
  Details: DetailLevel: none, ReturnAll
#    Returns: 'xs:string'

=cut
       
sub getAttributeData {
   my $self = shift;
   return $self->getResponseDataType()->getAttributeData();
}

=head2 getAttributeSystemVersion()

Current version of the Item Specifics meta-data system for
the site.
This value changes each time changes are made to the meta-data.
The current version value is not necessarily greater than
the previous value. Therefore, when comparing versions, only
compare whether the value has changed.

  Returned: Always
  Details: DetailLevel: none
#    Returns: 'xs:string'

=cut
       
sub getAttributeSystemVersion {
   my $self = shift;
   return $self->getResponseDataType()->getAttributeSystemVersion();
}





1;   
