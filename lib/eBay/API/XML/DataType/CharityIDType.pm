#!/usr/bin/perl

package eBay::API::XML::DataType::CharityIDType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CharityIDType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::CharityIDType

=head1 DESCRIPTION

Defines the affiliation status for a nonprofit charity
organization registered with the eBay Giving Works provider.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::CharityIDType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::CharityAffiliationTypeCodeType;


my @gaProperties = ( [ 'content', 'xs:string', '', '', '' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( [ 'type', 'ns:CharityAffiliationTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CharityAffiliationTypeCodeType', '' ]
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



=head2 setValue()

#    Argument: 'xs:string'

=cut

sub setValue {
  my $self = shift;
  $self->{'content'} = shift
}

=head2 getValue()

#    Returns: 'xs:string'

=cut

sub getValue {
  my $self = shift;
  return $self->{'content'};
}




=head2 setType()

Indicates the affiliation status of the nonprofit charity
organization registered with the eBay Giving Works provider.

#    Argument: 'ns:CharityAffiliationTypeCodeType'

=cut

sub setType {
  my $self = shift;
  $self->{'type'} = shift
}

=head2 getType()

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:CharityAffiliationTypeCodeType'

=cut

sub getType {
  my $self = shift;
  return $self->{'type'};
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
