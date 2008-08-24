#!/usr/bin/perl

package eBay::API::XML::Call::GetBidderList::GetBidderListRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetBidderListRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetBidderList::GetBidderListRequestType

=head1 DESCRIPTION

Retrieves all items the user is currently bidding on, or
has won or purchased. You can control the result set with elements 
such as ActiveItemsOnly, which limits the result set to active items. 
Note that since bidder information is anonymous to everyone except the
bidder and the seller (during an active auction), only sellers who know 
the user IDs of their bidders will be able to make this API call successfully.
See <a href="http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AnonymousUserInfo">Working with Anonymous User Information</a> in the eBay Web Services Guide for more information.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetBidderList::GetBidderListRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::UserIDType;
use eBay::API::XML::DataType::Enum::GranularityLevelCodeType;


my @gaProperties = ( [ 'ActiveItemsOnly', 'xs:boolean', '', '', '' ]
	, [ 'EndTimeFrom', 'xs:dateTime', '', '', '' ]
	, [ 'EndTimeTo', 'xs:dateTime', '', '', '' ]
	, [ 'GranularityLevel', 'ns:GranularityLevelCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::GranularityLevelCodeType', '' ]
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



=head2 setActiveItemsOnly()

Indicates whether to limit the result set to active items.
If true, only active items are returned and the EndTimeFrom
and EndTimeTo filters are ignored. If false (or not sent),
active and ended items are returned.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setActiveItemsOnly {
  my $self = shift;
  $self->{'ActiveItemsOnly'} = shift
}

=head2 isActiveItemsOnly()

#    Returns: 'xs:boolean'

=cut

sub isActiveItemsOnly {
  my $self = shift;
  return $self->{'ActiveItemsOnly'};
}


=head2 setEndTimeFrom()

Limits returned items to only those for which the item's
end date is on or after the date-time specified. Specify an
end date within 30 days prior to today. Items that ended
more than 30 days ago are omitted from the results. If
specified, EndTimeTo must also be specified. Express
date-time in the format YYYY-MM-DD HH:MM:SS, and in GMT.
(For information on how to convert between your local time zone
and GMT, see Time Values Note.) This field is ignored if ActiveItemsOnly is true.

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

Limits returned items to only those for which the item's
end date is on or before the date-time specified. If
specified, EndTimeFrom must also be specified. Express
date-time in the format YYYY-MM-DD HH:MM:SS, and in GMT.
This field is ignored if ActiveItemsOnly is true.

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

For GetBidderList, you can reduce the ItemType fields and other fields returned
by specifying one of two values in the GranularityLevel field, Coarse or Medium.
If you specify Coarse, the primary fields returned are the following: Item.ItemID and Item.ListingDetails.EndTime. If you specify Medium, an abbreviated result set is returned
that includes many more fields than in the case of Coarse, including the following:
Item.BuyItNowPrice, Item.Currency, Item.Site, and Item.Title.

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


=head2 setUserID()

The user for whom information should be returned. If
provided, overrides user defined via RequesterCredentials
in header.

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
