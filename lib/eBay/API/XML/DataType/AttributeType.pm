#!/usr/bin/perl

package eBay::API::XML::DataType::AttributeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AttributeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::AttributeType

=head1 DESCRIPTION

A salient aspect or feature of an item. On eBay.com, this information is used in the Item Specifics
section of a listing to describe an item
in a standard way so that buyers can find it more easily.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::AttributeType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::ValType;


my @gaProperties = ( [ 'Value', 'ns:ValType', '1'
	     ,'eBay::API::XML::DataType::ValType', '1' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( [ 'attributeID', 'xs:int', '', '', '' ]
	, [ 'attributeLabel', 'xs:string', '', '', '' ]
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



=head2 setValue()

A value the seller selected or entered for the attribute.
At least one value is required for each Attribute that you specify.
Some attributes can have multiple values.
See the eBay Web Services guide sections on
Item Specifics (Attributes) and Pre-filled Item Information (Catalogs)
for information about using GetAttributesCS to determine valid
attribute values.<br><br>
For eBay.com listings, use AttributeSetArray.AttributeSet.Attribute.Value.
For Half.com, use AttributeArray.Attribute.Value. That is, the parent elements
and usage for Half.com differs from
eBay's standard Item Specifics format (and there is no relationship to GetAttributesCS).
For Half.com, this does not use the same Attributes logic as eBay's Item Specifics.
For Half.com, AttributeArray.Attribute.Value is required when you use AddItem.
see the eBay Web Services Guide for valid values.
You can revise AttributeArray.Attribute.Value for Half.com listings.

  Calls: AddItem
         AddLiveAuctionItem
         GetItemRecommendations
         GetProducts
         VerifyAddItem
  RequiredInput: Conditionally

  Calls: RelistItem
         ReviseItem
         ReviseLiveAuctionItem
  RequiredInput: No

#    Argument: reference to an array  
                      of 'ns:ValType'

=cut

sub setValue {
  my $self = shift;
  $self->{'Value'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getValue()

  Calls: GetCategoryListings
         GetItemRecommendations
  Returned: Conditionally

  Calls: GetSearchResults
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnAttributes, ItemReturnCategories, ReturnAll
           GranularityLevel: Coarse


  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: ItemReturnAttributes, ReturnAll

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

#    Returns: reference to an array  
                      of 'ns:ValType'

=cut

sub getValue {
  my $self = shift;
  return $self->_getDataTypeArray('Value');
}




=head2 setAttributeID()

Constant value that identifies the attribute in a language-independent way.
Unique within the attribute set.
See the Developer's Guide topics on Item Specifics and Pre-filled Item Information
for information about determining valid attribute IDs.
Not applicable to Half.com.

  Calls: AddItem
         AddLiveAuctionItem
         GetItemRecommendations
         VerifyAddItem
  RequiredInput: Conditionally
  Context: AttributeSetArray

  Calls: RelistItem
         ReviseItem
         ReviseLiveAuctionItem
  RequiredInput: No
  Context: AttributeSetArray

#    Argument: 'xs:int'

=cut

sub setAttributeID {
  my $self = shift;
  $self->{'attributeID'} = shift
}

=head2 getAttributeID()

  Calls: GetCategoryListings
         GetItemRecommendations
  Returned: Conditionally

  Calls: GetSearchResults
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnAttributes, ItemReturnCategories, ReturnAll
           GranularityLevel: Coarse


  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: ItemReturnAttributes, ReturnAll

#    Returns: 'xs:int'

=cut

sub getAttributeID {
  my $self = shift;
  return $self->{'attributeID'};
}


=head2 setAttributeLabel()

Name of the attribute being specified. This is not part of
eBay's standard Item Specifics format (i.e., there is no
relationship to GetAttributesCS). For GetCategoryListings, this
returns the value "Condition" to identify the item condition
attribute. For GetOrders, this is always returned for Half.com
orders. (It is not applicable to orders on the eBay.com site.)
For Half.com, see the eBay Web Services Guide for valid input
values. For Half.com, this field is required when you use
AddItem. You can revise this value for Half.com listings.

  Calls: AddItem
         GetItemRecommendations
         VerifyAddItem
  RequiredInput: Conditionally
  Context: AttributeArray

  Calls: ReviseItem
  RequiredInput: No
  Context: AttributeArray

#    Argument: 'xs:string'

=cut

sub setAttributeLabel {
  my $self = shift;
  $self->{'attributeLabel'} = shift
}

=head2 getAttributeLabel()

  Calls: GetCategoryListings
  Returned: Conditionally

  Calls: GetOrders
  Returned: Always
  Details: DetailLevel: none

#    Returns: 'xs:string'

=cut

sub getAttributeLabel {
  my $self = shift;
  return $self->{'attributeLabel'};
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
