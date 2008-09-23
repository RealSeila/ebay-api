#!/usr/bin/perl

package eBay::API::XML::Call::GetProductFinder::GetProductFinderRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetProductFinderRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetProductFinder::GetProductFinderRequestType

=head1 DESCRIPTION

Retrieves data that you use to construct valid "product finder" queries
(queries against multiple attributes) against catalog products or (in some cases) listed items.
The attributes describe search criteria (e.g., Manufacturer), as appropriate for the category.
Use the results in combination with GetProductFinderXSL to render the Product Finder
in a graphical user interface.<br>
<br>
GetProductFinder does not conduct the actual product or listing search.
It only returns data about what you can search on. Use the data as input to
GetProductSearchResults to conduct the actual search for product information
or as input to GetSearchResults to conduct the search for listed items.
(Please note that this call may not return valid product finder IDs for some 
GetSearchResults use cases. See the Knowledge Base article referenced below for details.)<br>
<br>
To retrieve single-attribute search criteria (querying against a single attribute, like UPC),
use GetProductSearchPage instead (only applicable for catalog searches).<br>
<br>
See the eBay Web Services Guide for an overview of Pre-filled Item Information and details about
searching for catalog products and for information about searching for listed items.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetProductFinder::GetProductFinderRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");



my @gaProperties = ( [ 'AttributeSystemVersion', 'xs:string', '', '', '' ]
	, [ 'ProductFinderID', 'xs:int', '1', '', '' ]
                    );
push @gaProperties, @{eBay::API::XML::RequestDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::RequestDataType::getAttributesList()};

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
  my $self = shift;
  $self->{'AttributeSystemVersion'} = shift
}

=head2 getAttributeSystemVersion()

#    Returns: 'xs:string'

=cut

sub getAttributeSystemVersion {
  my $self = shift;
  return $self->{'AttributeSystemVersion'};
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
  my $self = shift;
  $self->{'ProductFinderID'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getProductFinderID()

#    Returns: reference to an array  
                      of 'xs:int'

=cut

sub getProductFinderID {
  my $self = shift;
  return $self->_getDataTypeArray('ProductFinderID');
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
