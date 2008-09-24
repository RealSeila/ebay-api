#!/usr/bin/perl

package eBay::API::XML::Call::VerifyAddItem::VerifyAddItemResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. VerifyAddItemResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::VerifyAddItem::VerifyAddItemResponseType

=head1 DESCRIPTION

Returns the estimated fees that would be applicable for a new listing
(were the item actually listed to eBay with AddItem).



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::VerifyAddItem::VerifyAddItemResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::ExpressItemRequirementsType;
use eBay::API::XML::DataType::FeesType;
use eBay::API::XML::DataType::ItemIDType;


my @gaProperties = ( [ 'Category2ID', 'xs:string', '', '', '' ]
	, [ 'CategoryID', 'xs:string', '', '', '' ]
	, [ 'ExpressItemRequirements', 'ns:ExpressItemRequirementsType', ''
	     ,'eBay::API::XML::DataType::ExpressItemRequirementsType', '1' ]
	, [ 'ExpressListing', 'xs:boolean', '', '', '' ]
	, [ 'Fees', 'ns:FeesType', ''
	     ,'eBay::API::XML::DataType::FeesType', '1' ]
	, [ 'ItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
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



=head2 setCategory2ID()

ID of the secondary category in which the item would be listed.
Only returned if you set Item.CategoryMappingAllowed to true in the request
and the ID you passed in SecondaryCategory was mapped to a new ID by eBay.
If the secondary category has not changed or it has expired with no replacement,
Category2ID does not return a value.

MaxLength: 10

#    Argument: 'xs:string'

=cut

sub setCategory2ID {
  my $self = shift;
  $self->{'Category2ID'} = shift
}

=head2 getCategory2ID()

  Returned: Conditionally
#    Returns: 'xs:string'

=cut

sub getCategory2ID {
  my $self = shift;
  return $self->{'Category2ID'};
}


=head2 setCategoryID()

ID of the primary category in which the item would be listed.
Only returned if you set Item.CategoryMappingAllowed to true in the request
and the ID you passed in PrimaryCategory was mapped to a new ID by eBay.
If the primary category has not changed or it has expired with no replacement,
CategoryID does not return a value.

MaxLength: 10

#    Argument: 'xs:string'

=cut

sub setCategoryID {
  my $self = shift;
  $self->{'CategoryID'} = shift
}

=head2 getCategoryID()

  Returned: Conditionally
#    Returns: 'xs:string'

=cut

sub getCategoryID {
  my $self = shift;
  return $self->{'CategoryID'};
}


=head2 setExpressItemRequirements()

Contains details about why an item does or doesn't
qualify as an eBay Express listing. Only returned when
IncludeExpressRequirements is true the request.<br>
<br>
The item requirements are assessed in this order:<br>
- SellerExpressEligible<br>
- ExpressOptOut<br>
- ExpressApproved<br>
- All other settings

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=ExpressListingCriteria
Title: Listing Criteria for eBay Express
DeprecationDetails: NoOp
DeprecationVersion: 579
UseInstead: 
#    Argument: 'ns:ExpressItemRequirementsType'

=cut

sub setExpressItemRequirements {
  my $self = shift;
  $self->{'ExpressItemRequirements'} = shift
}

=head2 getExpressItemRequirements()

  Returned: Conditionally
#    Returns: 'ns:ExpressItemRequirementsType'

=cut

sub getExpressItemRequirements {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ExpressItemRequirements'
		,'eBay::API::XML::DataType::ExpressItemRequirementsType');
}


=head2 setExpressListing()

Indicates whether the item would be listed on eBay Express.
See ExpressItemRequirements for hints about why this
value is true or false for a given item.

DeprecationDetails: NoOp
DeprecationVersion: 579
UseInstead: 
#    Argument: 'xs:boolean'

=cut

sub setExpressListing {
  my $self = shift;
  $self->{'ExpressListing'} = shift
}

=head2 isExpressListing()

  Returned: Conditionally
#    Returns: 'xs:boolean'

=cut

sub isExpressListing {
  my $self = shift;
  return $self->{'ExpressListing'};
}


=head2 setFees()

Child elements contain the estimated listing fees for the new item listing.
The fees do not include the Final Value Fee (FVF), which cannot be determined
until an item is sold.

#    Argument: 'ns:FeesType'

=cut

sub setFees {
  my $self = shift;
  $self->{'Fees'} = shift
}

=head2 getFees()

  Returned: Always
#    Returns: 'ns:FeesType'

=cut

sub getFees {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Fees'
		,'eBay::API::XML::DataType::FeesType');
}


=head2 setItemID()

Represents the item ID for the new listing. VerifyAddItem does not
actually list an item, so 0 is returned instead of a normal item ID.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

#    Argument: 'ns:ItemIDType'

=cut

sub setItemID {
  my $self = shift;
  $self->{'ItemID'} = shift
}

=head2 getItemID()

  Returned: Always
#    Returns: 'ns:ItemIDType'

=cut

sub getItemID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemID'
		,'eBay::API::XML::DataType::ItemIDType');
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
