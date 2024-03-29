#!/usr/bin/perl

package eBay::API::XML::DataType::ExternalProductIDType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ExternalProductIDType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ExternalProductIDType

=head1 DESCRIPTION

Contains an ISBN value, EAN value, UPC value, ticket keywords, or eBay
catalog product ID, plus other meta-data. For event tickets, this type
can contain a set of keywords that uniquely identify the product. Only
applicable to certain categories that support Pre-filled Item
Information.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ExternalProductIDType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::ExternalProductCodeType;


my @gaProperties = ( [ 'AlternateValue', 'xs:string', '1', '', '' ]
	, [ 'ReturnSearchResultOnDuplicates', 'xs:boolean', '', '', '' ]
	, [ 'Type', 'ns:ExternalProductCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::ExternalProductCodeType', '' ]
	, [ 'Value', 'xs:string', '', '', '' ]
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



=head2 setAlternateValue()

An industry-standard value that provides an alternate identification for
the product, if any. Currently, this only returns an alternate ISBN
value. If the catalog defines both an ISBN-13 and ISBN-10,
then the ISBN-13 is returned in Value and the ISBN-10 is returned in
AlternateValue. (That is, the ISBN-13 is considered to be the preferred
identifier.) If the catalog only defines one ISBN, it is returned in
Value (and AlternateValue is not returned). Please note that some
catalogs return ISBN values that are not 10 or 13 characters,
and some values contain non-alphanumeric symbols (e.g., $).

MaxLength: 4000

#    Argument: reference to an array  
                      of 'xs:string'

=cut

sub setAlternateValue {
  my $self = shift;
  $self->{'AlternateValue'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getAlternateValue()

  Calls: GetProducts
         GetSellerPayments
  Returned: Conditionally

#    Returns: reference to an array  
                      of 'xs:string'

=cut

sub getAlternateValue {
  my $self = shift;
  return $self->_getDataTypeArray('AlternateValue');
}


=head2 setReturnSearchResultOnDuplicates()

Applicable for listing use cases only (not buy-side searching).
Indicates what eBay should do if more than one product matches
the value passed in Value. Only takes effect when more than one
match is found. If true, the response should include an error
and all matching product IDs. If false, the response should include
an error but should not return the matching product IDs.
This field is also applicable when listing Half.com items.

  Calls: AddItem
         GetItemRecommendations
         VerifyAddItem
  RequiredInput: No
  Context: Item.ExternalProductID

#    Argument: 'xs:boolean'

=cut

sub setReturnSearchResultOnDuplicates {
  my $self = shift;
  $self->{'ReturnSearchResultOnDuplicates'} = shift
}

=head2 isReturnSearchResultOnDuplicates()

#    Returns: 'xs:boolean'

=cut

sub isReturnSearchResultOnDuplicates {
  my $self = shift;
  return $self->{'ReturnSearchResultOnDuplicates'};
}


=head2 setType()

The kind of identifier being used. The choices are listed
For requests, required if Value is specified.
For Half.com listing use cases, only ISBN, UPC, and EAN are supported.<br>
<br>
GetSearchResultsExpress returns this value in ProductArray.Product.ExternalProductID.Type.
To pass an external product ID in the request, use ExternalProductIDType and ExternalProductIDValue instead. <br>
<br>
GetProducts supports ISBN, UPC, and EAN.

  Calls: AddItem
         GetItemRecommendations
         VerifyAddItem
  RequiredInput: Conditionally
  AllValuesExcept: MPN
  Context: Item.ExternalProductID

  Calls: GetProducts
  RequiredInput: Conditionally
  Returned: Conditionally
  OnlyTheseValues: ISBN, UPC, EAN

  Calls: GetSearchResults
  RequiredInput: Conditionally
  OnlyTheseValues: ISBN, UPC, EAN

#    Argument: 'ns:ExternalProductCodeType'

=cut

sub setType {
  my $self = shift;
  $self->{'Type'} = shift
}

=head2 getType()

  Calls: GetProducts
  RequiredInput: Conditionally
  Returned: Conditionally
  OnlyTheseValues: ISBN, UPC, EAN

  Calls: GetSellerPayments
  Returned: Conditionally
  OnlyTheseValues: ISBN, UPC, EAN

#    Returns: 'ns:ExternalProductCodeType'

=cut

sub getType {
  my $self = shift;
  return $self->{'Type'};
}


=head2 setValue()

An industry-standard value that uniquely identifies the product. The
valid values are dictated by the Type property.
Required if Type is specified.
Max length 13 for ISBN (as of February 2007), 13 for EAN,
12 for UPC, and 4000 for ProductID. No max length for ticket keywords
(but passing too much data can result in "no match found"
errors).<br>
<br>
<b>For AddItem and related calls:</b>
If the primary and secondary categories are both catalog-enabled,
the value must apply to the primary category.
Event tickets listings support a set of keywords
that uniquely identify the listing. The ticket keywords specify the
event name (the title shown on the ticket), venue name, and event
date and time. See the eBay Web Services guide for more information
and validation rules. For convenience, you can pass an eBay product ID
as input (not limited to media categories).<br>
<br>
Required for Half.com listing use cases, and this can only be an
ISBN, UPC, or EAN value.<br>
<br>
<b>For GetSearchResults and GetProducts input only:</b>
Only ISBN, EAN, and UPC values are currently supported as
input.<br>
<br>
<b>For GetSearchResultsExpress input only:</b>
To pass an external product ID in the request, use
ExternalProductIDValue and ExternalProductIDType instead.<br>
<br>
<b>For GetSearchResultsExpress, GetProducts, and GetSellerPayments
output only:</b> Also see AlternateValue, which is
returned if the catalog defines multiple ISBN values (e.g., one for
ISBN-13 and one for ISBN-10). Please note that some catalogs return ISBN
values that are not 10 or 13 characters, and some values contain
non-alphanumeric symbols (e.g., $).

MaxLength: See description

  Calls: AddItem
         GetItemRecommendations
         VerifyAddItem
  RequiredInput: Conditionally
  Context: Item.ExternalProductID

  Calls: GetProducts
  RequiredInput: Conditionally
  Returned: Conditionally

  Calls: GetSearchResults
  RequiredInput: Conditionally

#    Argument: 'xs:string'

=cut

sub setValue {
  my $self = shift;
  $self->{'Value'} = shift
}

=head2 getValue()

  Calls: GetProducts
  RequiredInput: Conditionally
  Returned: Conditionally

  Calls: GetSellerPayments
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getValue {
  my $self = shift;
  return $self->{'Value'};
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
