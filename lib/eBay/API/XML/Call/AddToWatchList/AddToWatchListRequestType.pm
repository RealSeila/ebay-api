#!/usr/bin/perl

package eBay::API::XML::Call::AddToWatchList::AddToWatchListRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AddToWatchListRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::AddToWatchList::AddToWatchListRequestType

=head1 DESCRIPTION

Adds one or more items to the user's My eBay watch list.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::AddToWatchList::AddToWatchListRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::ItemIDType;


my @gaProperties = ( [ 'ItemID', 'ns:ItemIDType', '1'
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
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



=head2 setItemID()

The ItemID of the item that is to be added to the watch list. The item
must be a currently active item, and the total number of items in the
watchlist (after the items in the request have been added) cannot exceed
the maximum allowed number of watch list items. One or more ItemIDs can be
specified, each in its own ItemID container. A separate error node will be
returned for each item that fails.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: Yes
#    Argument: reference to an array  
                      of 'ns:ItemIDType'

=cut

sub setItemID {
  my $self = shift;
  $self->{'ItemID'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getItemID()

#    Returns: reference to an array  
                      of 'ns:ItemIDType'

=cut

sub getItemID {
  my $self = shift;
  return $self->_getDataTypeArray('ItemID');
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
