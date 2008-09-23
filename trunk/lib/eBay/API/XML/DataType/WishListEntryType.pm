#!/usr/bin/perl

package eBay::API::XML::DataType::WishListEntryType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. WishListEntryType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::WishListEntryType

=head1 DESCRIPTION

This type contains details about the product or item a user has added to a wish list.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::WishListEntryType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::ExpressProductType;
use eBay::API::XML::DataType::ItemType;


my @gaProperties = ( [ 'CreationDate', 'xs:dateTime', '', '', '' ]
	, [ 'Item', 'ns:ItemType', ''
	     ,'eBay::API::XML::DataType::ItemType', '1' ]
	, [ 'Notes', 'xs:string', '', '', '' ]
	, [ 'Product', 'ns:ExpressProductType', ''
	     ,'eBay::API::XML::DataType::ExpressProductType', '1' ]
	, [ 'QuantityReceived', 'xs:int', '', '', '' ]
	, [ 'QuantityWanted', 'xs:int', '', '', '' ]
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



=head2 setCreationDate()

Date the item or product was added to the wish list.

#    Argument: 'xs:dateTime'

=cut

sub setCreationDate {
  my $self = shift;
  $self->{'CreationDate'} = shift
}

=head2 getCreationDate()

#    Returns: 'xs:dateTime'

=cut

sub getCreationDate {
  my $self = shift;
  return $self->{'CreationDate'};
}


=head2 setItem()

Item details, returned if the wish list entry is an item, as opposed to a product.

#    Argument: 'ns:ItemType'

=cut

sub setItem {
  my $self = shift;
  $self->{'Item'} = shift
}

=head2 getItem()

#    Returns: 'ns:ItemType'

=cut

sub getItem {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Item'
		,'eBay::API::XML::DataType::ItemType');
}


=head2 setNotes()

Notes the user has entered about the product or item, only returned
if notes exist.

#    Argument: 'xs:string'

=cut

sub setNotes {
  my $self = shift;
  $self->{'Notes'} = shift
}

=head2 getNotes()

#    Returns: 'xs:string'

=cut

sub getNotes {
  my $self = shift;
  return $self->{'Notes'};
}


=head2 setProduct()

Product details, returned if the wish list entry is a product, as opposed to an item.

#    Argument: 'ns:ExpressProductType'

=cut

sub setProduct {
  my $self = shift;
  $self->{'Product'} = shift
}

=head2 getProduct()

#    Returns: 'ns:ExpressProductType'

=cut

sub getProduct {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Product'
		,'eBay::API::XML::DataType::ExpressProductType');
}


=head2 setQuantityReceived()

Quantity of the item or product already received by the user.

#    Argument: 'xs:int'

=cut

sub setQuantityReceived {
  my $self = shift;
  $self->{'QuantityReceived'} = shift
}

=head2 getQuantityReceived()

#    Returns: 'xs:int'

=cut

sub getQuantityReceived {
  my $self = shift;
  return $self->{'QuantityReceived'};
}


=head2 setQuantityWanted()

User-specified desired quantity of the item or product.

#    Argument: 'xs:int'

=cut

sub setQuantityWanted {
  my $self = shift;
  $self->{'QuantityWanted'} = shift
}

=head2 getQuantityWanted()

#    Returns: 'xs:int'

=cut

sub getQuantityWanted {
  my $self = shift;
  return $self->{'QuantityWanted'};
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
