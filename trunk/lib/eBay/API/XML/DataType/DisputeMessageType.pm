#!/usr/bin/perl

package eBay::API::XML::DataType::DisputeMessageType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. DisputeMessageType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::DisputeMessageType

=head1 DESCRIPTION

Contains a message posted to a dispute. The message can be posted
by the buyer, the seller, or an eBay representative.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::DisputeMessageType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::DisputeMessageSourceCodeType;


my @gaProperties = ( [ 'MessageCreationTime', 'xs:dateTime', '', '', '' ]
	, [ 'MessageID', 'xs:int', '', '', '' ]
	, [ 'MessageSource', 'ns:DisputeMessageSourceCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::DisputeMessageSourceCodeType', '' ]
	, [ 'MessageText', 'xs:string', '', '', '' ]
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



=head2 setMessageCreationTime()

The date and time the message was created, in GMT.

#    Argument: 'xs:dateTime'

=cut

sub setMessageCreationTime {
  my $self = shift;
  $self->{'MessageCreationTime'} = shift
}

=head2 getMessageCreationTime()

  Calls: GetDispute
  Returned: Always

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnAll, none

#    Returns: 'xs:dateTime'

=cut

sub getMessageCreationTime {
  my $self = shift;
  return $self->{'MessageCreationTime'};
}


=head2 setMessageID()

An ID that uniquely identifies the message.

#    Argument: 'xs:int'

=cut

sub setMessageID {
  my $self = shift;
  $self->{'MessageID'} = shift
}

=head2 getMessageID()

  Calls: GetDispute
  Returned: Always

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnAll, none

#    Returns: 'xs:int'

=cut

sub getMessageID {
  my $self = shift;
  return $self->{'MessageID'};
}


=head2 setMessageSource()

The party who posted the message: the buyer, the seller,
or an eBay representative.

#    Argument: 'ns:DisputeMessageSourceCodeType'

=cut

sub setMessageSource {
  my $self = shift;
  $self->{'MessageSource'} = shift
}

=head2 getMessageSource()

  Calls: GetDispute
  Returned: Always

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnAll, none

#    Returns: 'ns:DisputeMessageSourceCodeType'

=cut

sub getMessageSource {
  my $self = shift;
  return $self->{'MessageSource'};
}


=head2 setMessageText()

The text of the message.

#    Argument: 'xs:string'

=cut

sub setMessageText {
  my $self = shift;
  $self->{'MessageText'} = shift
}

=head2 getMessageText()

  Calls: GetDispute
  Returned: Always

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnAll, none

#    Returns: 'xs:string'

=cut

sub getMessageText {
  my $self = shift;
  return $self->{'MessageText'};
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
