#!/usr/bin/perl

package eBay::API::XML::Call::GetFeedback::GetFeedbackResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetFeedbackResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetFeedback::GetFeedbackResponseType

=head1 DESCRIPTION

The GetFeedback response contains the feedback summary if a 
Transaction ID or Item ID is specified, and contains the specified user's total
feedback score and feedback summary data if a User ID is specified. If no
value is supplied, the feedback score and feedback summary for the requesting
user will be returned. 
<br>
If a detail level value of ReturnAll is specified, an array of all feedback 
records will be returned.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetFeedback::GetFeedbackResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::FeedbackDetailArrayType;
use eBay::API::XML::DataType::FeedbackSummaryType;
use eBay::API::XML::DataType::PaginationResultType;


my @gaProperties = ( [ 'EntriesPerPage', 'xs:int', '', '', '' ]
	, [ 'FeedbackDetailArray', 'ns:FeedbackDetailArrayType', ''
	     ,'eBay::API::XML::DataType::FeedbackDetailArrayType', '1' ]
	, [ 'FeedbackDetailItemTotal', 'xs:int', '', '', '' ]
	, [ 'FeedbackScore', 'xs:int', '', '', '' ]
	, [ 'FeedbackSummary', 'ns:FeedbackSummaryType', ''
	     ,'eBay::API::XML::DataType::FeedbackSummaryType', '1' ]
	, [ 'PageNumber', 'xs:int', '', '', '' ]
	, [ 'PaginationResult', 'ns:PaginationResultType', ''
	     ,'eBay::API::XML::DataType::PaginationResultType', '1' ]
                    );
push @gaProperties, @{eBay::API::XML::ResponseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::ResponseDataType::getAttributesList()};

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



=head2 setEntriesPerPage()

Indicates the number of entries (feedback detail) that are being 
returned per page of data (i.e., per call).  
Only returned if entries are returned.

#    Argument: 'xs:int'

=cut

sub setEntriesPerPage {
  my $self = shift;
  $self->{'EntriesPerPage'} = shift
}

=head2 getEntriesPerPage()

  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll
#    Returns: 'xs:int'

=cut

sub getEntriesPerPage {
  my $self = shift;
  return $self->{'EntriesPerPage'};
}


=head2 setFeedbackDetailArray()

Contains the individual feedback records for the user, transaction, or
item is specified in the request. There is one FeedbackDetailType
object for each feedback record. Only populated with data when a detail level of ReturnAll is specified in the request. Not returned if you specify FeedbackID in the request.

#    Argument: 'ns:FeedbackDetailArrayType'

=cut

sub setFeedbackDetailArray {
  my $self = shift;
  $self->{'FeedbackDetailArray'} = shift
}

=head2 getFeedbackDetailArray()

  Returned: Conditionally
  Details: DetailLevel: ReturnAll
#    Returns: 'ns:FeedbackDetailArrayType'

=cut

sub getFeedbackDetailArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'FeedbackDetailArray'
		,'eBay::API::XML::DataType::FeedbackDetailArrayType');
}


=head2 setFeedbackDetailItemTotal()

Indicates the number of FeedbackDetailType objects returned in the
FeedbackDetailArray property. Only applicable if feedback details are
returned.

#    Argument: 'xs:int'

=cut

sub setFeedbackDetailItemTotal {
  my $self = shift;
  $self->{'FeedbackDetailItemTotal'} = shift
}

=head2 getFeedbackDetailItemTotal()

  Returned: Conditionally
  Details: DetailLevel: ReturnAll
#    Returns: 'xs:int'

=cut

sub getFeedbackDetailItemTotal {
  my $self = shift;
  return $self->{'FeedbackDetailItemTotal'};
}


=head2 setFeedbackScore()

Indicates the total feedback score for the user.

#    Argument: 'xs:int'

=cut

sub setFeedbackScore {
  my $self = shift;
  $self->{'FeedbackScore'} = shift
}

=head2 getFeedbackScore()

  Returned: Always
  Details: DetailLevel: none, ReturnAll
#    Returns: 'xs:int'

=cut

sub getFeedbackScore {
  my $self = shift;
  return $self->{'FeedbackScore'};
}


=head2 setFeedbackSummary()

Summary feedback data for the user. Contains counts of positive, neutral,
and negative feedback for predefined time periods. Only applicable if feedback details are returned.

#    Argument: 'ns:FeedbackSummaryType'

=cut

sub setFeedbackSummary {
  my $self = shift;
  $self->{'FeedbackSummary'} = shift
}

=head2 getFeedbackSummary()

  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll
#    Returns: 'ns:FeedbackSummaryType'

=cut

sub getFeedbackSummary {
  my $self = shift;
  return $self->_getDataTypeInstance( 'FeedbackSummary'
		,'eBay::API::XML::DataType::FeedbackSummaryType');
}


=head2 setPageNumber()

Indicates which page of data was just returned. Will be the same as the
value specified in Pagination.PageNumber. (If the input is
higher than the total number of pages, the call fails with an error.)
Only returned if items are returned.

#    Argument: 'xs:int'

=cut

sub setPageNumber {
  my $self = shift;
  $self->{'PageNumber'} = shift
}

=head2 getPageNumber()

  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll
#    Returns: 'xs:int'

=cut

sub getPageNumber {
  my $self = shift;
  return $self->{'PageNumber'};
}


=head2 setPaginationResult()

Contains information regarding the pagination of data (if pagination is
used), including total number of pages and total number of entries. This
is only applicable when a User ID or no ID (requester option) is specified.

#    Argument: 'ns:PaginationResultType'

=cut

sub setPaginationResult {
  my $self = shift;
  $self->{'PaginationResult'} = shift
}

=head2 getPaginationResult()

  Returned: Always
  Details: DetailLevel: none, ReturnAll
#    Returns: 'ns:PaginationResultType'

=cut

sub getPaginationResult {
  my $self = shift;
  return $self->_getDataTypeInstance( 'PaginationResult'
		,'eBay::API::XML::DataType::PaginationResultType');
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
