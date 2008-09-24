#!/usr/bin/perl

package eBay::API::XML::DataType::eBayMotorsProAdFormatEnabledDefinitionType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. eBayMotorsProAdFormatEnabledDefinitionType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::eBayMotorsProAdFormatEnabledDefinitionType

=head1 DESCRIPTION

Defines the AdFormatEnabled feature. If this field is present, 
the corresponding feature applies to the category. The field 
is returned as an empty element (e.g., a boolean value is not returned).
Added for EbayMotors Pro users.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::eBayMotorsProAdFormatEnabledDefinitionType inherits from the L<eBay::API::XML::BaseDataType> class

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