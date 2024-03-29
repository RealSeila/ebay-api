#!/usr/bin/perl

package eBay::API::XML::Call::GetItemsAwaitingFeedback::GetItemsAwaitingFeedbackRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetItemsAwaitingFeedbackRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetItemsAwaitingFeedback::GetItemsAwaitingFeedbackRequestType

=head1 DESCRIPTION

Returns transactions in which the user was involved and for which feedback
is still needed from either the buyer or seller.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetItemsAwaitingFeedback::GetItemsAwaitingFeedbackRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::PaginationType;
use eBay::API::XML::DataType::Enum::ItemSortTypeCodeType;


my @gaProperties = ( [ 'Pagination', 'ns:PaginationType', ''
	     ,'eBay::API::XML::DataType::PaginationType', '1' ]
	, [ 'Sort', 'ns:ItemSortTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::ItemSortTypeCodeType', '' ]
                    );
push @gaProperties, @{eBay::API::XML::RequestDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::RequestDataType::getAttributesList()};

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



=head2 setPagination()

Specifies the number of entries per page and the page number to return
in the result set.

  RequiredInput: No
#    Argument: 'ns:PaginationType'

=cut

sub setPagination {
  my $self = shift;
  $self->{'Pagination'} = shift
}

=head2 getPagination()

#    Returns: 'ns:PaginationType'

=cut

sub getPagination {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Pagination'
		,'eBay::API::XML::DataType::PaginationType');
}


=head2 setSort()

Specifies how the returned feedback items should be sorted. 
Valid values are Title, EndTime, QuestionCount, FeedbackLeft, FeedbackReceivedDescending, UserIDDescending, TitleDescending, 
and EndTimeDescending.

  RequiredInput: No
#    Argument: 'ns:ItemSortTypeCodeType'

=cut

sub setSort {
  my $self = shift;
  $self->{'Sort'} = shift
}

=head2 getSort()

#    Returns: 'ns:ItemSortTypeCodeType'

=cut

sub getSort {
  my $self = shift;
  return $self->{'Sort'};
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
