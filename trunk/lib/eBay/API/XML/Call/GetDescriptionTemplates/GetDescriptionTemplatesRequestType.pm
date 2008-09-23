#!/usr/bin/perl

package eBay::API::XML::Call::GetDescriptionTemplates::GetDescriptionTemplatesRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetDescriptionTemplatesRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetDescriptionTemplates::GetDescriptionTemplatesRequestType

=head1 DESCRIPTION

Request for DescriptionTemplates.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetDescriptionTemplates::GetDescriptionTemplatesRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");



my @gaProperties = ( [ 'CategoryID', 'xs:string', '', '', '' ]
	, [ 'LastModifiedTime', 'xs:dateTime', '', '', '' ]
	, [ 'MotorVehicles', 'xs:boolean', '', '', '' ]
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



=head2 setCategoryID()

The category for which to retrieve templates. Enter any
category ID, including Motors vehicle categories. This
is ignored if you also send MotorVehicles.

MaxLength: 10

  RequiredInput: No
#    Argument: 'xs:string'

=cut

sub setCategoryID {
  my $self = shift;
  $self->{'CategoryID'} = shift
}

=head2 getCategoryID()

#    Returns: 'xs:string'

=cut

sub getCategoryID {
  my $self = shift;
  return $self->{'CategoryID'};
}


=head2 setLastModifiedTime()

If specified, only those templates modified on or after the
specified date are returned. If not specified, all templates are returned.

  RequiredInput: No
#    Argument: 'xs:dateTime'

=cut

sub setLastModifiedTime {
  my $self = shift;
  $self->{'LastModifiedTime'} = shift
}

=head2 getLastModifiedTime()

#    Returns: 'xs:dateTime'

=cut

sub getLastModifiedTime {
  my $self = shift;
  return $self->{'LastModifiedTime'};
}


=head2 setMotorVehicles()

Indicates whether to retrieve templates for motor vehicle
categories for eBay Motors (site 100). If true, templates
are returned for motor vehicle categories. If false,
templates are returned for non-motor vehicle categories
such as Parts and Accessories. If included as an input field (whether true or false), this overrides any value provided for CategoryID.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setMotorVehicles {
  my $self = shift;
  $self->{'MotorVehicles'} = shift
}

=head2 isMotorVehicles()

#    Returns: 'xs:boolean'

=cut

sub isMotorVehicles {
  my $self = shift;
  return $self->{'MotorVehicles'};
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
