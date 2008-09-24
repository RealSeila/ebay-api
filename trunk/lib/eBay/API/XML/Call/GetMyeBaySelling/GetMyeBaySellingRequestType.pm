#!/usr/bin/perl

package eBay::API::XML::Call::GetMyeBaySelling::GetMyeBaySellingRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetMyeBaySellingRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetMyeBaySelling::GetMyeBaySellingRequestType

=head1 DESCRIPTION

Returns a summary and details of items a user is selling from
the user's My eBay account.
<br />
If you do not specify a detail level or a specific container,
the response contains just the SellingSummary container.
<br />
If you specify a container but not a detail level, the response
contains SellingSummary and any container you specified in the
request.
<br />
If you specify a DetailLevel of ReturnAll, the response contains
the SellingSummary and all other containers. Any containers that
were not specified in the request are returned with default
settings.
<br />
While specifying pagination can help manage the amount of data
that is returned (especially at ReturnAll), high-volume sellers
may receive a warning message that the amount of data returned
is over the system limit and therefore truncated.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetMyeBaySelling::GetMyeBaySellingRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::ItemListCustomizationType;


my @gaProperties = ( [ 'ActiveList', 'ns:ItemListCustomizationType', ''
	     ,'eBay::API::XML::DataType::ItemListCustomizationType', '1' ]
	, [ 'BidList', 'ns:ItemListCustomizationType', ''
	     ,'eBay::API::XML::DataType::ItemListCustomizationType', '1' ]
	, [ 'DeletedFromSoldList', 'ns:ItemListCustomizationType', ''
	     ,'eBay::API::XML::DataType::ItemListCustomizationType', '1' ]
	, [ 'DeletedFromUnsoldList', 'ns:ItemListCustomizationType', ''
	     ,'eBay::API::XML::DataType::ItemListCustomizationType', '1' ]
	, [ 'ScheduledList', 'ns:ItemListCustomizationType', ''
	     ,'eBay::API::XML::DataType::ItemListCustomizationType', '1' ]
	, [ 'SoldList', 'ns:ItemListCustomizationType', ''
	     ,'eBay::API::XML::DataType::ItemListCustomizationType', '1' ]
	, [ 'UnsoldList', 'ns:ItemListCustomizationType', ''
	     ,'eBay::API::XML::DataType::ItemListCustomizationType', '1' ]
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



=head2 setActiveList()

Contains the list of items the user is actively selling whose listings are active.
Valid subelements are Sort, IncludeNotes, Pagination, and ListingType (with valid
values Auction, FixedPriceItem, StoresFixedPrice, or AdType).
Note that if a DetailLevel of ReturnAll is specified in the request, this element is ignored as a way to filter the response, and ALL containers are returned.

  RequiredInput: No
#    Argument: 'ns:ItemListCustomizationType'

=cut

sub setActiveList {
  my $self = shift;
  $self->{'ActiveList'} = shift
}

=head2 getActiveList()

#    Returns: 'ns:ItemListCustomizationType'

=cut

sub getActiveList {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ActiveList'
		,'eBay::API::XML::DataType::ItemListCustomizationType');
}


=head2 setBidList()

Specifies how to return the list of items bid on in the seller's My eBay
Active Selling/Items I'm Selling list. Allowed values are Sort and
IncludeNotes.Include in the request to return this container
at a DetailLevel of ReturnSummary.

  RequiredInput: No
#    Argument: 'ns:ItemListCustomizationType'

=cut

sub setBidList {
  my $self = shift;
  $self->{'BidList'} = shift
}

=head2 getBidList()

#    Returns: 'ns:ItemListCustomizationType'

=cut

sub getBidList {
  my $self = shift;
  return $self->_getDataTypeInstance( 'BidList'
		,'eBay::API::XML::DataType::ItemListCustomizationType');
}


=head2 setDeletedFromSoldList()

