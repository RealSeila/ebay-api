#!/usr/bin/perl

package eBay::API::XML::DataType::WarrantyDurationDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. WarrantyDurationDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::WarrantyDurationDetailsType

=head1 DESCRIPTION

[PD] appinfoBug



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::WarrantyDurationDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'Description', 'xs:string', '', '', '' ]
	, [ 'WarrantyDurationOption', 'xs:token', '', '', '' ]
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

Display string that applications can use to present WarrantyDurationOption in 
a more user-friendly format (such as in a drop-down list).
Not applicable as input to the AddItem family of calls. (Use WarrantyDurationOption instead.)

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


=head2 setWarrantyDurationOption()

The warranty period.
This value can be passed in the AddItem family of calls.

#    Argument: 'xs:token'

=cut

sub setWarrantyDurationOption {
  my $self = shift;
  $self->{'WarrantyDurationOption'} = shift
}

=head2 getWarrantyDurationOption()

  Calls: GeteBayDetails
  Returned: Conditionally

#    Returns: 'xs:token'

=cut

sub getWarrantyDurationOption {
  my $self = shift;
  return $self->{'WarrantyDurationOption'};
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
