#!/usr/bin/perl

package eBay::API::XML::DataType::FeedbackDetailArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. FeedbackDetailArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::FeedbackDetailArrayType

=head1 DESCRIPTION

Contains multiple individual feedback detail entries.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::FeedbackDetailArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::FeedbackDetailType;


my @gaProperties = ( [ 'FeedbackDetail', 'ns:FeedbackDetailType', '1'
	     ,'eBay::API::XML::DataType::FeedbackDetailType', '1' ]
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



=head2 setFeedbackDetail()

Contains a single feedback detail entry. Output only.

#    Argument: reference to an array  
                      of 'ns:FeedbackDetailType'

=cut

sub setFeedbackDetail {
  my $self = shift;
  $self->{'FeedbackDetail'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getFeedbackDetail()

  Calls: GetFeedback
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

#    Returns: reference to an array  
                      of 'ns:FeedbackDetailType'

=cut

sub getFeedbackDetail {
  my $self = shift;
  return $self->_getDataTypeArray('FeedbackDetail');
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
