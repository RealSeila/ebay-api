#!/usr/bin/perl

package eBay::API::XML::DataType::LocalMarketRegularSubscriptionDefinitionType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. LocalMarketRegularSubscriptionDefinitionType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::LocalMarketRegularSubscriptionDefinitionType

=head1 DESCRIPTION

Defines the LocalMarketRegularSubscription feature. If this field 
is present, the corresponding feature applies to the category. The 
field is returned as an empty element (i.e., a boolean value is not 
returned). A subscription for Local Market for Vehicles will be 
returned by GetUser if a dealer has subscribed to any of the following 
Local Market Regular sub-types: Vehicles Regular Six Months, 
Vehicles Regular Special Promotion, Vehicles Regular Multistore 
Level S, Vehicles Regular Multistore Level M, or Vehicles Regular 
Multistore Level L. Each of these sub-types has a separate discount 
and billing cycle.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::LocalMarketRegularSubscriptionDefinitionType inherits from the L<eBay::API::XML::BaseDataType> class

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
