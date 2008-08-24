#!/usr/bin/perl

package eBay::API::XML::DataType::DiscountProfileType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. DiscountProfileType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::DiscountProfileType

=head1 DESCRIPTION

Details of a flat or calculated shipping discount profile.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::DiscountProfileType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::AmountType;
use eBay::API::XML::DataType::MeasureType;


my @gaProperties = ( [ 'DiscountProfileID', 'xs:string', '', '', '' ]
	, [ 'DiscountProfileName', 'xs:string', '', '', '' ]
	, [ 'EachAdditionalAmount', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'EachAdditionalAmountOff', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'EachAdditionalPercentOff', 'xs:float', '', '', '' ]
	, [ 'MappedDiscountProfileID', 'xs:string', '', '', '' ]
	, [ 'WeightOff', 'ns:MeasureType', ''
	     ,'eBay::API::XML::DataType::MeasureType', '1' ]
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



=head2 setDiscountProfileID()

The unique eBay-created ID for the shipping discount, assigned when the
profile is created. On input, if ModifyActionCode is Add, this is ignored if
provided. If ModifyActionCode is Modify, all details of the new version of the
profile must be provided. If ModifyActionCode is Delete, DiscountProfileID is
required, MappingDiscountProfileID is optional, and all other fields of
DiscountProfile are ignored.

  Calls: SetShippingDiscountProfiles
  RequiredInput: Conditionally

#    Argument: 'xs:string'

=cut

sub setDiscountProfileID {
  my $self = shift;
  $self->{'DiscountProfileID'} = shift
}

=head2 getDiscountProfileID()

  Calls: GetShippingDiscountProfiles
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

#    Returns: 'xs:string'

=cut

sub getDiscountProfileID {
  my $self = shift;
  return $self->{'DiscountProfileID'};
}


=head2 setDiscountProfileName()

The user's title for this profile. On input, if ModifyActionCode is Add, this
is ignored (if provided) if this is the first profile being created and
required if there is more than one profile of that type (flat rate versus
calculated) already. To modify the name, set ModifyActionCode to Update and
provide all details for the profile. On output, DiscountProfileName is only
returned if the user defined more than one profile.

  Calls: SetShippingDiscountProfiles
  RequiredInput: Conditionally

#    Argument: 'xs:string'

=cut

sub setDiscountProfileName {
  my $self = shift;
  $self->{'DiscountProfileName'} = shift
}

=head2 getDiscountProfileName()

  Calls: GetShippingDiscountProfiles
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

#    Returns: 'xs:string'

=cut

sub getDiscountProfileName {
  my $self = shift;
  return $self->{'DiscountProfileName'};
}


=head2 setEachAdditionalAmount()

The amount, if the seller specified EachAdditionalAmount as the type of profile,
as noted in FlatShippingDiscount.DiscountName.
Flat rate shipping only.

  Calls: SetShippingDiscountProfiles
  RequiredInput: Conditionally
  Context: FlatShippingDiscount

#    Argument: 'ns:AmountType'

=cut

sub setEachAdditionalAmount {
  my $self = shift;
  $self->{'EachAdditionalAmount'} = shift
}

=head2 getEachAdditionalAmount()

  Calls: GetShippingDiscountProfiles
  Returned: Conditionally
  Context: FlatShippingDiscount

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll
  Context: FlatShippingDiscount
           InternationalFlatShippingDiscount

#    Returns: 'ns:AmountType'

=cut

sub getEachAdditionalAmount {
  my $self = shift;
  return $self->_getDataTypeInstance( 'EachAdditionalAmount'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setEachAdditionalAmountOff()

The amount, if the seller specified EachAdditionalAmountOff as the type of profile,
as noted in FlatShippingDiscount.DiscountName.
Flat rate shipping only.

  Calls: SetShippingDiscountProfiles
  RequiredInput: Conditionally
  Context: FlatShippingDiscount

#    Argument: 'ns:AmountType'

=cut

sub setEachAdditionalAmountOff {
  my $self = shift;
  $self->{'EachAdditionalAmountOff'} = shift
}

=head2 getEachAdditionalAmountOff()

  Calls: GetShippingDiscountProfiles
  Returned: Conditionally
  Context: FlatShippingDiscount

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll
  Context: FlatShippingDiscount
           InternationalFlatShippingDiscount

#    Returns: 'ns:AmountType'

=cut

sub getEachAdditionalAmountOff {
  my $self = shift;
  return $self->_getDataTypeInstance( 'EachAdditionalAmountOff'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setEachAdditionalPercentOff()

The percent (expressed in decimal, as in .5 for 50%), if the seller specified
EachAdditionalPercentOff as the type of profile,
as noted in FlatShippingDiscount.DiscountName.
Flat rate shipping only.

  Calls: SetShippingDiscountProfiles
  RequiredInput: Conditionally
  Context: FlatShippingDiscount

#    Argument: 'xs:float'

=cut

sub setEachAdditionalPercentOff {
  my $self = shift;
  $self->{'EachAdditionalPercentOff'} = shift
}

=head2 getEachAdditionalPercentOff()

  Calls: GetShippingDiscountProfiles
  Returned: Conditionally
  Context: FlatShippingDiscount

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll
  Context: FlatShippingDiscount
           InternationalFlatShippingDiscount

#    Returns: 'xs:float'

=cut

sub getEachAdditionalPercentOff {
  my $self = shift;
  return $self->{'EachAdditionalPercentOff'};
}


=head2 setMappedDiscountProfileID()

For SetShippingDiscountProfiles, if MappedDiscountProfileID is omitted when
ModifyActionCode is Delete, any listings currently using the profile
identified by DiscountProfileID will have that profile removed. For
SetShippingDiscountProfiles and GetItem, this is the intended discount profile
mapping.

  Calls: SetShippingDiscountProfiles
  RequiredInput: Conditionally
  Context: CalculatedShippingDiscount

#    Argument: 'xs:string'

=cut

sub setMappedDiscountProfileID {
  my $self = shift;
  $self->{'MappedDiscountProfileID'} = shift
}

=head2 getMappedDiscountProfileID()

  Calls: GetShippingDiscountProfiles
  Returned: Conditionally
  Context: CalculatedShippingDiscount

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll
  Context: CalculatedShippingDiscount
           InternationalCalculatedShippingDiscount

#    Returns: 'xs:string'

=cut

sub getMappedDiscountProfileID {
  my $self = shift;
  return $self->{'MappedDiscountProfileID'};
}


=head2 setWeightOff()

The weight by which to reduce the combined item weight, if the seller
specified WeightOff as the type of profile, as noted in
CalculatedShippingDiscount.DiscountName.  The smallest unit is used (e.g.
ounces).
Calculated shipping only.

  Calls: SetShippingDiscountProfiles
  RequiredInput: Conditionally
  Context: CalculatedShippingDiscount

#    Argument: 'ns:MeasureType'

=cut

sub setWeightOff {
  my $self = shift;
  $self->{'WeightOff'} = shift
}

=head2 getWeightOff()

  Calls: GetShippingDiscountProfiles
  Returned: Conditionally
  Context: CalculatedShippingDiscount

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll
  Context: CalculatedShippingDiscount
           InternationalCalculatedShippingDiscount

#    Returns: 'ns:MeasureType'

=cut

sub getWeightOff {
  my $self = shift;
  return $self->_getDataTypeInstance( 'WeightOff'
		,'eBay::API::XML::DataType::MeasureType');
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
