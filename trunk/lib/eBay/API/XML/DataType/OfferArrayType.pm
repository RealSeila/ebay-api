#!/usr/bin/perl

package eBay::API::XML::DataType::OfferArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. OfferArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::OfferArrayType

=head1 DESCRIPTION

Container for a list of offers. May contain zero, one, or multiple
OfferType objects, each of which represents one offer extended by
a user on a listing.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::OfferArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::OfferType;


my @gaProperties = ( [ 'Offer', 'ns:OfferType', '1'
	     ,'eBay::API::XML::DataType::OfferType', '1' ]
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



=head2 setOffer()

Contains the data for one offer. This includes: data for the user making the
offer, the amount of the offer, the quantity of items being bought from the
listing, the type of offer being made, and more.

#    Argument: reference to an array  
                      of 'ns:OfferType'

=cut

sub setOffer {
  my $self = shift;
  $self->{'Offer'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getOffer()

  Calls: GetAllBidders
         GetHighBidders
  Returned: Conditionally

#    Returns: reference to an array  
                      of 'ns:OfferType'

=cut

sub getOffer {
  my $self = shift;
  return $self->_getDataTypeArray('Offer');
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