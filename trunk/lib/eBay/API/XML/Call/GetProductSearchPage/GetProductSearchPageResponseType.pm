#!/usr/bin/perl

package eBay::API::XML::Call::GetProductSearchPage::GetProductSearchPageResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetProductSearchPageResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetProductSearchPage::GetProductSearchPageResponseType

=head1 DESCRIPTION

For a category that is catalog-enabled, GetProductSearchPage retrieves the
attributes a seller can use to form a query when searching for Pre-filled Item
Information. See the Developer's Guide for an overview of Pre-filled Item
Information and details about searching for catalog products.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetProductSearchPage::GetProductSearchPageResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::ProductSearchPageType;


my @gaProperties = ( [ 'AttributeSystemVersion', 'xs:string', '', '', '' ]
	, [ 'ProductSearchPage', 'ns:ProductSearchPageType', '1'
	     ,'eBay::API::XML::DataType::ProductSearchPageType', '1' ]
                    );
push @gaProperties, @{eBay::API::XML::ResponseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::ResponseDataType::getAttributesList()};

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

Current version of the product search page data for the site.
This value changes each time changes are made to the search page data.
The current version value is not necessarily greater than the previous
value. Therefore, when comparing versions, only compare whether the
value has changed.

#    Argument: 'xs:string'

=cut

sub setAttributeSystemVersion {
  my $self = shift;
  $self->{'AttributeSystemVersion'} = shift
}

=head2 getAttributeSystemVersion()

  Returned: Always
  Details: DetailLevel: none, ReturnAll
#    Returns: 'xs:string'

=cut

sub getAttributeSystemVersion {
  my $self = shift;
  return $self->{'AttributeSystemVersion'};
}


=head2 setProductSearchPage()

A list of catalog search criteria and sort keys associated with a catalog-enabled category,
plus supplemental information to help the seller understand how to make selections.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AttrGPSrchP
Title: Retrieving Product Search Page Meta-Data

#    Argument: reference to an array  
                      of 'ns:ProductSearchPageType'

=cut

sub setProductSearchPage {
  my $self = shift;
  $self->{'ProductSearchPage'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getProductSearchPage()

  Returned: Always
  Details: DetailLevel: ReturnAll
#    Returns: reference to an array  
                      of 'ns:ProductSearchPageType'

=cut

sub getProductSearchPage {
  my $self = shift;
  return $self->_getDataTypeArray('ProductSearchPage');
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
