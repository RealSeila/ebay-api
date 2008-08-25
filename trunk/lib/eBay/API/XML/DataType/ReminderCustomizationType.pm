#!/usr/bin/perl

package eBay::API::XML::DataType::ReminderCustomizationType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ReminderCustomizationType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ReminderCustomizationType

=head1 DESCRIPTION

Specifies how to return certain reminder types from the user's My eBay account.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ReminderCustomizationType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'DurationInDays', 'xs:int', '', '', '' ]
	, [ 'Include', 'xs:boolean', '', '', '' ]
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



=head2 setDurationInDays()

The length of time the reminder has existed in the user's My eBay account,
in days. Valid values are 1-60.

  Calls: GetMyeBayReminders
  RequiredInput: No

#    Argument: 'xs:int'

=cut

sub setDurationInDays {
  my $self = shift;
  $self->{'DurationInDays'} = shift
}

=head2 getDurationInDays()

#    Returns: 'xs:int'

=cut

sub getDurationInDays {
  my $self = shift;
  return $self->{'DurationInDays'};
}


=head2 setInclude()

Whether to include information about this type of reminder in the response.
When true, the container is returned with default input parameters.

  Calls: GetMyeBayReminders
  RequiredInput: No

#    Argument: 'xs:boolean'

=cut

sub setInclude {
  my $self = shift;
  $self->{'Include'} = shift
}

=head2 isInclude()

#    Returns: 'xs:boolean'

=cut

sub isInclude {
  my $self = shift;
  return $self->{'Include'};
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
