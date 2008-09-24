#!/usr/bin/perl

package eBay::API::XML::DataType::AverageRatingDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AverageRatingDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::AverageRatingDetailsType

=head1 DESCRIPTION

Applicable to sites that support the Detailed Seller Ratings feature.
The AverageRatingDetailsType contains the average detailed seller ratings in an area. When buyers leave an overall Feedback rating (positive, neutral, or negative) for a seller, they also can leave ratings in four areas: item as described, communication, shipping time, and charges for shipping and handling. Users retrieve detailed ratings as averages of the ratings left by buyers.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::AverageRatingDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::FeedbackRatingDetailCodeType;


my @gaProperties = ( [ 'Rating', 'xs:double', '', '', '' ]
	, [ 'RatingCount', 'xs:int', '', '', '' ]
	, [ 'RatingDetail', 'ns:FeedbackRatingDetailCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::FeedbackRatingDetailCodeType', '' ]
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



=head2 setRating()

An average detailed seller rating applying to the area in the corresponding RatingDetail field.

#    Argument: 'xs:double'

=cut

sub setRating {
  my $self = shift;
  $self->{'Rating'} = shift
}

=head2 getRating()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:double'

=cut

sub getRating {
  my $self = shift;
  return $self->{'Rating'};
}


=head2 setRatingCount()

The number of detailed seller ratings in the area
in the corresponding RatingDetail field.

#    Argument: 'xs:int'

=cut

sub setRatingCount {
  my $self = shift;
  $self->{'RatingCount'} = shift
}

=head2 getRatingCount()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:int'

=cut

sub getRatingCount {
  my $self = shift;
  return $self->{'RatingCount'};
}


=head2 setRatingDetail()

The area of a specific average detailed seller rating.
Users retrieve detailed ratings as averages of the ratings left by buyers.
When buyers leave an overall Feedback rating (positive, neutral, or negative)
for a seller, they also can leave ratings in four areas:
item as described, communication, shipping time, and charges for shipping and handling.

#    Argument: 'ns:FeedbackRatingDetailCodeType'

=cut

sub setRatingDetail {
  my $self = shift;
  $self->{'RatingDetail'} = shift
}

=head2 getRatingDetail()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'ns:FeedbackRatingDetailCodeType'

=cut

sub getRatingDetail {
  my $self = shift;
  return $self->{'RatingDetail'};
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
