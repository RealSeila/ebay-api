#!/usr/bin/perl

package eBay::API::XML::DataType::TimeZoneDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. TimeZoneDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::TimeZoneDetailsType

=head1 DESCRIPTION

Time zone details about a region or location to which the seller is willing to 
ship.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::TimeZoneDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'DaylightSavingsInEffect', 'xs:boolean', '', '', '' ]
	, [ 'DaylightSavingsLabel', 'xs:string', '', '', '' ]
	, [ 'DaylightSavingsOffset', 'xs:string', '', '', '' ]
	, [ 'StandardLabel', 'xs:string', '', '', '' ]
	, [ 'StandardOffset', 'xs:string', '', '', '' ]
	, [ 'TimeZoneID', 'xs:string', '', '', '' ]
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



=head2 setDaylightSavingsInEffect()

Indicates whether or not the time zone is currently on daylight saving time.
A value of true indicates that the time zone is on daylights savings time.
This element is emitted for time zones that support daylight saving time only.

#    Argument: 'xs:boolean'

=cut

sub setDaylightSavingsInEffect {
  my $self = shift;
  $self->{'DaylightSavingsInEffect'} = shift
}

=head2 isDaylightSavingsInEffect()

  Calls: GeteBayDetails
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isDaylightSavingsInEffect {
  my $self = shift;
  return $self->{'DaylightSavingsInEffect'};
}


=head2 setDaylightSavingsLabel()

Display name of a time zone in its daylight saving time representation.
This element is emitted for time zones that support daylight saving time 
only. The value is localized and returned in the language for the site 
specified in the request.

#    Argument: 'xs:string'

=cut

sub setDaylightSavingsLabel {
  my $self = shift;
  $self->{'DaylightSavingsLabel'} = shift
}

=head2 getDaylightSavingsLabel()

  Calls: GeteBayDetails
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getDaylightSavingsLabel {
  my $self = shift;
  return $self->{'DaylightSavingsLabel'};
}


=head2 setDaylightSavingsOffset()

The offset in hours from GMT for a time zone when it is on daylight saving 
time. This element is emitted for time zones that support daylight 
saving time only.

#    Argument: 'xs:string'

=cut

sub setDaylightSavingsOffset {
  my $self = shift;
  $self->{'DaylightSavingsOffset'} = shift
}

=head2 getDaylightSavingsOffset()

  Calls: GeteBayDetails
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getDaylightSavingsOffset {
  my $self = shift;
  return $self->{'DaylightSavingsOffset'};
}


=head2 setStandardLabel()

Display name of a time zone in its standard (non-daylight saving) time 
representation. This value is localized and returned in the language for the
site specified in the request (i.e., the numeric site ID that you specify in 
the request URL for the SOAP API or the X-EBAY-API-SITEID header for the XML 
API).

#    Argument: 'xs:string'

=cut

sub setStandardLabel {
  my $self = shift;
  $self->{'StandardLabel'} = shift
}

=head2 getStandardLabel()

  Calls: GeteBayDetails
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getStandardLabel {
  my $self = shift;
  return $self->{'StandardLabel'};
}


=head2 setStandardOffset()

The offset in hours from GMT for a time zone when it is not adjusted for 
daylight saving time.

#    Argument: 'xs:string'

=cut

sub setStandardOffset {
  my $self = shift;
  $self->{'StandardOffset'} = shift
}

=head2 getStandardOffset()

  Calls: GeteBayDetails
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getStandardOffset {
  my $self = shift;
  return $self->{'StandardOffset'};
}


=head2 setTimeZoneID()

A unique identifier for a given time zone. This ID does not change for a 
given time zone, even if the time zone supports both standard and daylight 
saving time variants. Valid values for TimeZoneID correspond to OLSON IDs. 
These IDs provide not only the information as to the offset from GMT (UTC), 
but also daylight saving time information. Thus, for example, America/Phoenix 
is distinct from America/Denver because they have different daylight saving 
time behavior. This value is not localized.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=TimeValues
Title: Time Values
, URL: http://unicode.org/cldr/data/docs/design/formatting/zone_log.html
Title: Olson ID Comparison


#    Argument: 'xs:string'

=cut

sub setTimeZoneID {
  my $self = shift;
  $self->{'TimeZoneID'} = shift
}

=head2 getTimeZoneID()

  Calls: GeteBayDetails
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getTimeZoneID {
  my $self = shift;
  return $self->{'TimeZoneID'};
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
