#!/usr/bin/perl

package eBay::API::XML::DataType::FeedbackPeriodType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. FeedbackPeriodType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::FeedbackPeriodType

=head1 DESCRIPTION

Contains the data for one type of feedback for one predefined time
period. Parent FeedbackPeriodArrayType object indicates the type of
feedback counted: positive, neutral, negative, or total. Output only,
in the summary feedback data returned by GetFeedback.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::FeedbackPeriodType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'Count', 'xs:int', '', '', '' ]
	, [ 'PeriodInDays', 'xs:int', '', '', '' ]
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



=head2 setCount()

Count of the feedbacks received by the user for the time period prior to the
call indicated in PeriodInDays. Returned if no detail level is specified.

#    Argument: 'xs:int'

=cut

sub setCount {
  my $self = shift;
  $self->{'Count'} = shift
}

=head2 getCount()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:int'

=cut

sub getCount {
  my $self = shift;
  return $self->{'Count'};
}


=head2 setPeriodInDays()

Indicates the time period for the feedback count. Returns a value indicating
the number of days prior to the call for which feedbacks of the particular
type are counted. Returned if no detail level is specified.

#    Argument: 'xs:int'

=cut

sub setPeriodInDays {
  my $self = shift;
  $self->{'PeriodInDays'} = shift
}

=head2 getPeriodInDays()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:int'

=cut

sub getPeriodInDays {
  my $self = shift;
  return $self->{'PeriodInDays'};
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