Specifies how to return the list of items the seller has sold and then deleted
from My eBay. Allowed values are DurationInDays (0-90), Sort, IncludeNotes,
and Pagination. Note that if a DetailLevel of ReturnAll is specified
in the request, this element is ignored as a way to filter the response,
and ALL containers are returned.

  RequiredInput: No
#    Argument: 'ns:ItemListCustomizationType'

=cut

sub setDeletedFromSoldList {
  my $self = shift;
  $self->{'DeletedFromSoldList'} = shift
}

=head2 getDeletedFromSoldList()

#    Returns: 'ns:ItemListCustomizationType'

=cut

sub getDeletedFromSoldList {
  my $self = shift;
  return $self->_getDataTypeInstance( 'DeletedFromSoldList'
		,'eBay::API::XML::DataType::ItemListCustomizationType');
}


=head2 setDeletedFromUnsoldList()

Specifies how to return the list of items the seller has either ended or not sold which
have been deleted from My eBay. Allowed values are DurationInDays (0-90), Sort, IncludeNotes,
and Pagination. Note that if a DetailLevel of ReturnAll is specified
in the request, this element is ignored as a way to filter the response,
and ALL containers are returned.

  RequiredInput: No
#    Argument: 'ns:ItemListCustomizationType'

=cut

sub setDeletedFromUnsoldList {
  my $self = shift;
  $self->{'DeletedFromUnsoldList'} = shift
}

=head2 getDeletedFromUnsoldList()

#    Returns: 'ns:ItemListCustomizationType'

=cut

sub getDeletedFromUnsoldList {
  my $self = shift;
  return $self->_getDataTypeInstance( 'DeletedFromUnsoldList'
		,'eBay::API::XML::DataType::ItemListCustomizationType');
}


=head2 setScheduledList()

Contains the list of items the user has scheduled to sell but whose listings have not yet opened.
Valid subelements are Sort, IncludeNotes, and Pagination.

  RequiredInput: No
#    Argument: 'ns:ItemListCustomizationType'

=cut

sub setScheduledList {
  my $self = shift;
  $self->{'ScheduledList'} = shift
}

=head2 getScheduledList()

#    Returns: 'ns:ItemListCustomizationType'

=cut

sub getScheduledList {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ScheduledList'
		,'eBay::API::XML::DataType::ItemListCustomizationType');
}


=head2 setSoldList()

Contains the list of items the user has sold. Valid subelements are DurationInDays
(with valid values 0-60), IncludeNotes, and Pagination.
Note that if a DetailLevel of ReturnAll is specified in the request, this element is ignored as a way to filter the response, and ALL containers are returned.

  RequiredInput: No
#    Argument: 'ns:ItemListCustomizationType'

=cut

sub setSoldList {
  my $self = shift;
  $self->{'SoldList'} = shift
}

=head2 getSoldList()

#    Returns: 'ns:ItemListCustomizationType'

=cut

sub getSoldList {
  my $self = shift;
  return $self->_getDataTypeInstance( 'SoldList'
		,'eBay::API::XML::DataType::ItemListCustomizationType');
}


=head2 setUnsoldList()

Contains the list of items the user has listed but whose listings have ended
without being sold. Valid subelements are DurationInDays (with valid values 0-60),
Sort, IncludeNotes, and Pagination.
Note that if a DetailLevel of ReturnAll is specified in the request, this element is ignored as a way to filter the response, and ALL containers are returned.

  RequiredInput: No
#    Argument: 'ns:ItemListCustomizationType'

=cut

sub setUnsoldList {
  my $self = shift;
  $self->{'UnsoldList'} = shift
}

=head2 getUnsoldList()

#    Returns: 'ns:ItemListCustomizationType'

=cut

sub getUnsoldList {
  my $self = shift;
  return $self->_getDataTypeInstance( 'UnsoldList'
		,'eBay::API::XML::DataType::ItemListCustomizationType');
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
