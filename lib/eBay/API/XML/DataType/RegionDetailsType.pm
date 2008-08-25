#!/usr/bin/perl

package eBay::API::XML::DataType::RegionDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. RegionDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::RegionDetailsType

=head1 DESCRIPTION

Details about a region.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::RegionDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'Description', 'xs:string', '', '', '' ]
	, [ 'RegionID', 'xs:string', '', '', '' ]
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



=head2 setDescription()

Full name of the region.

#    Argument: 'xs:string'

=cut

sub setDescription {
  my $self = shift;
  $self->{'Description'} = shift
}

=head2 getDescription()

  Calls: GeteBayDetails
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getDescription {
  my $self = shift;
  return $self->{'Description'};
}


=head2 setRegionID()

Numeric identifier for a region within a country.

Ignore: 
#    Argument: 'xs:string'

=cut

sub setRegionID {
  my $self = shift;
  $self->{'RegionID'} = shift
}

=head2 getRegionID()

  Calls: GeteBayDetails
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getRegionID {
  my $self = shift;
  return $self->{'RegionID'};
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