#!/usr/bin/perl

package eBay::API::XML::DataType::MyMessagesResponseDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. MyMessagesResponseDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::MyMessagesResponseDetailsType

=head1 DESCRIPTION

Details relating to the response to an alert or message.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::MyMessagesResponseDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'ResponseEnabled', 'xs:boolean', '', '', '' ]
	, [ 'ResponseURL', 'xs:anyURI', '', '', '' ]
	, [ 'UserResponseDate', 'xs:dateTime', '', '', '' ]
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



=head2 setResponseEnabled()

Whether or not an alert or message can be responded
to. To respond to an alert or message, use the URL
in ResponseURL. You may need to log into the eBay
Web site to complete the response.

#    Argument: 'xs:boolean'

=cut

sub setResponseEnabled {
  my $self = shift;
  $self->{'ResponseEnabled'} = shift
}

=head2 isResponseEnabled()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages
  Context: Alerts
           Messages

#    Returns: 'xs:boolean'

=cut

sub isResponseEnabled {
  my $self = shift;
  return $self->{'ResponseEnabled'};
}


=head2 setResponseURL()

A URL that the recipient must visit to respond to an
alert or message. Responding may require logging
into the eBay Web site.

#    Argument: 'xs:anyURI'

=cut

sub setResponseURL {
  my $self = shift;
  $self->{'ResponseURL'} = shift
}

=head2 getResponseURL()

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnMessages
  Context: Alerts

  Calls: GetMyMessages
  Returned: Conditionally
  Details: DetailLevel: ReturnHeaders, ReturnMessages
  Context: Messages

#    Returns: 'xs:anyURI'

=cut

sub getResponseURL {
  my $self = shift;
  return $self->{'ResponseURL'};
}


=head2 setUserResponseDate()

The date and time the user responded to an alert or
message

#    Argument: 'xs:dateTime'

=cut

sub setUserResponseDate {
  my $self = shift;
  $self->{'UserResponseDate'} = shift
}

=head2 getUserResponseDate()

#    Returns: 'xs:dateTime'

=cut

sub getUserResponseDate {
  my $self = shift;
  return $self->{'UserResponseDate'};
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