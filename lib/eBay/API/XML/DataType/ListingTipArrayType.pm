#!/usr/bin/perl

package eBay::API::XML::DataType::ListingTipArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ListingTipArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ListingTipArrayType

=head1 DESCRIPTION

(out) Contains a list of tips on improving a listing's details, if any.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ListingTipArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::ListingTipType;


my @gaProperties = ( [ 'ListingTip', 'ns:ListingTipType', '1'
	     ,'eBay::API::XML::DataType::ListingTipType', '1' ]
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



=head2 setListingTip()

An individual tip on improving a listing's details.

#    Argument: reference to an array  
                      of 'ns:ListingTipType'

=cut

sub setListingTip {
  my $self = shift;
  $self->{'ListingTip'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getListingTip()

  Calls: GetItemRecommendations
  Returned: Conditionally

#    Returns: reference to an array  
                      of 'ns:ListingTipType'

=cut

sub getListingTip {
  my $self = shift;
  return $self->_getDataTypeArray('ListingTip');
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
