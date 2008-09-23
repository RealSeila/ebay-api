#!/usr/bin/perl

package eBay::API::XML::Call::ReviseLiveAuctionItem::ReviseLiveAuctionItemResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ReviseLiveAuctionItemResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::ReviseLiveAuctionItem::ReviseLiveAuctionItemResponseType

=head1 DESCRIPTION

Returns the item ID and the estimated fees for the revised listing.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::ReviseLiveAuctionItem::ReviseLiveAuctionItemResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::FeesType;
use eBay::API::XML::DataType::ItemIDType;


my @gaProperties = ( [ 'Category2ID', 'xs:string', '', '', '' ]
	, [ 'CategoryID', 'xs:string', '', '', '' ]
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

ID of the secondary category in which the item was listed.
Only returned if you set Item.CategoryMappingAllowed to true in the request
and the ID passed in Item.SecondaryCategory was mapped to a new ID by eBay.
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

ID of the primary category in which the item was listed.
Only returned if you set Item.CategoryMappingAllowed to true in the request
and the ID passed in Item.PrimaryCategory was mapped to a new ID by eBay.
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


=head2 setFees()

Child elements contain the estimated listing fees for the revised item
listing. The fees do not include the Final Value Fee (FVF), which cannot
be determined until an item is sold. Revising an item does not itself
incur a fee. However, certain item properties are fee-based and result
in the return of fees in the call's response.

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

Item ID that uniquely identifies the item listing that was revised.
Provided for confirmation purposes. The value returned should be the
same as the item ID specified in the ItemID property of the Item object
specified as input for the call.

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
