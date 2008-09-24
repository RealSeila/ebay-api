#!/usr/bin/perl

package eBay::API::XML::DataType::StoreSubscriptionType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. StoreSubscriptionType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::StoreSubscriptionType

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::StoreSubscriptionType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AmountType;
use eBay::API::XML::DataType::Enum::StoreSubscriptionLevelCodeType;


my @gaProperties = ( [ 'Fee', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'Level', 'ns:StoreSubscriptionLevelCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::StoreSubscriptionLevelCodeType', '' ]
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



=head2 setFee()

Monthly fee for the Store subscription level.

#    Argument: 'ns:AmountType'

=cut

sub setFee {
  my $self = shift;
  $self->{'Fee'} = shift
}

=head2 getFee()

  Calls: GetStoreOptions
  Returned: Always

#    Returns: 'ns:AmountType'

=cut

sub getFee {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Fee'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setLevel()

Store subscription level.

#    Argument: 'ns:StoreSubscriptionLevelCodeType'

=cut

sub setLevel {
  my $self = shift;
  $self->{'Level'} = shift
}

=head2 getLevel()

  Calls: GetStoreOptions
  Returned: Always
  OnlyTheseValues: Anchor, Basic, Featured

#    Returns: 'ns:StoreSubscriptionLevelCodeType'

=cut

sub getLevel {
  my $self = shift;
  return $self->{'Level'};
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
