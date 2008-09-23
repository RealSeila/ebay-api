#!/usr/bin/perl

package eBay::API::XML::Call::GetPromotionalSaleDetails::GetPromotionalSaleDetailsRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetPromotionalSaleDetailsRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetPromotionalSaleDetails::GetPromotionalSaleDetailsRequestType

=head1 DESCRIPTION

Used to obtain information about promotional sales.
If you do not specify a PromotionalSaleID, then
GetPromotionalSaleDetails returns all promotional sales
for the seller making the call.
Promotional sales apply to single and multi-quantity Store Inventory format, 
regular fixed-price format, auction, and auction/BIN formats. 
Auction and auction/BIN format listings can be added free shipping sales only.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetPromotionalSaleDetails::GetPromotionalSaleDetailsRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");



my @gaProperties = ( [ 'PromotionalSaleID', 'xs:long', '', '', '' ]
                    );
push @gaProperties, @{eBay::API::XML::RequestDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::RequestDataType::getAttributesList()};

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



=head2 setPromotionalSaleID()

The ID of the promotional sale about which you want information.
If you do not specify this field, then GetPromotionalSaleDetails returns
all promotional sales for the seller making the call.

  RequiredInput: No
#    Argument: 'xs:long'

=cut

sub setPromotionalSaleID {
  my $self = shift;
  $self->{'PromotionalSaleID'} = shift
}

=head2 getPromotionalSaleID()

#    Returns: 'xs:long'

=cut

sub getPromotionalSaleID {
  my $self = shift;
  return $self->{'PromotionalSaleID'};
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