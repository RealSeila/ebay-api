#!/usr/bin/perl

package eBay::API::XML::DataType::RegularSubscriptionDefinitionType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. RegularSubscriptionDefinitionType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::RegularSubscriptionDefinitionType

=head1 DESCRIPTION

Indicates category support for listing of Local Market items by sellers
subscribed to Local Market for Regular Vehicles.
Each of the subscriptions will have following options, which will define
"National" vs "Local" ad format listing.
"LocalOptional" : This will allow national and local listing.
"LocalOnly" : Seller can have Local listings only.
"NationalOnly" : Seller can not opt into local only exposure. It has to be 
national listing.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::RegularSubscriptionDefinitionType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( 
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
