#!/usr/bin/perl

package eBay::API::XML::DataType::ItemRatingDetailArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ItemRatingDetailArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ItemRatingDetailArrayType

=head1 DESCRIPTION

Container for a set of detailed seller ratings about a transaction.
If a seller has detailed ratings, they are displayed
in the Feedback Profile of the seller.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ItemRatingDetailArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::ItemRatingDetailsType;


my @gaProperties = ( [ 'ItemRatingDetails', 'ns:ItemRatingDetailsType', '1'
	     ,'eBay::API::XML::DataType::ItemRatingDetailsType', '1' ]
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



=head2 setItemRatingDetails()

Applicable to sites that support the Detailed Seller Ratings feature.
The ItemRatingDetails container is for 
detailed seller ratings about a transaction.
When buyers leave an overall Feedback rating (positive, neutral, or negative) for a seller, they also can leave ratings in four areas: item as described, communication, shipping time, and charges for shipping and handling. Users retrieve detailed ratings as averages of the ratings left by buyers.

  Calls: LeaveFeedback
  RequiredInput: No

#    Argument: reference to an array  
                      of 'ns:ItemRatingDetailsType'

=cut

sub setItemRatingDetails {
  my $self = shift;
  $self->{'ItemRatingDetails'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getItemRatingDetails()

#    Returns: reference to an array  
                      of 'ns:ItemRatingDetailsType'

=cut

sub getItemRatingDetails {
  my $self = shift;
  return $self->_getDataTypeArray('ItemRatingDetails');
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
