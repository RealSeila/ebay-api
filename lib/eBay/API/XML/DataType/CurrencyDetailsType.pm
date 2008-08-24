#!/usr/bin/perl

package eBay::API::XML::DataType::CurrencyDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CurrencyDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::CurrencyDetailsType

=head1 DESCRIPTION

Details about a currency.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::CurrencyDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::CurrencyCodeType;


my @gaProperties = ( [ 'Currency', 'ns:CurrencyCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CurrencyCodeType', '' ]
	, [ 'Description', 'xs:string', '', '', '' ]
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



=head2 setCurrency()

Currency abbreviation.<br><br>
Related fields:<br>
Item.Currency and Item.StartPrice in AddItem<br>
SearchLocationFilter.Currency in GetSearchResults

#    Argument: 'ns:CurrencyCodeType'

=cut

sub setCurrency {
  my $self = shift;
  $self->{'Currency'} = shift
}

=head2 getCurrency()

  Calls: GeteBayDetails
  Returned: Conditionally

#    Returns: 'ns:CurrencyCodeType'

=cut

sub getCurrency {
  my $self = shift;
  return $self->{'Currency'};
}


=head2 setDescription()

Full currency name for display purposes.

#    Argument: 'xs:string'

=cut

sub setDescription {
  my $self = shift;
  $self->{'Description'} = shift
}

=head2 getDescription()

  Calls: GeteBayDetails
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getDescription {
  my $self = shift;
  return $self->{'Description'};
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
