#!/usr/bin/perl

package eBay::API::XML::DataType::AverageRatingSummaryType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AverageRatingSummaryType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::AverageRatingSummaryType

=head1 DESCRIPTION

Container for average detailed seller ratings.
If a seller has detailed ratings, they are displayed
in the Feedback Profile of the seller.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::AverageRatingSummaryType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AverageRatingDetailsType;
use eBay::API::XML::DataType::Enum::FeedbackSummaryPeriodCodeType;


my @gaProperties = ( [ 'AverageRatingDetails', 'ns:AverageRatingDetailsType', '1'
	     ,'eBay::API::XML::DataType::AverageRatingDetailsType', '1' ]
	, [ 'FeedbackSummaryPeriod', 'ns:FeedbackSummaryPeriodCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::FeedbackSummaryPeriodCodeType', '' ]
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



=head2 setAverageRatingDetails()

Applicable to sites that support the Detailed Seller Ratings feature.
The AverageRatingDetails container has information about
average detailed seller ratings.
When buyers leave an overall Feedback rating (positive, neutral, or negative) for a seller, they also can leave ratings in four areas: item as described, communication, shipping time, and charges for shipping and handling. Users retrieve detailed ratings as averages of the ratings left by buyers.

#    Argument: reference to an array  
                      of 'ns:AverageRatingDetailsType'

=cut

sub setAverageRatingDetails {
  my $self = shift;
  $self->{'AverageRatingDetails'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getAverageRatingDetails()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: reference to an array  
                      of 'ns:AverageRatingDetailsType'

=cut

sub getAverageRatingDetails {
  my $self = shift;
  return $self->_getDataTypeArray('AverageRatingDetails');
}


=head2 setFeedbackSummaryPeriod()

The summary period for which the detail ratings are calculated.

#    Argument: 'ns:FeedbackSummaryPeriodCodeType'

=cut

sub setFeedbackSummaryPeriod {
  my $self = shift;
  $self->{'FeedbackSummaryPeriod'} = shift
}

=head2 getFeedbackSummaryPeriod()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'ns:FeedbackSummaryPeriodCodeType'

=cut

sub getFeedbackSummaryPeriod {
  my $self = shift;
  return $self->{'FeedbackSummaryPeriod'};
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
