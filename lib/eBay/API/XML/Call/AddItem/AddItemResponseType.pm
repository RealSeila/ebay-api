#!/usr/bin/perl

package eBay::API::XML::Call::AddItem::AddItemResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AddItemResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::AddItem::AddItemResponseType

=head1 DESCRIPTION

Returns the item ID and the estimated fees for the new listing, as well as
the start and end times of the listing.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::AddItem::AddItemResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::FeesType;
use eBay::API::XML::DataType::ItemIDType;


my @gaProperties = ( [ 'Category2ID', 'xs:string', '', '', '' ]
	, [ 'CategoryID', 'xs:string', '', '', '' ]
	, [ 'EndTime', 'xs:dateTime', '', '', '' ]
	, [ 'Fees', 'ns:FeesType', ''
	     ,'eBay::API::XML::DataType::FeesType', '1' ]
	, [ 'ItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'StartTime', 'xs:dateTime', '', '', '' ]
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



=head2 setCategory2ID()

ID of the secondary category in which the item was listed.
Only returned if you set Item.CategoryMappingAllowed to true in the request
and the ID you passed in SecondaryCategory was mapped to a new ID by eBay.
If the secondary category has not changed or it has expired with no replacement,
Category2ID does not return a value.
Not applicable to Half.com.

MaxLength: 10

#    Argument: 'xs:string'

=cut

sub setCategory2ID {
  my $self = shift;
  $self->{'Category2ID'} = shift
}

=head2 getCategory2ID()

  Returned: Conditionally
#    Returns: 'xs:string'

=cut

sub getCategory2ID {
  my $self = shift;
  return $self->{'Category2ID'};
}


=head2 setCategoryID()

ID of the primary category in which the item was listed.
Only returned if you set Item.CategoryMappingAllowed to true in the request
and the ID you passed in PrimaryCategory was mapped to a new ID by eBay.
If the primary category has not changed or it has expired with no replacement,
CategoryID does not return a value.
Not applicable to Half.com.

MaxLength: 10

#    Argument: 'xs:string'

=cut

sub setCategoryID {
  my $self = shift;
  $self->{'CategoryID'} = shift
}

=head2 getCategoryID()

  Returned: Conditionally
#    Returns: 'xs:string'

=cut

sub getCategoryID {
  my $self = shift;
  return $self->{'CategoryID'};
}


=head2 setEndTime()

Date and time when the new listing ends. This is the starting time
plus the listing duration.
Also returned for Half.com, but for Half.com the actual end time is GTC
(not the end time returned in the response).

#    Argument: 'xs:dateTime'

=cut

sub setEndTime {
  my $self = shift;
  $self->{'EndTime'} = shift
}

=head2 getEndTime()

  Returned: Always
#    Returns: 'xs:dateTime'

=cut

sub getEndTime {
  my $self = shift;
  return $self->{'EndTime'};
}


=head2 setFees()

Child elements contain the estimated listing fees for the new item listing.
The fees do not include the Final Value Fee (FVF), which cannot be determined
until an item is sold.
Also returned for Half.com, but the values are not applicable to Half.com listings.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=FinalValueFeesAndCredits
Title: Final Value Fees and Credits
, URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=FeesPerSite
Title: Fees per Site
, URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=UsingFeaturePacks
Title: Using Feature Packs to Save on Upgrade Fees


#    Argument: 'ns:FeesType'

=cut

sub setFees {
  my $self = shift;
  $self->{'Fees'} = shift
}

=head2 getFees()

  Returned: Always
#    Returns: 'ns:FeesType'

=cut

sub getFees {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Fees'
		,'eBay::API::XML::DataType::FeesType');
}


=head2 setItemID()

Unique item ID for the new listing.
Also applicable to Half.com.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

#    Argument: 'ns:ItemIDType'

=cut

sub setItemID {
  my $self = shift;
  $self->{'ItemID'} = shift
}

=head2 getItemID()

  Returned: Always
#    Returns: 'ns:ItemIDType'

=cut

sub getItemID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemID'
		,'eBay::API::XML::DataType::ItemIDType');
}


=head2 setStartTime()

Starting date and time for the new listing.
Also returned for Half.com (for Half.com, the start time is always the time the item was listed).

#    Argument: 'xs:dateTime'

=cut

sub setStartTime {
  my $self = shift;
  $self->{'StartTime'} = shift
}

=head2 getStartTime()

  Returned: Always
#    Returns: 'xs:dateTime'

=cut

sub getStartTime {
  my $self = shift;
  return $self->{'StartTime'};
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
