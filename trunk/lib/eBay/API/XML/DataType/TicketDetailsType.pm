#!/usr/bin/perl

package eBay::API::XML::DataType::TicketDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. TicketDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::TicketDetailsType

=head1 DESCRIPTION

Defines supported fields for searching in ticket categories.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::TicketDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::DateType;
use eBay::API::XML::DataType::Enum::TicketEventTypeCodeType;


my @gaProperties = ( [ 'CityName', 'xs:string', '', '', '' ]
	, [ 'EventDate', 'ns:DateType', ''
	     ,'eBay::API::XML::DataType::DateType', '1' ]
	, [ 'EventType', 'ns:TicketEventTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::TicketEventTypeCodeType', '' ]
	, [ 'StateOrProvince', 'xs:string', '', '', '' ]
	, [ 'TicketQuantity', 'xs:int', '', '', '' ]
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



=head2 setCityName()

The city in which the event venue is located.
Specify the full name of the city. Use the canonical spelling,
such as "Los Angeles" (not "LA").
When you search for tickets, if eBay doesn't recognize the city,
eBay drops CityName and returns results that match
other fields in the request.
For the eBay US site, eBay only searches by CityName if you also specify
StateOrProvince.<br>
<br>
<span class="tablenote"><b>Note:</b>
If your application needs to provide users with a predefined list of
city names that eBay recognizes, you can call GetProductFinder
to find all the cities that the ticket finder currently supports.
GetProductFinder is a more complex call.</span>

  Calls: GetSearchResults
  RequiredInput: No
  MaxLength: 60

#    Argument: 'xs:string'

=cut

sub setCityName {
  my $self = shift;
  $self->{'CityName'} = shift
}

=head2 getCityName()

#    Returns: 'xs:string'

=cut

sub getCityName {
  my $self = shift;
  return $self->{'CityName'};
}


=head2 setEventDate()

The date of the event. If specified, the results only include listings
that specify this date in their Item Specifics.<br>
<br>
When you search for tickets, we support these combinations:<br>
- Year (matches any ticket in the specified year)<br>
- Month (matches any day in the specified month, in any year)<br>
- Year and Month (matches any day in the specified year and month)<br>
- Month and Day (matches the specified month and day in any year)<br>
- Year, Month, and Day (matches the specified year, month, and day)

  Calls: GetSearchResults
  RequiredInput: No

#    Argument: 'ns:DateType'

=cut

sub setEventDate {
  my $self = shift;
  $self->{'EventDate'} = shift
}

=head2 getEventDate()

#    Returns: 'ns:DateType'

=cut

sub getEventDate {
  my $self = shift;
  return $self->_getDataTypeInstance( 'EventDate'
		,'eBay::API::XML::DataType::DateType');
}


=head2 setEventType()

The type of event, such as a concert or a sporting event.
The eBay US, UK, and Germany sites support different values.

  Calls: GetSearchResults
  RequiredInput: Conditionally
  Default: Any

#    Argument: 'ns:TicketEventTypeCodeType'

=cut

sub setEventType {
  my $self = shift;
  $self->{'EventType'} = shift
}

=head2 getEventType()

#    Returns: 'ns:TicketEventTypeCodeType'

=cut

sub getEventType {
  my $self = shift;
  return $self->{'EventType'};
}


=head2 setStateOrProvince()

The state or province where the event venue is located.
Applicable to eBay US searches only.
Use the full name, such as "California" (not "CA").
If StateOrProvince isn't specified or no match is found in the
product finder, eBay ignores CityName (if it is also specified).

  Calls: GetSearchResults
  RequiredInput: No
  MaxLength: 60

#    Argument: 'xs:string'

=cut

sub setStateOrProvince {
  my $self = shift;
  $self->{'StateOrProvince'} = shift
}

=head2 getStateOrProvince()

#    Returns: 'xs:string'

=cut

sub getStateOrProvince {
  my $self = shift;
  return $self->{'StateOrProvince'};
}


=head2 setTicketQuantity()

The number of tickets available in the listing, as defined
in the listing's Item Specifics. (This is not the same as
LotSize or Quantity.)<br>
<br>
- For the US site, specify a value from 1 to 10.<br>
- For the UK site, specify a value from 1 to 10.<br>
- For the DE site, specify a value from 1 to 4.<br>
<br>
To search for any quantity (or to include other quantities
in the results), do not specify TicketQuantity at all.

  Calls: GetSearchResults
  RequiredInput: No
  Max: 10
  Min: 1

#    Argument: 'xs:int'

=cut

sub setTicketQuantity {
  my $self = shift;
  $self->{'TicketQuantity'} = shift
}

=head2 getTicketQuantity()

#    Returns: 'xs:int'

=cut

sub getTicketQuantity {
  my $self = shift;
  return $self->{'TicketQuantity'};
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
