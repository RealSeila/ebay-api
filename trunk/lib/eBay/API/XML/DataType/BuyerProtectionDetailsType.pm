#!/usr/bin/perl

package eBay::API::XML::DataType::BuyerProtectionDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. BuyerProtectionDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::BuyerProtectionDetailsType

=head1 DESCRIPTION

Contains the data for different buyer protection schemes and the various status associated with each one of them.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::BuyerProtectionDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::BuyerProtectionCodeType;
use eBay::API::XML::DataType::Enum::BuyerProtectionSourceCodeType;


my @gaProperties = ( [ 'BuyerProtectionSource', 'ns:BuyerProtectionSourceCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::BuyerProtectionSourceCodeType', '' ]
	, [ 'BuyerProtectionStatus', 'ns:BuyerProtectionCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::BuyerProtectionCodeType', '' ]
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



=head2 setBuyerProtectionSource()

Indicates the type of Buyer Protection applicable for a particular item, such as 
eBay for the eBay Standard Purchase Protection Program or PayPal for the PayPal 
Protection Program.

#    Argument: 'ns:BuyerProtectionSourceCodeType'

=cut

sub setBuyerProtectionSource {
  my $self = shift;
  $self->{'BuyerProtectionSource'} = shift
}

=head2 getBuyerProtectionSource()

  Calls: GetItemTransactions
  Returned: Conditionally

  Calls: GetOrderTransactions
  Returned: Conditionally

  Calls: GetSellerTransactions
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally

  Calls: GetSearchResults
  Returned: Conditionally

#    Returns: 'ns:BuyerProtectionSourceCodeType'

=cut

sub getBuyerProtectionSource {
  my $self = shift;
  return $self->{'BuyerProtectionSource'};
}


=head2 setBuyerProtectionStatus()

Indicates the status of the item's eligibility for a Buyer Protection Program.

#    Argument: 'ns:BuyerProtectionCodeType'

=cut

sub setBuyerProtectionStatus {
  my $self = shift;
  $self->{'BuyerProtectionStatus'} = shift
}

=head2 getBuyerProtectionStatus()

  Calls: GetItemTransactions
  Returned: Conditionally

  Calls: GetOrderTransactions
  Returned: Conditionally

  Calls: GetSellerTransactions
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally

  Calls: GetSearchResults
  Returned: Conditionally

#    Returns: 'ns:BuyerProtectionCodeType'

=cut

sub getBuyerProtectionStatus {
  my $self = shift;
  return $self->{'BuyerProtectionStatus'};
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
