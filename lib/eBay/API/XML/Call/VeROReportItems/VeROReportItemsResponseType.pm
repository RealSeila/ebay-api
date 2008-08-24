#!/usr/bin/perl

package eBay::API::XML::Call::VeROReportItems::VeROReportItemsResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. VeROReportItemsResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::VeROReportItems::VeROReportItemsResponseType

=head1 DESCRIPTION

Contains a packet ID and status for the items reported by the VeRO Program member.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::VeROReportItems::VeROReportItemsResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::Enum::VeROReportPacketStatusCodeType;


my @gaProperties = ( [ 'VeROReportPacketID', 'xs:long', '', '', '' ]
	, [ 'VeROReportPacketStatus', 'ns:VeROReportPacketStatusCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::VeROReportPacketStatusCodeType', '' ]
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



=head2 setVeROReportPacketID()

A unique packet identifier for the items reported.

Max: Min: 
#    Argument: 'xs:long'

=cut

sub setVeROReportPacketID {
  my $self = shift;
  $self->{'VeROReportPacketID'} = shift
}

=head2 getVeROReportPacketID()

  Returned: Conditionally
#    Returns: 'xs:long'

=cut

sub getVeROReportPacketID {
  my $self = shift;
  return $self->{'VeROReportPacketID'};
}


=head2 setVeROReportPacketStatus()

The processing status of the packet.

#    Argument: 'ns:VeROReportPacketStatusCodeType'

=cut

sub setVeROReportPacketStatus {
  my $self = shift;
  $self->{'VeROReportPacketStatus'} = shift
}

=head2 getVeROReportPacketStatus()

  Returned: Conditionally
#    Returns: 'ns:VeROReportPacketStatusCodeType'

=cut

sub getVeROReportPacketStatus {
  my $self = shift;
  return $self->{'VeROReportPacketStatus'};
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
