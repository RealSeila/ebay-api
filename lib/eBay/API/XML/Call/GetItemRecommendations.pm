#!/usr/bin/perl

package eBay::API::XML::Call::GetItemRecommendations;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetItemRecommendations.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetItemRecommendations

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetItemRecommendations inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetItemRecommendations::GetItemRecommendationsRequestType;
use eBay::API::XML::Call::GetItemRecommendations::GetItemRecommendationsResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetItemRecommendations';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetItemRecommendations::GetItemRecommendationsRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetItemRecommendations::GetItemRecommendationsResponseType';
}

#
# input properties
#

=head2 setGetRecommendationsRequestContainer()

Specifies the data for a single item and configures the recommendation engines to use
when processing the item.
To retrieve recommendations for multiple items, pass a separate
GetRecommendationsRequestContainer for each item. In this case,
pass a user-defined correlation ID for each item to identify the matching response.

  RequiredInput: Yes
#    Argument: reference to an array  
                      of 'ns:GetRecommendationsRequestContainerType'

=cut
       
sub setGetRecommendationsRequestContainer {
   my $self   = shift;
   my $pGetRecommendationsRequestContainer = shift;
   $self->getRequestDataType()->setGetRecommendationsRequestContainer($pGetRecommendationsRequestContainer);
}



#
# output properties
#

=head2 getGetRecommendationsResponseContainer()

Specifies recommended changes or opportunities for improving the data of a single item.
If multiple items were processed, a separate GetRecommendationsResponseContainer
is returned for each item. Each container includes a user-defined correlation ID
to help you match items in the request to recommendations in the response.

  Returned: Always
#    Returns: reference to an array  
                      of 'ns:GetRecommendationsResponseContainerType'

=cut
       
sub getGetRecommendationsResponseContainer {
   my $self = shift;
   return $self->getResponseDataType()->getGetRecommendationsResponseContainer();
}





1;   
