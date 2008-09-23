#!/usr/bin/perl

package eBay::API::XML::DataType::SellerRatingSummaryArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SellerRatingSummaryArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::SellerRatingSummaryArrayType

=head1 DESCRIPTION

Contains DSR feedback metrics for different periods.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::SellerRatingSummaryArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AverageRatingSummaryType;


my @gaProperties = ( [ 'AverageRatingSummary', 'ns:AverageRatingSummaryType', '1'
	     ,'eBay::API::XML::DataType::AverageRatingSummaryType', '1' ]
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



=head2 setAverageRatingSummary()

Average detailed seller ratings for specific periods.

#    Argument: reference to an array  
                      of 'ns:AverageRatingSummaryType'

=cut

sub setAverageRatingSummary {
  my $self = shift;
  $self->{'AverageRatingSummary'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getAverageRatingSummary()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: reference to an array  
                      of 'ns:AverageRatingSummaryType'

=cut

sub getAverageRatingSummary {
  my $self = shift;
  return $self->_getDataTypeArray('AverageRatingSummary');
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
