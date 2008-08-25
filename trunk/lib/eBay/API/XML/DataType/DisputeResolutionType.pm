#!/usr/bin/perl

package eBay::API::XML::DataType::DisputeResolutionType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. DisputeResolutionType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::DisputeResolutionType

=head1 DESCRIPTION

Contains all information about a dispute resolution. A dispute
can have a resolution even if the seller does not receive payment.
The resolution can have various results, including a Final Value Fee credit to
the seller or a strike to the buyer.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::DisputeResolutionType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::DisputeResolutionReasonCodeType;
use eBay::API::XML::DataType::Enum::DisputeResolutionRecordTypeCodeType;


my @gaProperties = ( [ 'DisputeResolutionReason', 'ns:DisputeResolutionReasonCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::DisputeResolutionReasonCodeType', '' ]
	, [ 'DisputeResolutionRecordType', 'ns:DisputeResolutionRecordTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::DisputeResolutionRecordTypeCodeType', '' ]
	, [ 'ResolutionTime', 'xs:dateTime', '', '', '' ]
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



=head2 setDisputeResolutionReason()

The reason for the resolution. The DisputeResolutionReason
results in the action described by the DisputeResolutionRecordType.

#    Argument: 'ns:DisputeResolutionReasonCodeType'

=cut

sub setDisputeResolutionReason {
  my $self = shift;
  $self->{'DisputeResolutionReason'} = shift
}

=head2 getDisputeResolutionReason()

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnAll, none

#    Returns: 'ns:DisputeResolutionReasonCodeType'

=cut

sub getDisputeResolutionReason {
  my $self = shift;
  return $self->{'DisputeResolutionReason'};
}


=head2 setDisputeResolutionRecordType()

The action resulting from the resolution, affecting either
the buyer or the seller.

#    Argument: 'ns:DisputeResolutionRecordTypeCodeType'

=cut

sub setDisputeResolutionRecordType {
  my $self = shift;
  $self->{'DisputeResolutionRecordType'} = shift
}

=head2 getDisputeResolutionRecordType()

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnAll, none

#    Returns: 'ns:DisputeResolutionRecordTypeCodeType'

=cut

sub getDisputeResolutionRecordType {
  my $self = shift;
  return $self->{'DisputeResolutionRecordType'};
}


=head2 setResolutionTime()

The date and time the dispute was resolved, in GMT.

#    Argument: 'xs:dateTime'

=cut

sub setResolutionTime {
  my $self = shift;
  $self->{'ResolutionTime'} = shift
}

=head2 getResolutionTime()

  Calls: GetUserDisputes
  Returned: Conditionally
  Details: DetailLevel: ReturnAll, none

#    Returns: 'xs:dateTime'

=cut

sub getResolutionTime {
  my $self = shift;
  return $self->{'ResolutionTime'};
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