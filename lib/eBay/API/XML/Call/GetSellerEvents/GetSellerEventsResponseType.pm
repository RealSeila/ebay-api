#!/usr/bin/perl

package eBay::API::XML::Call::GetSellerEvents::GetSellerEventsResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetSellerEventsResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetSellerEvents::GetSellerEventsResponseType

=head1 DESCRIPTION

Contains the items returned by the call. Items for which a seller event has
occurred (and that meet any filters specified as input) are returned in an
ItemArrayType object, within which are zero, one, or multiple ItemType objects.
Each ItemType object contains the detail data for one item listing.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetSellerEvents::GetSellerEventsResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::ItemArrayType;


my @gaProperties = ( [ 'ItemArray', 'ns:ItemArrayType', ''
	     ,'eBay::API::XML::DataType::ItemArrayType', '1' ]
	, [ 'TimeTo', 'xs:dateTime', '', '', '' ]
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



=head2 setItemArray()

Collection of Item objects, each of which represents an item listing
that incurred the type of seller event change specified in the call's
inputs. Returns empty if the seller has no item events within the
time window indicated in the request.

#    Argument: 'ns:ItemArrayType'

=cut

sub setItemArray {
  my $self = shift;
  $self->{'ItemArray'} = shift
}

=head2 getItemArray()

  Returned: Always
  Details: DetailLevel: none, ReturnAll
#    Returns: 'ns:ItemArrayType'

=cut

sub getItemArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemArray'
		,'eBay::API::XML::DataType::ItemArrayType');
}


=head2 setTimeTo()

Indicates the latest (most recent) date for any date-based filtering specified as
input. Specifically, this field contains the value you specified in the StartTimeTo, EndTimeTo, or ModTimeTo filter, if you used a time filter in the request. If no time filter was specified, TimeTo returns the current time.

#    Argument: 'xs:dateTime'

=cut

sub setTimeTo {
  my $self = shift;
  $self->{'TimeTo'} = shift
}

=head2 getTimeTo()

  Returned: Always
  Details: DetailLevel: none, ReturnAll
#    Returns: 'xs:dateTime'

=cut

sub getTimeTo {
  my $self = shift;
  return $self->{'TimeTo'};
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
