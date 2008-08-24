#!/usr/bin/perl

package eBay::API::XML::DataType::RegionOfOriginDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. RegionOfOriginDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::RegionOfOriginDetailsType

=head1 DESCRIPTION

Details about a region.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::RegionOfOriginDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::StatusCodeType;


my @gaProperties = ( [ 'Description', 'xs:string', '', '', '' ]
	, [ 'RegionOfOrigin', 'xs:string', '', '', '' ]
	, [ 'Status', 'ns:StatusCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::StatusCodeType', '' ]
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


=head2 setRegionOfOrigin()

Numeric identifier for a region within a country.
Permissible values are as in ShippingRegionCodeList.xsd
and CountryCodeList.xsd

Ignore: 
#    Argument: 'xs:string'

=cut

sub setRegionOfOrigin {
  my $self = shift;
  $self->{'RegionOfOrigin'} = shift
}

=head2 getRegionOfOrigin()

  Calls: GeteBayDetails
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getRegionOfOrigin {
  my $self = shift;
  return $self->{'RegionOfOrigin'};
}


=head2 setStatus()

Indicates status of Region of Origin

#    Argument: 'ns:StatusCodeType'

=cut

sub setStatus {
  my $self = shift;
  $self->{'Status'} = shift
}

=head2 getStatus()

#    Returns: 'ns:StatusCodeType'

=cut

sub getStatus {
  my $self = shift;
  return $self->{'Status'};
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
