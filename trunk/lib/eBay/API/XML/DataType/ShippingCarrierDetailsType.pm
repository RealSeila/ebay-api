#!/usr/bin/perl

package eBay::API::XML::DataType::ShippingCarrierDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ShippingCarrierDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ShippingCarrierDetailsType

=head1 DESCRIPTION

Details about type of Carrier used to ship an item.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ShippingCarrierDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::ShippingCarrierCodeType;


my @gaProperties = ( [ 'Description', 'xs:string', '', '', '' ]
	, [ 'ShippingCarrier', 'ns:ShippingCarrierCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::ShippingCarrierCodeType', '' ]
	, [ 'ShippingCarrierID', 'xs:int', '', '', '' ]
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

Full name of the shipping Carrier for display purposes.

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


=head2 setShippingCarrier()

Value used for the shipping Carrier.

#    Argument: 'ns:ShippingCarrierCodeType'

=cut

sub setShippingCarrier {
  my $self = shift;
  $self->{'ShippingCarrier'} = shift
}

=head2 getShippingCarrier()

  Calls: GeteBayDetails
  Returned: Conditionally

#    Returns: 'ns:ShippingCarrierCodeType'

=cut

sub getShippingCarrier {
  my $self = shift;
  return $self->{'ShippingCarrier'};
}


=head2 setShippingCarrierID()

Numeric identifier.
Some applications use this ID
to look up shipping Carriers more efficiently.

#    Argument: 'xs:int'

=cut

sub setShippingCarrierID {
  my $self = shift;
  $self->{'ShippingCarrierID'} = shift
}

=head2 getShippingCarrierID()

  Calls: GeteBayDetails
  Returned: Conditionally

#    Returns: 'xs:int'

=cut

sub getShippingCarrierID {
  my $self = shift;
  return $self->{'ShippingCarrierID'};
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