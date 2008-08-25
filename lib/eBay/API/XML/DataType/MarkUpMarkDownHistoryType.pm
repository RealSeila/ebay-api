#!/usr/bin/perl

package eBay::API::XML::DataType::MarkUpMarkDownHistoryType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. MarkUpMarkDownHistoryType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::MarkUpMarkDownHistoryType

=head1 DESCRIPTION

List of objects representing markup or markdown events for a given application
and time period. If no time period is specified in the request, the information
for only one day (24 hours before the time the call is made to the time the call
is made) is included. The maximum time period is allowed is 3 days (72 hours
before the call is made to the time the call is made).



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::MarkUpMarkDownHistoryType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::MarkUpMarkDownEventType;


my @gaProperties = ( [ 'MarkUpMarkDownEvent', 'ns:MarkUpMarkDownEventType', '1'
	     ,'eBay::API::XML::DataType::MarkUpMarkDownEventType', '1' ]
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



=head2 setMarkUpMarkDownEvent()

Details for a MarkDown or MarkUp event.

#    Argument: reference to an array  
                      of 'ns:MarkUpMarkDownEventType'

=cut

sub setMarkUpMarkDownEvent {
  my $self = shift;
  $self->{'MarkUpMarkDownEvent'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getMarkUpMarkDownEvent()

  Calls: GetNotificationsUsage
  Returned: Conditionally

#    Returns: reference to an array  
                      of 'ns:MarkUpMarkDownEventType'

=cut

sub getMarkUpMarkDownEvent {
  my $self = shift;
  return $self->_getDataTypeArray('MarkUpMarkDownEvent');
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
