#!/usr/bin/perl

package eBay::API::XML::DataType::SearchDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SearchDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::SearchDetailsType

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::SearchDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'BuyItNowEnabled', 'xs:boolean', '', '', '' ]
	, [ 'Picture', 'xs:boolean', '', '', '' ]
	, [ 'RecentListing', 'xs:boolean', '', '', '' ]
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



=head2 setBuyItNowEnabled()

Indicates whether a listing uses the Buy It Now feature.
For GetProducts, only returned for listing types that support
Buy It Now (like Chinese auctions.)

#    Argument: 'xs:boolean'

=cut

sub setBuyItNowEnabled {
  my $self = shift;
  $self->{'BuyItNowEnabled'} = shift
}

=head2 isBuyItNowEnabled()

  Calls: GetSearchResults
  Returned: Conditionally
  Details: DetailLevel: ItemReturnAttributes, ItemReturnCategories, none, ReturnAll

  Calls: GetProducts
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isBuyItNowEnabled {
  my $self = shift;
  return $self->{'BuyItNowEnabled'};
}


=head2 setPicture()

Indicates whether a listing has an image associated with it.

#    Argument: 'xs:boolean'

=cut

sub setPicture {
  my $self = shift;
  $self->{'Picture'} = shift
}

=head2 isPicture()

  Calls: GetSearchResults
  Returned: Conditionally
  Details: DetailLevel: ItemReturnAttributes, ItemReturnCategories, none, ReturnAll

  Calls: GetProducts
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isPicture {
  my $self = shift;
  return $self->{'Picture'};
}


=head2 setRecentListing()

Indicates whether a listing is no more than one day old.

#    Argument: 'xs:boolean'

=cut

sub setRecentListing {
  my $self = shift;
  $self->{'RecentListing'} = shift
}

=head2 isRecentListing()

  Calls: GetSearchResults
  Returned: Conditionally
  Details: DetailLevel: ItemReturnAttributes, ItemReturnCategories, none, ReturnAll

  Calls: GetProducts
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isRecentListing {
  my $self = shift;
  return $self->{'RecentListing'};
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
