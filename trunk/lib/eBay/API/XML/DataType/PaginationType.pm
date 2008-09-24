#!/usr/bin/perl

package eBay::API::XML::DataType::PaginationType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PaginationType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::PaginationType

=head1 DESCRIPTION

Contains data for controlling pagination in API requests.
Pagination of returned data is required for some calls and not
needed in or not supported for some calls. See the documentation
for individual calls to determine whether pagination is supported,
required, or desirable.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::PaginationType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'EntriesPerPage', 'xs:int', '', '', '' ]
	, [ 'PageNumber', 'xs:int', '', '', '' ]
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



=head2 setEntriesPerPage()

Specifies the maximum number of entries to return in a single call.
If the number of entries that can be returned is less
than the value in EntriesPerPage, then the lower number
is returned.
For most calls, the max is 200 and the default is 25.
For GetUserDisputes, the value is hard-coded at 200, and any input is
ignored. For GetProducts, the maximum is 20 (and higher values are
ignored). See the annotations for other individual calls to determine
the correct max and default values. For GetOrders, not applicable to eBay.com (but applicable to Half.com for GetOrders).

  Calls: GetAccount
         GetCategoryListings
         GetFeedback
         GetItemsAwaitingFeedback
         GetItemTransactions
         GetLiveAuctionBidders
         GetMyeBayBuying
         GetMyeBaySelling
         GetOrders
         GetSellerTransactions
         GetWantItNowSearchResults
         GetLiveAuctionBidders
         GetVeROReportStatus
  RequiredInput: No

  Calls: GetMemberMessages
  RequiredInput: Yes

  Calls: GetProductSearchResults
         GetProductFamilyMembers
  RequiredInput: No
  Default: 50
  Max: 50000
  Min: 1

  Calls: GetProducts
  RequiredInput: No
  Max: 20
  Min: 1

  Calls: GetSearchResults
  RequiredInput: No
  Max: 400
  Min: 1

  Calls: GetSellerPayments
  RequiredInput: No
  Default: 200
  Max: 200
  Min: 1

  Calls: GetUserDisputes
  RequiredInput: No
  Default: 200
  Max: 200
  Min: 200

  Calls: GetSellerList
  RequiredInput: Yes

  Calls: GetPopularKeywords
  RequiredInput: No
  Default: 100

#    Argument: 'xs:int'

=cut

sub setEntriesPerPage {
  my $self = shift;
  $self->{'EntriesPerPage'} = shift
}

=head2 getEntriesPerPage()

#    Returns: 'xs:int'

=cut

sub getEntriesPerPage {
  my $self = shift;
  return $self->{'EntriesPerPage'};
}


=head2 setPageNumber()

Specifies the number of the page of data to return in the current call.
Default is 1 for most calls. For some calls, the default is 0. Specify a
positive value equal to or lower than the number of pages available (which you
determine by examining the results of your initial request).
See the documentation for other individual calls to determine the correct
default value. For GetOrders, not applicable to eBay.com (for GetOrders,
applicable to Half.com).

  Calls: GetAccount
         GetCategoryListings
         GetFeedback
         GetItemsAwaitingFeedback
         GetItemTransactions
         GetLiveAuctionBidders
         GetMyeBayBuying
         GetMyeBaySelling
         GetOrders
         GetSearchResults
         GetSellerTransactions
         GetWantItNowSearchResults
         GetLiveAuctionBidders
         GetVeROReportStatus
  RequiredInput: No
  Default: 0
  Max: 2147483647
  Min: 0

  Calls: GetMemberMessages
         GetUserDisputes
  RequiredInput: Yes

  Calls: GetProductSearchResults
         GetProductFamilyMembers
  RequiredInput: No
  Default: 0
  Max: 2147483647
  Min: 0

  Calls: GetSellerList
  RequiredInput: Yes

  Calls: GetSellerPayments
  RequiredInput: No
  Default: 1
  Max: 2147483647
  Min: 1

  Calls: GetProducts
  RequiredInput: No
  Default: 1
  Max: 2000
  Min: 1

  Calls: GetPopularKeywords
  RequiredInput: No
  Default: 1

#    Argument: 'xs:int'

=cut

sub setPageNumber {
  my $self = shift;
  $self->{'PageNumber'} = shift
}

=head2 getPageNumber()

#    Returns: 'xs:int'

=cut

sub getPageNumber {
  my $self = shift;
  return $self->{'PageNumber'};
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
