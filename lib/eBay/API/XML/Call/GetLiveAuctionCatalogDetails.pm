#!/usr/bin/perl

package eBay::API::XML::Call::GetLiveAuctionCatalogDetails;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetLiveAuctionCatalogDetails.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetLiveAuctionCatalogDetails

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetLiveAuctionCatalogDetails inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetLiveAuctionCatalogDetails::GetLiveAuctionCatalogDetailsRequestType;
use eBay::API::XML::Call::GetLiveAuctionCatalogDetails::GetLiveAuctionCatalogDetailsResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetLiveAuctionCatalogDetails';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetLiveAuctionCatalogDetails::GetLiveAuctionCatalogDetailsRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetLiveAuctionCatalogDetails::GetLiveAuctionCatalogDetailsResponseType';
}

#
# input properties
#



#
# output properties
#

=head2 getLiveAuctionCatalog()

Each eBay Live Auctions catalog describes one live auction catalog created by the user,
along with one or more sale schedules.
Use this information to determine an appropriate combination of catalog and schedule IDs
in which to list lot items with AddLiveAuctionItem.
Only returns details about catalogs that contain pending sales.
That is, if a catalog has no sales or all its sales have ended,
the catalog details are not returned.

  Returned: Conditionally
#    Returns: reference to an array  
                      of 'ns:LiveAuctionCatalogType'

=cut
       
sub getLiveAuctionCatalog {
   my $self = shift;
   return $self->getResponseDataType()->getLiveAuctionCatalog();
}





1;   
