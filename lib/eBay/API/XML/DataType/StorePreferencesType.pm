#!/usr/bin/perl

package eBay::API::XML::DataType::StorePreferencesType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. StorePreferencesType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::StorePreferencesType

=head1 DESCRIPTION

Store Preferences type.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::StorePreferencesType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::StoreVacationPreferencesType;


my @gaProperties = ( [ 'VacationPreferences', 'ns:StoreVacationPreferencesType', ''
	     ,'eBay::API::XML::DataType::StoreVacationPreferencesType', '1' ]
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



=head2 setVacationPreferences()

Store vacation hold preferences.

  Calls: SetStorePreferences
  RequiredInput: No

#    Argument: 'ns:StoreVacationPreferencesType'

=cut

sub setVacationPreferences {
  my $self = shift;
  $self->{'VacationPreferences'} = shift
}

=head2 getVacationPreferences()

  Calls: GetStorePreferences
  Returned: Conditionally

#    Returns: 'ns:StoreVacationPreferencesType'

=cut

sub getVacationPreferences {
  my $self = shift;
  return $self->_getDataTypeInstance( 'VacationPreferences'
		,'eBay::API::XML::DataType::StoreVacationPreferencesType');
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
