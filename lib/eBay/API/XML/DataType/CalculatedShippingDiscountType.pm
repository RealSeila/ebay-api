#!/usr/bin/perl

package eBay::API::XML::DataType::CalculatedShippingDiscountType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CalculatedShippingDiscountType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::CalculatedShippingDiscountType

=head1 DESCRIPTION

Details of an individual discount profile defined by the
user for calculated shipping.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::CalculatedShippingDiscountType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::DiscountProfileType;
use eBay::API::XML::DataType::Enum::DiscountNameCodeType;


my @gaProperties = ( [ 'DiscountName', 'ns:DiscountNameCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::DiscountNameCodeType', '' ]
	, [ 'DiscountProfile', 'ns:DiscountProfileType', '1'
	     ,'eBay::API::XML::DataType::DiscountProfileType', '1' ]
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



=head2 setDiscountName()

The type of discount or "rule" that is being used by the profile. Only
WeightOff is a "variable" rule, as defined in the documentation on shipping
discount profiles.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=ShippingDiscountProfiles
Title: Shipping Cost Discount Profiles

  Calls: SetShippingDiscountProfiles
  RequiredInput: Conditionally
  OnlyTheseValues: 
								IndividualItemWeight, CombinedItemWeight, WeightOff
							

#    Argument: 'ns:DiscountNameCodeType'

=cut

sub setDiscountName {
  my $self = shift;
  $self->{'DiscountName'} = shift
}

=head2 getDiscountName()

  Calls: GetShippingDiscountProfiles
  Returned: Conditionally
  OnlyTheseValues: 
								IndividualItemWeight, CombinedItemWeight, WeightOff
							

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll
  OnlyTheseValues: 
								IndividualItemWeight, CombinedItemWeight, WeightOff
							

#    Returns: 'ns:DiscountNameCodeType'

=cut

sub getDiscountName {
  my $self = shift;
  return $self->{'DiscountName'};
}


=head2 setDiscountProfile()

Details of this particular calculated shipping discount profile. If
ModifyActionCode is Modify, all details of the new version of the profile must
be provided. If ModifyActionCode is Delete, DiscountProfileID is required,
MappingDiscountProfileID is optional, and all other fields of DiscountProfile
are ignored. Restrictions of how many profiles you can have for a given
discount rule are discussed in the documentation on shipping discount
profiles.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=ShippingDiscountProfiles
Title: Shipping Cost Discount Profiles

  Calls: SetShippingDiscountProfiles
  RequiredInput: Conditionally
  OnlyTheseValues: 
								IndividualItemWeight, CombinedItemWeight, WeightOff
							

#    Argument: reference to an array  
                      of 'ns:DiscountProfileType'

=cut

sub setDiscountProfile {
  my $self = shift;
  $self->{'DiscountProfile'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getDiscountProfile()

  Calls: GetShippingDiscountProfiles
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

#    Returns: reference to an array  
                      of 'ns:DiscountProfileType'

=cut

sub getDiscountProfile {
  my $self = shift;
  return $self->_getDataTypeArray('DiscountProfile');
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
