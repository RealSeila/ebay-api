#!/usr/bin/perl

package eBay::API::XML::DataType::SearchRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SearchRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::SearchRequestType

=head1 DESCRIPTION

Specifies a query consisting of attributes. Only attributes that are returned
from GetProductFinder can be used. See the Developer's Guide for more information.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::SearchRequestType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::SearchAttributesType;


my @gaProperties = ( [ 'ProductFinderID', 'xs:int', '', '', '' ]
	, [ 'SearchAttributes', 'ns:SearchAttributesType', '1'
	     ,'eBay::API::XML::DataType::SearchAttributesType', '1' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::BaseDataType::getAttributesList()};

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



=head2 setProductFinderID()

Numeric identifier for a buy-side product finder. A product finder defines how to
search for Item Specifics in listings (e.g., how to search against a particular shoe size).
See the eBay Web Services guide for details about product finders.
You need to specify a product finder ID when you are searching against a listing's
Item Specifics (i.e., when you use SearchAttributes).
A few categories, such as US Event Tickets and US eBay Motors, can also return a subset of Item Specifics
(e.g., the event venue, section, and row for a ticket listing) in the search results.
To retrieve this data, you must specify the product finder ID, and also specify a detail level of
ItemReturnAttributes or ReturnAll. <br>
<br>
Use GetProductFinder to determine valid product finder IDs. If you have trouble with
GetProductFinder, use the pfid parameter from the URL of the 
Product Finder search page on the site you're interested in. 
See the Knowledge Base article referenced below for more details.

SeeLink: URL: https://ebay.custhelp.com/cgi-bin/ebay.cfg/php/enduser/std_adp.php?p_faqid=560
Title: Knowledge Base: ProductFinderID for Buy-Side Searches

  Calls: GetSearchResults
  RequiredInput: Conditionally

#    Argument: 'xs:int'

=cut

sub setProductFinderID {
  my $self = shift;
  $self->{'ProductFinderID'} = shift
}

=head2 getProductFinderID()

#    Returns: 'xs:int'

=cut

sub getProductFinderID {
  my $self = shift;
  return $self->{'ProductFinderID'};
}


=head2 setSearchAttributes()

A query consisting of a set of attributes (search criteria). If the query
includes multiple attributes, the search engine will apply "AND" logic to the
query. Use GetProductFinder to determine the list of valid attributes
and how many are permitted for the specified characteristic set.
If specified, ProductFinderID must also be specified.

  Calls: GetSearchResults
  RequiredInput: No

#    Argument: reference to an array  
                      of 'ns:SearchAttributesType'

=cut

sub setSearchAttributes {
  my $self = shift;
  $self->{'SearchAttributes'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getSearchAttributes()

#    Returns: reference to an array  
                      of 'ns:SearchAttributesType'

=cut

sub getSearchAttributes {
  my $self = shift;
  return $self->_getDataTypeArray('SearchAttributes');
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
