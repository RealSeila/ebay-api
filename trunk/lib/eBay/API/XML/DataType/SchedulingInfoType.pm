#!/usr/bin/perl

package eBay::API::XML::DataType::SchedulingInfoType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SchedulingInfoType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::SchedulingInfoType

=head1 DESCRIPTION

Contains information for scheduling limits for the user.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::SchedulingInfoType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'MaxScheduledItems', 'xs:int', '', '', '' ]
	, [ 'MaxScheduledMinutes', 'xs:int', '', '', '' ]
	, [ 'MinScheduledMinutes', 'xs:int', '', '', '' ]
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



=head2 setMaxScheduledItems()

Maximum number of Items that a user may schedule.

#    Argument: 'xs:int'

=cut

sub setMaxScheduledItems {
  my $self = shift;
  $self->{'MaxScheduledItems'} = shift
}

=head2 getMaxScheduledItems()

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:int'

=cut

sub getMaxScheduledItems {
  my $self = shift;
  return $self->{'MaxScheduledItems'};
}


=head2 setMaxScheduledMinutes()

Maximum number of minutes that a listing may be scheduled in advance of its going live.

#    Argument: 'xs:int'

=cut

sub setMaxScheduledMinutes {
  my $self = shift;
  $self->{'MaxScheduledMinutes'} = shift
}

=head2 getMaxScheduledMinutes()

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:int'

=cut

sub getMaxScheduledMinutes {
  my $self = shift;
  return $self->{'MaxScheduledMinutes'};
}


=head2 setMinScheduledMinutes()

Minimum number of minutes that a listing may be scheduled in advance of its going live.

#    Argument: 'xs:int'

=cut

sub setMinScheduledMinutes {
  my $self = shift;
  $self->{'MinScheduledMinutes'} = shift
}

=head2 getMinScheduledMinutes()

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnAll

#    Returns: 'xs:int'

=cut

sub getMinScheduledMinutes {
  my $self = shift;
  return $self->{'MinScheduledMinutes'};
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
