#!/usr/bin/perl

package eBay::API::XML::DataType::NotificationEventPropertyType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. NotificationEventPropertyType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::NotificationEventPropertyType

=head1 DESCRIPTION

Defines properties associated with particular event.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::NotificationEventPropertyType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::NotificationEventPropertyNameCodeType;
use eBay::API::XML::DataType::Enum::NotificationEventTypeCodeType;


my @gaProperties = ( [ 'EventType', 'ns:NotificationEventTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::NotificationEventTypeCodeType', '' ]
	, [ 'Name', 'ns:NotificationEventPropertyNameCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::NotificationEventPropertyNameCodeType', '' ]
	, [ 'Value', 'xs:string', '', '', '' ]
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



=head2 setEventType()

The name of the notification event.

  Calls: SetNotificationPreferences
  RequiredInput: No
  AllValuesExcept: None

#    Argument: 'ns:NotificationEventTypeCodeType'

=cut

sub setEventType {
  my $self = shift;
  $self->{'EventType'} = shift
}

=head2 getEventType()

  Calls: GetNotificationPreferences
  Returned: Conditionally

#    Returns: 'ns:NotificationEventTypeCodeType'

=cut

sub getEventType {
  my $self = shift;
  return $self->{'EventType'};
}


=head2 setName()

Specify property name associated with an particular event.

  Calls: SetNotificationPreferences
  RequiredInput: No

#    Argument: 'ns:NotificationEventPropertyNameCodeType'

=cut

sub setName {
  my $self = shift;
  $self->{'Name'} = shift
}

=head2 getName()

  Calls: GetNotificationPreferences
  Returned: Conditionally

#    Returns: 'ns:NotificationEventPropertyNameCodeType'

=cut

sub getName {
  my $self = shift;
  return $self->{'Name'};
}


=head2 setValue()

Specifies the value for the property.

  Calls: SetNotificationPreferences
  RequiredInput: No

#    Argument: 'xs:string'

=cut

sub setValue {
  my $self = shift;
  $self->{'Value'} = shift
}

=head2 getValue()

  Calls: GetNotificationPreferences
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getValue {
  my $self = shift;
  return $self->{'Value'};
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