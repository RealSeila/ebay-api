#!/usr/bin/perl

package eBay::API::XML::DataType::PromotionRuleArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. PromotionRuleArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::PromotionRuleArrayType

=head1 DESCRIPTION

One or more PromotionRules.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::PromotionRuleArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::PromotionRuleType;


my @gaProperties = ( [ 'PromotionRule', 'ns:PromotionRuleType', '1'
	     ,'eBay::API::XML::DataType::PromotionRuleType', '1' ]
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



=head2 setPromotionRule()

A rule that promotes items or a store category when
a buyer views a specific item or store category.

#    Argument: reference to an array  
                      of 'ns:PromotionRuleType'

=cut

sub setPromotionRule {
  my $self = shift;
  $self->{'PromotionRule'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getPromotionRule()

  Calls: GetPromotionRules
  Returned: Always

#    Returns: reference to an array  
                      of 'ns:PromotionRuleType'

=cut

sub getPromotionRule {
  my $self = shift;
  return $self->_getDataTypeArray('PromotionRule');
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
