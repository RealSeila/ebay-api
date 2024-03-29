#!/usr/bin/perl

package eBay::API::XML::Call::GetProductSellingPages::GetProductSellingPagesResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetProductSellingPagesResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetProductSellingPages::GetProductSellingPagesResponseType

=head1 DESCRIPTION

Retrieves an XML string that describes how to present catalog product information
to a seller. Use this information to present users with the equivalent of the Item
Specifics portion of the eBay Title and Description pages and to validate user-
specified values for eBay attributes on the client before including them in an
AddItem call or related calls. Use the results in combination with
GetAttributesXSL to render the Item Specifics in a graphical user interface. See
the Developer's Guide for an overview of Pre-filled Item Information and details
about searching for catalog products.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetProductSellingPages::GetProductSellingPagesResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");



my @gaProperties = ( [ 'ProductSellingPagesData', 'xs:string', '', '', '' ]
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



=head2 setProductSellingPagesData()

A string containing a list of all the attributes that are applicable
to the products specified in the request, along with related meta-data.
The meta-data specifies the pre-filled values of each attribute, the
possible values of attributes that are not pre-filled, the logic for presenting
the attributes to a user, and rules for validating the user's selections.
<br><br>
For backward compatibility, this data is in
the same XML format that was used in the Legacy XML API so that you can
apply the same Item Specifics XSL stylesheet to it. That is, individual
elements are not described using the unified schema format.
<br><br>
The data is based on the GetAttributesCS response (AttributeData), with
additional information that is specific to catalog products.
Product and attribute information is nested within a set of Product tags.
The product-specific data is merged into the attribute data so that the same
XSL stylesheet used to render the results of GetAttributeCS can be used to render
catalog product data. See GetAttributesXSL.
<br><br>
See the Attribute Meta-Data Model section of the eBay Web Services guide
for information about each element in the ProductSellingPagesData string.
<br><br>
Because the content is returned as a string, the XML markup elements are escaped with
character entity references (e.g.,&amp;lt;eBay&amp;gt;&amp;lt;Attributes&amp;gt;...).
See the appendices in the eBay Web Services guide for general information about
string data types.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AttrModel
Title: The Attribute Meta-Data Model
, URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=DataTypes
Title: Data Types


#    Argument: 'xs:string'

=cut

sub setProductSellingPagesData {
  my $self = shift;
  $self->{'ProductSellingPagesData'} = shift
}

=head2 getProductSellingPagesData()

  Returned: Always
#    Returns: 'xs:string'

=cut

sub getProductSellingPagesData {
  my $self = shift;
  return $self->{'ProductSellingPagesData'};
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
