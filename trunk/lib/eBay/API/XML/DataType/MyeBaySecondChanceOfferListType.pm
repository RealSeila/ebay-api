#!/usr/bin/perl

package eBay::API::XML::DataType::MyeBaySecondChanceOfferListType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. MyeBaySecondChanceOfferListType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::MyeBaySecondChanceOfferListType

=head1 DESCRIPTION

A list of possible My eBay Second Chance Offers.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::MyeBaySecondChanceOfferListType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::ItemType;


my @gaProperties = ( [ 'SecondChanceOffer', 'ns:ItemType', '1'
	     ,'eBay::API::XML::DataType::ItemType', '1' ]
	, [ 'TotalAvailable', 'xs:int', '', '', '' ]
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



=head2 setSecondChanceOffer()

A Second Chance Offer item.

#    Argument: reference to an array  
                      of 'ns:ItemType'

=cut

sub setSecondChanceOffer {
  my $self = shift;
  $self->{'SecondChanceOffer'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getSecondChanceOffer()

#    Returns: reference to an array  
                      of 'ns:ItemType'

=cut

sub getSecondChanceOffer {
  my $self = shift;
  return $self->_getDataTypeArray('SecondChanceOffer');
}


=head2 setTotalAvailable()

The total number of My eBay Second Chance Offers available.

#    Argument: 'xs:int'

=cut

sub setTotalAvailable {
  my $self = shift;
  $self->{'TotalAvailable'} = shift
}

=head2 getTotalAvailable()

#    Returns: 'xs:int'

=cut

sub getTotalAvailable {
  my $self = shift;
  return $self->{'TotalAvailable'};
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
