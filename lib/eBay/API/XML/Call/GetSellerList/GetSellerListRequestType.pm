#!/usr/bin/perl

package eBay::API::XML::Call::GetSellerList::GetSellerListRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetSellerListRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetSellerList::GetSellerListRequestType

=head1 DESCRIPTION

Returns a list of items a seller has listed for auction.
Returns an array of zero, one, or multiple items.
You can specify that the returned data include
only items that start or end within a specified date range.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetSellerList::GetSellerListRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::PaginationType;
use eBay::API::XML::DataType::SKUArrayType;
use eBay::API::XML::DataType::UserIDArrayType;
use eBay::API::XML::DataType::UserIDType;
use eBay::API::XML::DataType::Enum::GranularityLevelCodeType;


my @gaProperties = ( [ 'AdminEndedItemsOnly', 'xs:boolean', '', '', '' ]
	, [ 'CategoryID', 'xs:int', '', '', '' ]
	, [ 'EndTimeFrom', 'xs:dateTime', '', '', '' ]
	, [ 'EndTimeTo', 'xs:dateTime', '', '', '' ]
	, [ 'GranularityLevel', 'ns:GranularityLevelCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::GranularityLevelCodeType', '' ]
	, [ 'IncludeWatchCount', 'xs:boolean', '', '', '' ]
	, [ 'MotorsDealerUsers', 'ns:UserIDArrayType', ''
	     ,'eBay::API::XML::DataType::UserIDArrayType', '1' ]
	, [ 'Pagination', 'ns:PaginationType', ''
	     ,'eBay::API::XML::DataType::PaginationType', '1' ]
	, [ 'SKUArray', 'ns:SKUArrayType', ''
	     ,'eBay::API::XML::DataType::SKUArrayType', '1' ]
	, [ 'Sort', 'xs:int', '', '', '' ]
	, [ 'StartTimeFrom', 'xs:dateTime', '', '', '' ]
	, [ 'StartTimeTo', 'xs:dateTime', '', '', '' ]
	, [ 'UserID', 'ns:UserIDType', ''
	     ,'eBay::API::XML::DataType::UserIDType', '1' ]
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



=head2 setAdminEndedItemsOnly()

Specifies whether to return only items that were administratively ended 
based on a policy violation.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setAdminEndedItemsOnly {
  my $self = shift;
  $self->{'AdminEndedItemsOnly'} = shift
}

=head2 isAdminEndedItemsOnly()

#    Returns: 'xs:boolean'

=cut

sub isAdminEndedItemsOnly {
  my $self = shift;
  return $self->{'AdminEndedItemsOnly'};
}


=head2 setCategoryID()

The category ID for the items retrieved. 
If you specify CategoryID in a GetSellerList call, 
the response contains only items in the category you specify.

  RequiredInput: No
#    Argument: 'xs:int'

=cut

sub setCategoryID {
  my $self = shift;
  $self->{'CategoryID'} = shift
}

=head2 getCategoryID()

#    Returns: 'xs:int'

=cut

sub getCategoryID {
  my $self = shift;
  return $self->{'CategoryID'};
}


=head2 setEndTimeFrom()

Specifies the earliest (oldest) date to use in a date range filter based on item end time.
Specify either the end-time range or the start-time range filter in every request. Each of the
time ranges must be a value less than 120 days.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut

sub setEndTimeFrom {
  my $self = shift;
  $self->{'EndTimeFrom'} = shift
}

=head2 getEndTimeFrom()

#    Returns: 'xs:dateTime'

=cut

sub getEndTimeFrom {
  my $self = shift;
  return $self->{'EndTimeFrom'};
}


=head2 setEndTimeTo()

Specifies the latest (most recent) date to use in a date range filter based on item end time.
Must be specified if EndTimeFrom is specified.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut

sub setEndTimeTo {
  my $self = shift;
  $self->{'EndTimeTo'} = shift
}

=head2 getEndTimeTo()

#    Returns: 'xs:dateTime'

=cut

sub getEndTimeTo {
  my $self = shift;
  return $self->{'EndTimeTo'};
}


=head2 setGranularityLevel()

Specifies the subset of item and user fields to return.
See GetSellerList in the eBay Web Services guide for a list
of the fields that are returned for each granularity level.
For GetSellerList, use DetailLevel or GranularityLevel in a request, but not both.
For GetSellerList, if GranularityLevel is specified, DetailLevel is ignored.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=GetSellerList_BP
Title: GetSellerList Best Practices
PresentDetails: Yes

  RequiredInput: No
#    Argument: 'ns:GranularityLevelCodeType'

=cut

sub setGranularityLevel {
  my $self = shift;
  $self->{'GranularityLevel'} = shift
}

=head2 getGranularityLevel()

#    Returns: 'ns:GranularityLevelCodeType'

=cut

sub getGranularityLevel {
  my $self = shift;
  return $self->{'GranularityLevel'};
}


=head2 setIncludeWatchCount()

Specifies whether to include WatchCount in Item nodes returned.
WatchCount is only returned with DetailLevel ReturnAll.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setIncludeWatchCount {
  my $self = shift;
  $self->{'IncludeWatchCount'} = shift
}

=head2 isIncludeWatchCount()

#    Returns: 'xs:boolean'

=cut

sub isIncludeWatchCount {
  my $self = shift;
  return $self->{'IncludeWatchCount'};
}


=head2 setMotorsDealerUsers()

Specifies the list of Motors Dealer sellers for which a special set of
metrics can be requested. Applies to eBay Motors Pro applications only.

  RequiredInput: No
#    Argument: 'ns:UserIDArrayType'

=cut

sub setMotorsDealerUsers {
  my $self = shift;
  $self->{'MotorsDealerUsers'} = shift
}

=head2 getMotorsDealerUsers()

#    Returns: 'ns:UserIDArrayType'

=cut

sub getMotorsDealerUsers {
  my $self = shift;
  return $self->_getDataTypeInstance( 'MotorsDealerUsers'
		,'eBay::API::XML::DataType::UserIDArrayType');
}


=head2 setPagination()

Contains the data controlling the pagination of the returned values: how many items
are returned per page of data (per call) and the number of the page to return with
the current call.

  RequiredInput: Yes
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


=head2 setSKUArray()

Specifies a set of seller SKUs to use as a filter. Only items with the specified SKUs are
returned. Do not specify this tag if you do not want to filter by SKU. Corresponds to the SKU property
that is part of ItemType and that can be provided when, for example, you use the AddItem call.

  RequiredInput: No
#    Argument: 'ns:SKUArrayType'

=cut

sub setSKUArray {
  my $self = shift;
  $self->{'SKUArray'} = shift
}

=head2 getSKUArray()

#    Returns: 'ns:SKUArrayType'

=cut

sub getSKUArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'SKUArray'
		,'eBay::API::XML::DataType::SKUArrayType');
}


