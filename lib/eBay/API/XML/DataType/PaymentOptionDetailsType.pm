#!/usr/bin/perl

package eBay::API::XML::DataType::PaymentOptionDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PaymentOptionDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::PaymentOptionDetailsType

=head1 DESCRIPTION

Details about a specific payment option.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::PaymentOptionDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::BuyerPaymentMethodCodeType;


my @gaProperties = ( [ 'Description', 'xs:string', '', '', '' ]
	, [ 'PaymentOption', 'ns:BuyerPaymentMethodCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::BuyerPaymentMethodCodeType', '' ]
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

Full name of the payment method for display purposes.

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


=head2 setPaymentOption()

A payment method value defined in the schema.<br><br>
Related fields:<br>
Item.PaymentMethods in AddItem<br>
PaymentMethodUsed in ReviseCheckoutStatus

#    Argument: 'ns:BuyerPaymentMethodCodeType'

=cut

sub setPaymentOption {
  my $self = shift;
  $self->{'PaymentOption'} = shift
}

=head2 getPaymentOption()

  Calls: GeteBayDetails
  Returned: Conditionally

#    Returns: 'ns:BuyerPaymentMethodCodeType'

=cut

sub getPaymentOption {
  my $self = shift;
  return $self->{'PaymentOption'};
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
