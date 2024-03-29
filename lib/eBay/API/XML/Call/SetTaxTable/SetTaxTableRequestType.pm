#!/usr/bin/perl

package eBay::API::XML::Call::SetTaxTable::SetTaxTableRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SetTaxTableRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::SetTaxTable::SetTaxTableRequestType

=head1 DESCRIPTION

Sets the tax table for a seller on a given site.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::SetTaxTable::SetTaxTableRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::TaxTableType;


my @gaProperties = ( [ 'TaxTable', 'ns:TaxTableType', ''
	     ,'eBay::API::XML::DataType::TaxTableType', '1' ]
                    );
push @gaProperties, @{eBay::API::XML::RequestDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::RequestDataType::getAttributesList()};

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



=head2 setTaxTable()

A container of tax jurisdiction information unique to a user/site combination.

  RequiredInput: Yes
#    Argument: 'ns:TaxTableType'

=cut

sub setTaxTable {
  my $self = shift;
  $self->{'TaxTable'} = shift
}

=head2 getTaxTable()

#    Returns: 'ns:TaxTableType'

=cut

sub getTaxTable {
  my $self = shift;
  return $self->_getDataTypeInstance( 'TaxTable'
		,'eBay::API::XML::DataType::TaxTableType');
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