=head2 setSort()

Specifies the order in which returned items are sorted (based on the end dates of the
item listings). Valid values:<br>
0 = No sorting<br>
1 = Sort in descending order<br>
2 = Sort in ascending order<br>

  RequiredInput: No
#    Argument: 'xs:int'

=cut

sub setSort {
  my $self = shift;
  $self->{'Sort'} = shift
}

=head2 getSort()

#    Returns: 'xs:int'

=cut

sub getSort {
  my $self = shift;
  return $self->{'Sort'};
}


=head2 setStartTimeFrom()

Specifies the earliest (oldest) date to use in a date range filter based on item
start time. Specify either the end time range or start time range filter in every request.
Each of the time ranges must be a value less than 120 days.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut

sub setStartTimeFrom {
  my $self = shift;
  $self->{'StartTimeFrom'} = shift
}

=head2 getStartTimeFrom()

#    Returns: 'xs:dateTime'

=cut

sub getStartTimeFrom {
  my $self = shift;
  return $self->{'StartTimeFrom'};
}


=head2 setStartTimeTo()

Specifies the latest (most recent) date to use in a date range filter based on item
start time. Must be specified if StartTimeFrom is specified.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut

sub setStartTimeTo {
  my $self = shift;
  $self->{'StartTimeTo'} = shift
}

=head2 getStartTimeTo()

#    Returns: 'xs:dateTime'

=cut

sub getStartTimeTo {
  my $self = shift;
  return $self->{'StartTimeTo'};
}


=head2 setUserID()

Specifies the seller whose items will be returned. UserID is an optional input.
If not specified, retrieves events for the user identified by
the authentication token passed in the request. Note that since user information is anonymous to everyone except the bidder and the seller (during an active auction), only sellers looking for information about
their own listings and bidders who know the user IDs of their sellers
will be able to make this API call successfully. See <a href="http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AnonymousUserInfo">Working with Anonymous User Information</a>in the eBay Web Services Guide for more information.

  RequiredInput: No
#    Argument: 'ns:UserIDType'

=cut

sub setUserID {
  my $self = shift;
  $self->{'UserID'} = shift
}

=head2 getUserID()

#    Returns: 'ns:UserIDType'

=cut

sub getUserID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'UserID'
		,'eBay::API::XML::DataType::UserIDType');
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
