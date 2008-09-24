#!/usr/bin/perl

package eBay::API::XML::Call::GetNotificationsUsage;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetNotificationsUsage.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetNotificationsUsage

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetNotificationsUsage inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetNotificationsUsage::GetNotificationsUsageRequestType;
use eBay::API::XML::Call::GetNotificationsUsage::GetNotificationsUsageResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetNotificationsUsage';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetNotificationsUsage::GetNotificationsUsageRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetNotificationsUsage::GetNotificationsUsageResponseType';
}

#
# input properties
#

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
   my $self   = shift;
   my $sEndTime = shift;
   $self->getRequestDataType()->setEndTime($sEndTime);
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
   my $self   = shift;
   my $pItemID = shift;
   $self->getRequestDataType()->setItemID($pItemID);
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
   my $self   = shift;
   my $sStartTime = shift;
   $self->getRequestDataType()->setStartTime($sStartTime);
}



#
# output properties
#

=head2 getEndTime()

Returns the end date and time for the notification information that is
returned by this call. The default is Now.

  Returned: Always
#    Returns: 'xs:dateTime'

=cut
       
sub getEndTime {
   my $self = shift;
   return $self->getResponseDataType()->getEndTime();
}

=head2 getMarkUpMarkDownHistory()

List of objects representing MarkUp or MarkDown history for a given appID
and for given StartTime and EndTime. This node will always be returned.

  Returned: Always
#    Returns: 'ns:MarkUpMarkDownHistoryType'

=cut
       
sub getMarkUpMarkDownHistory {
   my $self = shift;
   return $self->getResponseDataType()->getMarkUpMarkDownHistory();
}

=head2 getNotificationDetailsArray()

List of notification objects representing the notifications sent to an
application for the given time period. It will only be returned if ItemID
was specified in the input request.

  Returned: Conditionally
#    Returns: 'ns:NotificationDetailsArrayType'

=cut
       
sub getNotificationDetailsArray {
   my $self = shift;
   return $self->getResponseDataType()->getNotificationDetailsArray();
}

=head2 getNotificationStatistics()

Summary information about number of notifications that were successfully
delivered, queued, failed, connection attempts made, connection timeouts,
http errors for the given appID and given time period. By default, statistics
for only one day (Now-1day) is included. Maximum time duration allowed is 3 days
(Now-3days).

  Returned: Always
#    Returns: 'ns:NotificationStatisticsType'

=cut
       
sub getNotificationStatistics {
   my $self = shift;
   return $self->getResponseDataType()->getNotificationStatistics();
}

=head2 getStartTime()

Returns the start date and time for the notification information that is
returned by this call. The oldest date allowed for this field is Now-3days.
Default is Now-1day.

  Returned: Always
#    Returns: 'xs:dateTime'

=cut
       
sub getStartTime {
   my $self = shift;
   return $self->getResponseDataType()->getStartTime();
}





1;   
