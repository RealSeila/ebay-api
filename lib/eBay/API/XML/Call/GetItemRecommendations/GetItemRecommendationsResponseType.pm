#!/usr/bin/perl

package eBay::API::XML::Call::GetItemRecommendations::GetItemRecommendationsResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetItemRecommendationsResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetItemRecommendations::GetItemRecommendationsResponseType

=head1 DESCRIPTION

GetItemRecommendations returns recommended changes or opportunities for improvement
related to listing data that was passed in the request.
This call supports batch requests. That is, it can retrieve recommendations for multiple
items at once.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetItemRecommendations::GetItemRecommendationsResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::GetRecommendationsResponseContainerType;


my @gaProperties = ( [ 'GetRecommendationsResponseContainer', 'ns:GetRecommendationsResponseContainerType', '1'
	     ,'eBay::API::XML::DataType::GetRecommendationsResponseContainerType', '1' ]
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



=head2 setGetRecommendationsResponseContainer()

Specifies recommended changes or opportunities for improving the data of a single item.
If multiple items were processed, a separate GetRecommendationsResponseContainer
is returned for each item. Each container includes a user-defined correlation ID
to help you match items in the request to recommendations in the response.

#    Argument: reference to an array  
                      of 'ns:GetRecommendationsResponseContainerType'

=cut

sub setGetRecommendationsResponseContainer {
  my $self = shift;
  $self->{'GetRecommendationsResponseContainer'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getGetRecommendationsResponseContainer()

  Returned: Always
#    Returns: reference to an array  
                      of 'ns:GetRecommendationsResponseContainerType'

=cut

sub getGetRecommendationsResponseContainer {
  my $self = shift;
  return $self->_getDataTypeArray('GetRecommendationsResponseContainer');
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
