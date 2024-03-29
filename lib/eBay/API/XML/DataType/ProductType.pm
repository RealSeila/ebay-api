#!/usr/bin/perl

package eBay::API::XML::DataType::ProductType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ProductType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ProductType

=head1 DESCRIPTION

A prototype description of a well-known type of item, such as a popular book.
Applicable when working with eBay's Pre-filled Item Information feature.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ProductType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AmountType;
use eBay::API::XML::DataType::CharacteristicsSetType;


my @gaProperties = ( [ 'CharacteristicsSet', 'ns:CharacteristicsSetType', ''
	     ,'eBay::API::XML::DataType::CharacteristicsSetType', '1' ]
	, [ 'DetailsURL', 'xs:anyURI', '', '', '' ]
	, [ 'MaxPrice', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'MinPrice', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'NumItems', 'xs:int', '', '', '' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( [ 'productID', 'xs:string', '', '', '' ]
	, [ 'stockPhotoURL', 'xs:anyURI', '', '', '' ]
	, [ 'title', 'xs:string', '', '', '' ]
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



=head2 setCharacteristicsSet()

A set of characteristics that describe the product in a standardized way.
In responses, only the attributes and values that applicable for the
specified product are returned.

  Calls: GetProductSellingPages
  RequiredInput: Yes

#    Argument: 'ns:CharacteristicsSetType'

=cut

sub setCharacteristicsSet {
  my $self = shift;
  $self->{'CharacteristicsSet'} = shift
}

=head2 getCharacteristicsSet()

  Calls: GetProductFamilyMembers
         GetProductSearchResults
  Returned: Always

#    Returns: 'ns:CharacteristicsSetType'

=cut

sub getCharacteristicsSet {
  my $self = shift;
  return $self->_getDataTypeInstance( 'CharacteristicsSet'
		,'eBay::API::XML::DataType::CharacteristicsSetType');
}


=head2 setDetailsURL()

Fully qualified URL for optional information about the product,
such as a movie's description or film credits. This information
is hosted through the eBay site and cannot be edited.
Applications can include this URL as a link in product search results
so that end users can view additional descriptive details about the product.

#    Argument: 'xs:anyURI'

=cut

sub setDetailsURL {
  my $self = shift;
  $self->{'DetailsURL'} = shift
}

=head2 getDetailsURL()

  Calls: GetProductFamilyMembers
  Returned: Always
  Context: FamilyMembers

  Calls: GetProductSearchResults
  Returned: Always

#    Returns: 'xs:anyURI'

=cut

sub getDetailsURL {
  my $self = shift;
  return $self->{'DetailsURL'};
}


=head2 setMaxPrice()

Highest current price of active and ended listings on the specified eBay site that were
pre-filled based on this product. The value is in the specified site's currency.
Round numbers (such as 15.0) may only show one zero after the decimal (as with any double in the schema).

#    Argument: 'ns:AmountType'

=cut

sub setMaxPrice {
  my $self = shift;
  $self->{'MaxPrice'} = shift
}

=head2 getMaxPrice()

  Calls: GetProductSearchResults
  Returned: Always
  Max: 
  Min: 0.0
  Context: FamilyMembers

#    Returns: 'ns:AmountType'

=cut

sub getMaxPrice {
  my $self = shift;
  return $self->_getDataTypeInstance( 'MaxPrice'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setMinPrice()

Lowest current price of active and ended listings on the specified eBay site that were
pre-filled based on this product. The value is in the specified site's currency.

#    Argument: 'ns:AmountType'

=cut

sub setMinPrice {
  my $self = shift;
  $self->{'MinPrice'} = shift
}

=head2 getMinPrice()

  Calls: GetProductSearchResults
  Returned: Always
  Max: 
  Min: 0.0
  Context: FamilyMembers

#    Returns: 'ns:AmountType'

=cut

sub getMinPrice {
  my $self = shift;
  return $self->_getDataTypeInstance( 'MinPrice'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setNumItems()

Total number of active listings on the specified eBay site
that were pre-filled based on this product.

#    Argument: 'xs:int'

=cut

sub setNumItems {
  my $self = shift;
  $self->{'NumItems'} = shift
}

=head2 getNumItems()

  Calls: GetProductSearchResults
  Returned: Always
  Max: 
  Min: 0
  Context: FamilyMembers

#    Returns: 'xs:int'

=cut

sub getNumItems {
  my $self = shift;
  return $self->{'NumItems'};
}




=head2 setProductID()

For GetProductFamilyMembers, GetProductSearchResults, and GetProductSellingPages,
a unique identifier for the product. The ID is defined in an eBay catalog.
Product IDs may change over time. Therefore, use the catalog search calls
(GetProductSearchResults and GetProductFamilyMembers)
to update any product IDs that you store locally.

MaxLength: 4000

  Calls: GetProductSellingPages
  RequiredInput: Yes

#    Argument: 'xs:string'

=cut

sub setProductID {
  my $self = shift;
  $self->{'productID'} = shift
}

=head2 getProductID()

  Calls: GetProductFamilyMembers
         GetProductSearchResults
  Returned: Always

#    Returns: 'xs:string'

=cut

sub getProductID {
  my $self = shift;
  return $self->{'productID'};
}


=head2 setStockPhotoURL()

Fully qualified URL for a standard image that is associated with the product, if available.
Allows the user to preview the image from your application.
A user can choose to include the stock photo in a listing.

#    Argument: 'xs:anyURI'

=cut

sub setStockPhotoURL {
  my $self = shift;
  $self->{'stockPhotoURL'} = shift
}

=head2 getStockPhotoURL()

  Calls: GetProductFamilyMembers
         GetProductSearchResults
         GetProductSearchPage
  Returned: Conditionally

#    Returns: 'xs:anyURI'

=cut

sub getStockPhotoURL {
  my $self = shift;
  return $self->{'stockPhotoURL'};
}


=head2 setTitle()

The name of the product, as defined within the catalog. Not necessarily the
same as the "Title" attribute in the characteristics set meta-data, if any.
On the eBay site, this title serves as the basis for the suggested item title
(truncated to the max length permitted for Title in item-listing calls).
Applications can use this value to supply a suggested listing title to users.

#    Argument: 'xs:string'

=cut

sub setTitle {
  my $self = shift;
  $self->{'title'} = shift
}

=head2 getTitle()

  Calls: GetProductFamilyMembers
  Returned: Always
  Context: FamilyMembers

  Calls: GetProductSearchResults
  Returned: Always

#    Returns: 'xs:string'

=cut

sub getTitle {
  my $self = shift;
  return $self->{'title'};
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
