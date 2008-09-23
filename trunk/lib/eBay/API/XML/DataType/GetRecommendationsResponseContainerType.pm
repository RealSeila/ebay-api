#!/usr/bin/perl

package eBay::API::XML::DataType::GetRecommendationsResponseContainerType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetRecommendationsResponseContainerType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::GetRecommendationsResponseContainerType

=head1 DESCRIPTION

Returns recommended changes or opportunities for improvement
related to listing data that was passed in a GetItemRecommendations request.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::GetRecommendationsResponseContainerType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AttributeRecommendationsType;
use eBay::API::XML::DataType::ItemSpecificsRecommendationsType;
use eBay::API::XML::DataType::ListingAnalyzerRecommendationsType;
use eBay::API::XML::DataType::PricingRecommendationsType;
use eBay::API::XML::DataType::ProductRecommendationsType;
use eBay::API::XML::DataType::SIFFTASRecommendationsType;


my @gaProperties = ( [ 'AttributeRecommendations', 'ns:AttributeRecommendationsType', ''
	     ,'eBay::API::XML::DataType::AttributeRecommendationsType', '1' ]
	, [ 'CorrelationID', 'xs:string', '', '', '' ]
	, [ 'ItemSpecificsRecommendations', 'ns:ItemSpecificsRecommendationsType', ''
	     ,'eBay::API::XML::DataType::ItemSpecificsRecommendationsType', '1' ]
	, [ 'ListingAnalyzerRecommendations', 'ns:ListingAnalyzerRecommendationsType', ''
	     ,'eBay::API::XML::DataType::ListingAnalyzerRecommendationsType', '1' ]
	, [ 'PricingRecommendations', 'ns:PricingRecommendationsType', ''
	     ,'eBay::API::XML::DataType::PricingRecommendationsType', '1' ]
	, [ 'ProductRecommendations', 'ns:ProductRecommendationsType', ''
	     ,'eBay::API::XML::DataType::ProductRecommendationsType', '1' ]
	, [ 'SIFFTASRecommendations', 'ns:SIFFTASRecommendationsType', ''
	     ,'eBay::API::XML::DataType::SIFFTASRecommendationsType', '1' ]
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



=head2 setAttributeRecommendations()

Contains attribute suggestions returned from the Suggested Attributes engine,
if this engine was specified in the request.
The results include suggested attributes and values based on the primary category
and a string you specify in the Query field. Suggestions may only be returned when the
Suggested Attributes engine is specified alone. If you request recommendations by using
multiple engines, suggested attribute data might not be returned. If attributes are returned
with multiple values, the values are returned in order of rank (i.e., the value that best meets
eBay's recommendation criteria is returned first).

#    Argument: 'ns:AttributeRecommendationsType'

=cut

sub setAttributeRecommendations {
  my $self = shift;
  $self->{'AttributeRecommendations'} = shift
}

=head2 getAttributeRecommendations()

  Calls: GetItemRecommendations
  Returned: Conditionally

#    Returns: 'ns:AttributeRecommendationsType'

=cut

sub getAttributeRecommendations {
  my $self = shift;
  return $self->_getDataTypeInstance( 'AttributeRecommendations'
		,'eBay::API::XML::DataType::AttributeRecommendationsType');
}


=head2 setCorrelationID()

Unique key to distinguish between recommendations for each item.
Matches a correlation ID you defined in the request, if any.

#    Argument: 'xs:string'

=cut

sub setCorrelationID {
  my $self = shift;
  $self->{'CorrelationID'} = shift
}

=head2 getCorrelationID()

  Calls: GetItemRecommendations
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getCorrelationID {
  my $self = shift;
  return $self->{'CorrelationID'};
}


=head2 setItemSpecificsRecommendations()

Contains custom Item Specifics suggestions returned from the custom
Item Specifics recommendation engine, An Item Specific consists of
a name/value pair, and it may be  returned as complete (with name and
one or more values) or partial (name only).

#    Argument: 'ns:ItemSpecificsRecommendationsType'

=cut

sub setItemSpecificsRecommendations {
  my $self = shift;
  $self->{'ItemSpecificsRecommendations'} = shift
}

=head2 getItemSpecificsRecommendations()

  Calls: GetItemRecommendations
  Returned: Conditionally
  TagStatus: ComingSoon

#    Returns: 'ns:ItemSpecificsRecommendationsType'

=cut

sub getItemSpecificsRecommendations {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemSpecificsRecommendations'
		,'eBay::API::XML::DataType::ItemSpecificsRecommendationsType');
}


=head2 setListingAnalyzerRecommendations()

Contains tips returned from the Listing Analyzer recommendation engine,
if this engine was specified in the request (or if no engine was specified).

#    Argument: 'ns:ListingAnalyzerRecommendationsType'

=cut

sub setListingAnalyzerRecommendations {
  my $self = shift;
  $self->{'ListingAnalyzerRecommendations'} = shift
}

=head2 getListingAnalyzerRecommendations()

  Calls: GetItemRecommendations
  Returned: Conditionally

#    Returns: 'ns:ListingAnalyzerRecommendationsType'

=cut

sub getListingAnalyzerRecommendations {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ListingAnalyzerRecommendations'
		,'eBay::API::XML::DataType::ListingAnalyzerRecommendationsType');
}


=head2 setPricingRecommendations()

Contains pricing data returned from the Product Pricing engine,
if this engine was specified in the request (or if no engine was specified).

#    Argument: 'ns:PricingRecommendationsType'

=cut

sub setPricingRecommendations {
  my $self = shift;
  $self->{'PricingRecommendations'} = shift
}

=head2 getPricingRecommendations()

  Calls: GetItemRecommendations
  Returned: Conditionally

#    Returns: 'ns:PricingRecommendationsType'

=cut

sub getPricingRecommendations {
  my $self = shift;
  return $self->_getDataTypeInstance( 'PricingRecommendations'
		,'eBay::API::XML::DataType::PricingRecommendationsType');
}


=head2 setProductRecommendations()

Contains zero or more product titles and IDs returned from the Suggested Attributes engine,
if this engine was specified in the request (or if no engine was specified).
If applicable, use one of the suggested product IDs to list the item with Pre-filled Item Information.

#    Argument: 'ns:ProductRecommendationsType'

=cut

sub setProductRecommendations {
  my $self = shift;
  $self->{'ProductRecommendations'} = shift
}

=head2 getProductRecommendations()

  Calls: GetItemRecommendations
  Returned: Conditionally

#    Returns: 'ns:ProductRecommendationsType'

=cut

sub getProductRecommendations {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ProductRecommendations'
		,'eBay::API::XML::DataType::ProductRecommendationsType');
}


=head2 setSIFFTASRecommendations()

Reserved for future use.

#    Argument: 'ns:SIFFTASRecommendationsType'

=cut

sub setSIFFTASRecommendations {
  my $self = shift;
  $self->{'SIFFTASRecommendations'} = shift
}

=head2 getSIFFTASRecommendations()

#    Returns: 'ns:SIFFTASRecommendationsType'

=cut

sub getSIFFTASRecommendations {
  my $self = shift;
  return $self->_getDataTypeInstance( 'SIFFTASRecommendations'
		,'eBay::API::XML::DataType::SIFFTASRecommendationsType');
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
