#!/usr/bin/perl

package eBay::API::XML::Call::SetNotificationPreferences::SetNotificationPreferencesRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SetNotificationPreferencesRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::SetNotificationPreferences::SetNotificationPreferencesRequestType

=head1 DESCRIPTION

Manages a user's notification and alerts preferences. This is part of two eBay services that
update users about events on the eBay site: 1. the eBay Platform Notifications feature, and 2:
the eBay Client Alerts API. Notifications and alerts are used to update production applications
about selected events on the eBay site, helping reduce the number of times your application needs
to retrieve certain information.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::SetNotificationPreferences::SetNotificationPreferencesRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::ApplicationDeliveryPreferencesType;
use eBay::API::XML::DataType::NotificationEnableArrayType;
use eBay::API::XML::DataType::NotificationEventPropertyType;
use eBay::API::XML::DataType::NotificationUserDataType;


my @gaProperties = ( [ 'ApplicationDeliveryPreferences', 'ns:ApplicationDeliveryPreferencesType', ''
	     ,'eBay::API::XML::DataType::ApplicationDeliveryPreferencesType', '1' ]
	, [ 'DeliveryURLName', 'xs:string', '', '', '' ]
	, [ 'EventProperty', 'ns:NotificationEventPropertyType', '1'
	     ,'eBay::API::XML::DataType::NotificationEventPropertyType', '1' ]
	, [ 'UserData', 'ns:NotificationUserDataType', ''
	     ,'eBay::API::XML::DataType::NotificationUserDataType', '1' ]
	, [ 'UserDeliveryPreferenceArray', 'ns:NotificationEnableArrayType', ''
	     ,'eBay::API::XML::DataType::NotificationEnableArrayType', '1' ]
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



=head2 setApplicationDeliveryPreferences()

Specifies application-based event preferences that have been enabled,
including the URL to which notifications should be delivered and whether
notifications should be enabled or disabled (although the
UserDeliveryPreferenceArray input property specifies specific
notification subscriptions).

  RequiredInput: No
#    Argument: 'ns:ApplicationDeliveryPreferencesType'

=cut

sub setApplicationDeliveryPreferences {
  my $self = shift;
  $self->{'ApplicationDeliveryPreferences'} = shift
}

=head2 getApplicationDeliveryPreferences()

#    Returns: 'ns:ApplicationDeliveryPreferencesType'

=cut

sub getApplicationDeliveryPreferences {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ApplicationDeliveryPreferences'
		,'eBay::API::XML::DataType::ApplicationDeliveryPreferencesType');
}


=head2 setDeliveryURLName()

For Platform Notifications, specify the name of the delivery notification URL
that you want to associate with the user token specified for
the SetNotificationPreferences call.
If, with different SetNotificationPreferences calls, you
associate multiple URL names with a single user
token, each subsequent URL name overwrites
the previous name associated with the user token.

  RequiredInput: No
#    Argument: 'xs:string'

=cut

sub setDeliveryURLName {
  my $self = shift;
  $self->{'DeliveryURLName'} = shift
}

=head2 getDeliveryURLName()

#    Returns: 'xs:string'

=cut

sub getDeliveryURLName {
  my $self = shift;
  return $self->{'DeliveryURLName'};
}


=head2 setEventProperty()

Characteristics or details of an event such as type, name and value.
Currently can only be set for wireless applications.

  RequiredInput: No
#    Argument: reference to an array  
                      of 'ns:NotificationEventPropertyType'

=cut

sub setEventProperty {
  my $self = shift;
  $self->{'EventProperty'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getEventProperty()

#    Returns: reference to an array  
                      of 'ns:NotificationEventPropertyType'

=cut

sub getEventProperty {
  my $self = shift;
  return $self->_getDataTypeArray('EventProperty');
}


=head2 setUserData()

Specifies user data for notification settings such as mobile phone number.

  RequiredInput: No
#    Argument: 'ns:NotificationUserDataType'

=cut

sub setUserData {
  my $self = shift;
  $self->{'UserData'} = shift
}

=head2 getUserData()

#    Returns: 'ns:NotificationUserDataType'

=cut

sub getUserData {
  my $self = shift;
  return $self->_getDataTypeInstance( 'UserData'
		,'eBay::API::XML::DataType::NotificationUserDataType');
}


=head2 setUserDeliveryPreferenceArray()

Array of NotificationEventEnableTypes. Each NotificationEventEnableType
contains an EventSetting and an EventType.

  RequiredInput: No
#    Argument: 'ns:NotificationEnableArrayType'

=cut

sub setUserDeliveryPreferenceArray {
  my $self = shift;
  $self->{'UserDeliveryPreferenceArray'} = shift
}

=head2 getUserDeliveryPreferenceArray()

#    Returns: 'ns:NotificationEnableArrayType'

=cut

sub getUserDeliveryPreferenceArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'UserDeliveryPreferenceArray'
		,'eBay::API::XML::DataType::NotificationEnableArrayType');
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
