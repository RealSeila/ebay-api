#!/usr/bin/perl

package eBay::API::XML::DataType::FeedbackPeriodArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. FeedbackPeriodArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::FeedbackPeriodArrayType

=head1 DESCRIPTION

Container for a set of feedback statistics. Contains zero one or
multiple FeedbackPeriod objects. Output only, for the summary
feedback data returned by GetFeedback.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::FeedbackPeriodArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::FeedbackPeriodType;


my @gaProperties = ( [ 'FeedbackPeriod', 'ns:FeedbackPeriodType', '1'
	     ,'eBay::API::XML::DataType::FeedbackPeriodType', '1' ]
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



=head2 setFeedbackPeriod()

Contains one feedback statistic giving length of the period being reported
(e.g. last 7 days prior to the call), and total number of feedback entries
(of the type given by the container, e.g. positive feedback) submitted during
the indicated period. Returned if no detail level is specified.

#    Argument: reference to an array  
                      of 'ns:FeedbackPeriodType'

=cut

sub setFeedbackPeriod {
  my $self = shift;
  $self->{'FeedbackPeriod'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getFeedbackPeriod()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: reference to an array  
                      of 'ns:FeedbackPeriodType'

=cut

sub getFeedbackPeriod {
  my $self = shift;
  return $self->_getDataTypeArray('FeedbackPeriod');
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
