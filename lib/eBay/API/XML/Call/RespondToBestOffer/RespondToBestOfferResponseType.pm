#!/usr/bin/perl

package eBay::API::XML::Call::RespondToBestOffer::RespondToBestOfferResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. RespondToBestOfferResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::RespondToBestOffer::RespondToBestOfferResponseType

=head1 DESCRIPTION

Contains a list of BestOffers that were either accepted or declined.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::RespondToBestOffer::RespondToBestOfferResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::BestOfferArrayType;


my @gaProperties = ( [ 'RespondToBestOffer', 'ns:BestOfferArrayType', ''
	     ,'eBay::API::XML::DataType::BestOfferArrayType', '1' ]
                    );
push @gaProperties, @{eBay::API::XML::ResponseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::ResponseDataType::getAttributesList()};

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



=head2 setRespondToBestOffer()

A list of BestOffers that were either accepted or declined.

#    Argument: 'ns:BestOfferArrayType'

=cut

sub setRespondToBestOffer {
  my $self = shift;
  $self->{'RespondToBestOffer'} = shift
}

=head2 getRespondToBestOffer()

  Returned: Always
#    Returns: 'ns:BestOfferArrayType'

=cut

sub getRespondToBestOffer {
  my $self = shift;
  return $self->_getDataTypeInstance( 'RespondToBestOffer'
		,'eBay::API::XML::DataType::BestOfferArrayType');
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
