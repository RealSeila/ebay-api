#!/usr/bin/perl

package eBay::API::XML::DataType::TaxJurisdictionType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. TaxJurisdictionType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::TaxJurisdictionType

=head1 DESCRIPTION

Tax-related details for a region or jurisdiction.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::TaxJurisdictionType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'JurisdictionID', 'xs:string', '', '', '' ]
	, [ 'JurisdictionName', 'xs:string', '', '', '' ]
	, [ 'SalesTaxPercent', 'xs:float', '', '', '' ]
	, [ 'ShippingIncludedInTax', 'xs:boolean', '', '', '' ]
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



=head2 setJurisdictionID()

Representative identifier for the jurisdiction. Typically an
abbreviation (e.g. CA for California).

  Calls: SetTaxTable
  RequiredInput: Yes

#    Argument: 'xs:string'

=cut

sub setJurisdictionID {
  my $self = shift;
  $self->{'JurisdictionID'} = shift
}

=head2 getJurisdictionID()

  Calls: GetBidderList
         GeteBayDetails
         GetItemShipping
         GetTaxTable
         GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ReturnAll, none

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'xs:string'

=cut

sub getJurisdictionID {
  my $self = shift;
  return $self->{'JurisdictionID'};
}


=head2 setJurisdictionName()

Full name for the jurisdiction or region for display purposes.

#    Argument: 'xs:string'

=cut

sub setJurisdictionName {
  my $self = shift;
  $self->{'JurisdictionName'} = shift
}

=head2 getJurisdictionName()

  Calls: GeteBayDetails
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getJurisdictionName {
  my $self = shift;
  return $self->{'JurisdictionName'};
}


=head2 setSalesTaxPercent()

The tax percent to apply for a listing shipped to this
jurisdiction. The value passed in is stored with a precision of
3 digits after the decimal point (##.###).
GetTaxTable: this tag has no value if the user's tax table has not been set.

  Calls: SetTaxTable
  RequiredInput: Yes

#    Argument: 'xs:float'

=cut

sub setSalesTaxPercent {
  my $self = shift;
  $self->{'SalesTaxPercent'} = shift
}

=head2 getSalesTaxPercent()

  Calls: GetBidderList
         GetItemShipping
         GetSellerList
         GetTaxTable
  Returned: Conditionally
  Details: DetailLevel: ReturnAll, none

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'xs:float'

=cut

sub getSalesTaxPercent {
  my $self = shift;
  return $self->{'SalesTaxPercent'};
}


=head2 setShippingIncludedInTax()

Whether shipping costs are to be part of the base amount that is taxed.
GetTaxTable: This tag is empty if the user did not previously provide information.

  Calls: SetTaxTable
  RequiredInput: Yes

#    Argument: 'xs:boolean'

=cut

sub setShippingIncludedInTax {
  my $self = shift;
  $self->{'ShippingIncludedInTax'} = shift
}

=head2 isShippingIncludedInTax()

  Calls: GetBidderList
         GetItemShipping
         GetSellerList
         GetTaxTable
  Returned: Conditionally
  Details: DetailLevel: ReturnAll, none

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetOrderTransactions
  Returned: Conditionally
  Details: DetailLevel: ReturnAll

  Calls: GetItemTransactions
         GetSellerTransactions
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isShippingIncludedInTax {
  my $self = shift;
  return $self->{'ShippingIncludedInTax'};
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
