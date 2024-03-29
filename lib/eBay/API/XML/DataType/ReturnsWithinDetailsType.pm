#!/usr/bin/perl

package eBay::API::XML::DataType::ReturnsWithinDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ReturnsWithinDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ReturnsWithinDetailsType

=head1 DESCRIPTION

[PD] appinfoBug



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ReturnsWithinDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'Description', 'xs:string', '', '', '' ]
	, [ 'ReturnsWithinOption', 'xs:token', '', '', '' ]
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

Display string that applications can use to present ReturnsWithinOption in 
a more user-friendly format (such as in a drop-down list).
Not applicable as input to the AddItem family of calls. (Use ReturnsWithinOption instead.)

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


=head2 setReturnsWithinOption()

The buyer can return the item within this period of time from 
the day they receive the item.
This value can be passed in the AddItem family of calls.

#    Argument: 'xs:token'

=cut

sub setReturnsWithinOption {
  my $self = shift;
  $self->{'ReturnsWithinOption'} = shift
}

=head2 getReturnsWithinOption()

  Calls: GeteBayDetails
  Returned: Conditionally

#    Returns: 'xs:token'

=cut

sub getReturnsWithinOption {
  my $self = shift;
  return $self->{'ReturnsWithinOption'};
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
