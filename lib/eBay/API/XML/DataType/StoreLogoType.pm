#!/usr/bin/perl

package eBay::API::XML::DataType::StoreLogoType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. StoreLogoType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::StoreLogoType

=head1 DESCRIPTION

Store logo.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::StoreLogoType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'LogoID', 'xs:int', '', '', '' ]
	, [ 'Name', 'xs:string', '', '', '' ]
	, [ 'URL', 'xs:anyURI', '', '', '' ]
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



=head2 setLogoID()

Store logo ID (use GetStoreOptions to get the list of valid logo IDs).

  Calls: SetStore
  RequiredInput: Conditionally

#    Argument: 'xs:int'

=cut

sub setLogoID {
  my $self = shift;
  $self->{'LogoID'} = shift
}

=head2 getLogoID()

  Calls: GetStore
  Returned: Conditionally

  Calls: GetStoreOptions
  Returned: Always

#    Returns: 'xs:int'

=cut

sub getLogoID {
  my $self = shift;
  return $self->{'LogoID'};
}


=head2 setName()

Store logo name. Provides a user-friendly name for the logo.

  Calls: SetStore
  RequiredInput: Conditionally

#    Argument: 'xs:string'

=cut

sub setName {
  my $self = shift;
  $self->{'Name'} = shift
}

=head2 getName()

  Calls: GetStore
  Returned: Conditionally

  Calls: GetStoreOptions
  Returned: Always

#    Returns: 'xs:string'

=cut

sub getName {
  my $self = shift;
  return $self->{'Name'};
}


=head2 setURL()

URL of the logo. Must have a .gif or .jpg extention. Specified when
you are using a customized logo.

  Calls: SetStore
  RequiredInput: Conditionally

#    Argument: 'xs:anyURI'

=cut

sub setURL {
  my $self = shift;
  $self->{'URL'} = shift
}

=head2 getURL()

  Calls: GetStore
  Returned: Conditionally

#    Returns: 'xs:anyURI'

=cut

sub getURL {
  my $self = shift;
  return $self->{'URL'};
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
