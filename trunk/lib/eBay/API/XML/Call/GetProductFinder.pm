#!/usr/bin/perl

package eBay::API::XML::Call::GetProductFinder;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetProductFinder.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetProductFinder

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetProductFinder inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetProductFinder::GetProductFinderRequestType;
use eBay::API::XML::Call::GetProductFinder::GetProductFinderResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetProductFinder';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetProductFinder::GetProductFinderRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetProductFinder::GetProductFinderResponseType';
}

#
# input properties
#

=head2 setAttributeSystemVersion()

A version of the product finder attribute definitions for the site.
Typically, an application passes the version value that was returned the last
time the application executed this call.
Filter that causes the call to return only the Product Finders
for which the attribute meta-data has changed since the specified version.
The latest version value is not necessarily greater than the previous
value that was returned. Therefore, when comparing versions, only
compare whether the value has changed.

  RequiredInput: No
#    Argument: 'xs:string'

=cut
       
sub setAttributeSystemVersion {
   my $self   = shift;
   my $sAttributeSystemVersion = shift;
   $self->getRequestDataType()->setAttributeSystemVersion($sAttributeSystemVersion);
}

=head2 setProductFinderID()

A number that uniquely identifies a product finder. <br>
<br>
For sell-side searches, you can determine the
product finder IDs for a category by calling GetCategory2CS.<br>
<br>
For buy-side searches, you can't use GetCategory2CS to reliably determine 
the product finder IDs for an eBay category. 
GetProductFinder may work for some attributes. Alternatively, you can 
use the pfid parameter from the URL of the Product Finder search page 
on the site you're interested in. 
See the Knowledge Base article referenced below for more details.<br>
<br>
Multiple categories can be mapped to the same product finder ID.
You can pass zero or multiple IDs in the request. When IDs are specified, the call
only returns product finder meta-data for the specified product finders.
When no IDs are specified, the call returns all the current product finder
meta-data available on the site.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AttrGPF
Title: Retrieving Product Finder Meta-Data
, URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=SearchingByItemSpecifics
Title: Searching by Item Specifics (Buy-Side Product Finder)
, URL: https://ebay.custhelp.com/cgi-bin/ebay.cfg/php/enduser/std_adp.php?p_faqid=560
Title: Knowledge Base: ProductFinderID for Buy-Side Searches


  RequiredInput: No
#    Argument: reference to an array  
                      of 'xs:int'

=cut
       
sub setProductFinderID {
   my $self   = shift;
   my $sProductFinderID = shift;
   $self->getRequestDataType()->setProductFinderID($sProductFinderID);
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

  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll
#    Returns: 'xs:string'

=cut
       
sub getAttributeSystemVersion {
   my $self = shift;
   return $self->getResponseDataType()->getAttributeSystemVersion();
}

=head2 getProductFinderData()

A string containing a list of search attributes that can be used in a
"Product Finder" style query, along with related meta-data. The meta-data
specifies possible values of each attribute, the logic for presenting
attributes to a user, and rules for validating the user's selections. For
backward compatibility, this data is in the same XML format that was used
in the Legacy XML API so that you can apply the same Product Finder XSL
stylesheet to it. That is, individual elements are not described using the
new eBay XML schema format. For information about each element in the
ProductFinderData string, see the product finder model documentation in
the eBay Web Services guide (see links below).<br>
<br>
Because this is returned as a string, the XML markup is escaped with
character entity references (e.g., &amp;lt;eBay&amp;gt;&amp;lt;ProductFinders&amp;gt;...).
See the appendices in the eBay Web Services guide for general information about
string data types.

  Returned: Conditionally
  Details: DetailLevel: ReturnAll
#    Returns: 'xs:string'

=cut
       
sub getProductFinderData {
   my $self = shift;
   return $self->getResponseDataType()->getProductFinderData();
}





1;   
