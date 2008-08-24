#!/usr/bin/perl

package eBay::API::XML::Call::GetNotificationsUsage::GetNotificationsUsageRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetNotificationsUsageRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetNotificationsUsage::GetNotificationsUsageRequestType

=head1 DESCRIPTION

Retrieves usage information about platform notifications for a given application.
You can use this notification information to troubleshoot issues with platform
notifications. You can call this up to 50 times per hour for a given application.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetNotificationsUsage::GetNotificationsUsageRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::ItemIDType;


my @gaProperties = ( [ 'EndTime', 'xs:dateTime', '', '', '' ]
	, [ 'ItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'StartTime', 'xs:dateTime', '', '', '' ]
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



=head2 setEndTime()

Specifies the end date and time for which notification information
will be retrieved. EndTime is optional. If no EndTime is specified,
the current time (the time the call is made) is used. If no EndTime
is specified or if an invalid EndTime is specified, date range errors
are returned in the response. For an EndTime to be valid, it must be no
more than 72 hours before the time the of the call, it cannot be before
the StartTime, and it cannot be later than the time of the call. If an
invalid EndTime is specified, the current time is used.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut

sub setEndTime {
  my $self = shift;
  $self->{'EndTime'} = shift
}

=head2 getEndTime()

#    Returns: 'xs:dateTime'

=cut

sub getEndTime {
  my $self = shift;
  return $self->{'EndTime'};
}


=head2 setItemID()

Specifies an item ID for which detailed notification information will be
retrieved. ItemID is optional. If no ItemID is specified, the response
will not include any individual notification details.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: Conditionally
#    Argument: 'ns:ItemIDType'

=cut

sub setItemID {
  my $self = shift;
  $self->{'ItemID'} = shift
}

=head2 getItemID()

#    Returns: 'ns:ItemIDType'

=cut

sub getItemID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemID'
		,'eBay::API::XML::DataType::ItemIDType');
}


=head2 setStartTime()

Specifies the start date and time for which notification information
will be retrieved. StartTime is optional. If no StartTime is specified,
the default value of 24 hours prior to the call time is used. If no
StartTime is specified or if an invalid StartTime is specified, date
range errors are returned in the response. For a StartTime to be valid,
it must be no more than 72 hours before the time of the call, it cannot
be more recent than the EndTime, and it cannot be later than the time of
the call. If an invalid StartTime is specified, the default value is
used.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut

sub setStartTime {
  my $self = shift;
  $self->{'StartTime'} = shift
}

=head2 getStartTime()

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