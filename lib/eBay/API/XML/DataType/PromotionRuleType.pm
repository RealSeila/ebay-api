#!/usr/bin/perl

package eBay::API::XML::DataType::PromotionRuleType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PromotionRuleType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::PromotionRuleType

=head1 DESCRIPTION

Defines a rule that promotes items or a store category when
a buyer views a specific item or store category.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::PromotionRuleType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::ItemIDType;
use eBay::API::XML::DataType::Enum::PromotionMethodCodeType;
use eBay::API::XML::DataType::Enum::PromotionSchemeCodeType;


my @gaProperties = ( [ 'PromotedKeywords', 'xs:string', '', '', '' ]
	, [ 'PromotedStoreCategoryID', 'xs:long', '', '', '' ]
	, [ 'PromotedeBayCategoryID', 'xs:string', '', '', '' ]
	, [ 'PromotionMethod', 'ns:PromotionMethodCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::PromotionMethodCodeType', '' ]
	, [ 'PromotionScheme', 'ns:PromotionSchemeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::PromotionSchemeCodeType', '' ]
	, [ 'ReferringItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'ReferringKeywords', 'xs:string', '', '', '' ]
	, [ 'ReferringStoreCategoryID', 'xs:long', '', '', '' ]
	, [ 'ReferringeBayCategoryID', 'xs:string', '', '', '' ]
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



=head2 setPromotedKeywords()

The keywords that identify promoted items. Use with a promotion scheme of
ItemToDefaultRule or DefaultRule. Only for Store owners.

#    Argument: 'xs:string'

=cut

sub setPromotedKeywords {
  my $self = shift;
  $self->{'PromotedKeywords'} = shift
}

=head2 getPromotedKeywords()

  Calls: GetPromotionRules
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getPromotedKeywords {
  my $self = shift;
  return $self->{'PromotedKeywords'};
}


=head2 setPromotedStoreCategoryID()

The ID of the Store category being promoted. Use with a promotion scheme of
ItemToStoreCat, StoreToStoreCat, ItemToDefaultRule, or
DefaultRule. Only for Store owners.

#    Argument: 'xs:long'

=cut

sub setPromotedStoreCategoryID {
  my $self = shift;
  $self->{'PromotedStoreCategoryID'} = shift
}

=head2 getPromotedStoreCategoryID()

  Calls: GetPromotionRules
  Returned: Conditionally

#    Returns: 'xs:long'

=cut

sub getPromotedStoreCategoryID {
  my $self = shift;
  return $self->{'PromotedStoreCategoryID'};
}


=head2 setPromotedeBayCategoryID()

The ID of the eBay category being promoted. Use with a promotion scheme of
ItemToDefaultRule or DefaultRule.

#    Argument: 'xs:string'

=cut

sub setPromotedeBayCategoryID {
  my $self = shift;
  $self->{'PromotedeBayCategoryID'} = shift
}

=head2 getPromotedeBayCategoryID()

  Calls: GetPromotionRules
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getPromotedeBayCategoryID {
  my $self = shift;
  return $self->{'PromotedeBayCategoryID'};
}


=head2 setPromotionMethod()

The type of cross promotion, CrossSell or UpSell.

#    Argument: 'ns:PromotionMethodCodeType'

=cut

sub setPromotionMethod {
  my $self = shift;
  $self->{'PromotionMethod'} = shift
}

=head2 getPromotionMethod()

  Calls: GetPromotionRules
  Returned: Always

#    Returns: 'ns:PromotionMethodCodeType'

=cut

sub getPromotionMethod {
  my $self = shift;
  return $self->{'PromotionMethod'};
}


=head2 setPromotionScheme()

The type of cross-promotion scheme you are defining.

#    Argument: 'ns:PromotionSchemeCodeType'

=cut

sub setPromotionScheme {
  my $self = shift;
  $self->{'PromotionScheme'} = shift
}

=head2 getPromotionScheme()

  Calls: GetPromotionRules
  Returned: Always

#    Returns: 'ns:PromotionSchemeCodeType'

=cut

sub getPromotionScheme {
  my $self = shift;
  return $self->{'PromotionScheme'};
}


=head2 setReferringItemID()

The unique ID of the item the buyer is viewing or purchasing.
Use with a promotion scheme of ItemToItem or ItemToStoreCat.
Always use ReferringItemID or ReferringStoreCategoryID, but
not both.

#    Argument: 'ns:ItemIDType'

=cut

sub setReferringItemID {
  my $self = shift;
  $self->{'ReferringItemID'} = shift
}

=head2 getReferringItemID()

  Calls: GetPromotionRules
  Returned: Conditionally

#    Returns: 'ns:ItemIDType'

=cut

sub getReferringItemID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ReferringItemID'
		,'eBay::API::XML::DataType::ItemIDType');
}


=head2 setReferringKeywords()

The keywords that identify referring items. Use with a promotion scheme of
ItemToDefaultRule or DefaultRule. Only for Store owners.

#    Argument: 'xs:string'

=cut

sub setReferringKeywords {
  my $self = shift;
  $self->{'ReferringKeywords'} = shift
}

=head2 getReferringKeywords()

  Calls: GetPromotionRules
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getReferringKeywords {
  my $self = shift;
  return $self->{'ReferringKeywords'};
}


=head2 setReferringStoreCategoryID()

The ID of the store category the user is browsing. Use with a
promotion scheme of 
StoreToStoreCat, ItemToDefaultRule or DefaultRule.
Always use ReferringStoreCategoryID or ReferringItemID, but
not both.

#    Argument: 'xs:long'

=cut

sub setReferringStoreCategoryID {
  my $self = shift;
  $self->{'ReferringStoreCategoryID'} = shift
}

=head2 getReferringStoreCategoryID()

  Calls: GetPromotionRules
  Returned: Conditionally

#    Returns: 'xs:long'

=cut

sub getReferringStoreCategoryID {
  my $self = shift;
  return $self->{'ReferringStoreCategoryID'};
}


=head2 setReferringeBayCategoryID()

The ID of the eBay category being referred. Use with a promotion scheme
or ItemToDefaultRule or DefaultRule.

#    Argument: 'xs:string'

=cut

sub setReferringeBayCategoryID {
  my $self = shift;
  $self->{'ReferringeBayCategoryID'} = shift
}

=head2 getReferringeBayCategoryID()

  Calls: GetPromotionRules
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getReferringeBayCategoryID {
  my $self = shift;
  return $self->{'ReferringeBayCategoryID'};
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
