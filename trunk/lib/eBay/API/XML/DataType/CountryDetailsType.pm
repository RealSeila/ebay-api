#!/usr/bin/perl

package eBay::API::XML::DataType::CountryDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CountryDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 09/23/2008 13:56
# API Release Number: ... 583
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::CountryDetailsType

=head1 DESCRIPTION

Details about a specific country.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::CountryDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::CountryCodeType;


my @gaProperties = ( [ 'Country', 'ns:CountryCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CountryCodeType', '' ]
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



=head2 setCountry()

Two-letter country abbreviation.<br><br>
Related fields:<br>
Item.Country in AddItem<br>
SearchLocationFilter.CountryCode in GetSearchResults

#    Argument: 'ns:CountryCodeType'

=cut

sub setCountry {
  my $self = shift;
  $self->{'Country'} = shift
}

=head2 getCountry()

  Calls: GeteBayDetails
  Returned: Conditionally

#    Returns: 'ns:CountryCodeType'

=cut

sub getCountry {
  my $self = shift;
  return $self->{'Country'};
}


=head2 setDescription()

Full country name for display purposes. May be similar to (but not necessarily identical to)
CountryName in addresses (e.g., User.RegistrationAddress.CountryName in GetUser).

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
