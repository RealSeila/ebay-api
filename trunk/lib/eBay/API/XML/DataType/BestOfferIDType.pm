#!/usr/bin/perl

package eBay::API::XML::DataType::BestOfferIDType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. BestOfferIDType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::BestOfferIDType

=head1 DESCRIPTION

Unique identifier for a best offer (to differentiate from
other best offers for the same item).



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::BestOfferIDType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'content', 'xs:string', '', '', '' ]
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



=head2 setValue()

#    Argument: 'xs:string'

=cut

sub setValue {
  my $self = shift;
  $self->{'content'} = shift
}

=head2 getValue()

#    Returns: 'xs:string'

=cut

sub getValue {
  my $self = shift;
  return $self->{'content'};
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
