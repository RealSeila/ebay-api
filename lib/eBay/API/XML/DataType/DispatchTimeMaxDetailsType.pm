#!/usr/bin/perl

package eBay::API::XML::DataType::DispatchTimeMaxDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. DispatchTimeMaxDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::DispatchTimeMaxDetailsType

=head1 DESCRIPTION

Details about a specific maximum dispatch time, the maximum number of business
days required to ship an item to domestic buyers after receiving a cleared
payment.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::DispatchTimeMaxDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'Description', 'xs:string', '', '', '' ]
	, [ 'DispatchTimeMax', 'xs:int', '', '', '' ]
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

Value and unit (e.g., 10 Days) for the maximum dispatch time.
Useful for display purposes.

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


=head2 setDispatchTimeMax()

Integer value (1, 2, 3, 4, 5, 10, 15, or 20) corresponding to the
maximum dispatch time. <br><br>
Related field:<br>
Item.DispatchTimeMax in AddItem

#    Argument: 'xs:int'

=cut

sub setDispatchTimeMax {
  my $self = shift;
  $self->{'DispatchTimeMax'} = shift
}

=head2 getDispatchTimeMax()

  Calls: GeteBayDetails
  Returned: Conditionally

#    Returns: 'xs:int'

=cut

sub getDispatchTimeMax {
  my $self = shift;
  return $self->{'DispatchTimeMax'};
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
