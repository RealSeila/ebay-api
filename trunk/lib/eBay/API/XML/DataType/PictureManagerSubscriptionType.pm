#!/usr/bin/perl

package eBay::API::XML::DataType::PictureManagerSubscriptionType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PictureManagerSubscriptionType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::PictureManagerSubscriptionType

=head1 DESCRIPTION

Describes one type of Picture Manager subscription that is available.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::PictureManagerSubscriptionType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AmountType;
use eBay::API::XML::DataType::Enum::PictureManagerSubscriptionLevelCodeType;


my @gaProperties = ( [ 'Fee', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'StorageSize', 'xs:int', '', '', '' ]
	, [ 'SubscriptionLevel', 'ns:PictureManagerSubscriptionLevelCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::PictureManagerSubscriptionLevelCodeType', '' ]
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

The monthly fee for the subscription. Read-only value.

#    Argument: 'ns:AmountType'

=cut

sub setFee {
  my $self = shift;
  $self->{'Fee'} = shift
}

=head2 getFee()

  Calls: GetPictureManagerOptions
  Returned: Always

#    Returns: 'ns:AmountType'

=cut

sub getFee {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Fee'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setStorageSize()

The total amount of storage space available for the subscription type.
Read-only value.

#    Argument: 'xs:int'

=cut

sub setStorageSize {
  my $self = shift;
  $self->{'StorageSize'} = shift
}

=head2 getStorageSize()

  Calls: GetPictureManagerOptions
  Returned: Always

#    Returns: 'xs:int'

=cut

sub getStorageSize {
  my $self = shift;
  return $self->{'StorageSize'};
}


=head2 setSubscriptionLevel()

The level of Picture Manager subscription. Each level has a
monthly fee and provides a certain amount of storage space.

#    Argument: 'ns:PictureManagerSubscriptionLevelCodeType'

=cut

sub setSubscriptionLevel {
  my $self = shift;
  $self->{'SubscriptionLevel'} = shift
}

=head2 getSubscriptionLevel()

  Calls: GetPictureManagerOptions
  Returned: Always

#    Returns: 'ns:PictureManagerSubscriptionLevelCodeType'

=cut

sub getSubscriptionLevel {
  my $self = shift;
  return $self->{'SubscriptionLevel'};
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
