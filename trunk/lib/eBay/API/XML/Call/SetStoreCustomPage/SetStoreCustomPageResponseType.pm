#!/usr/bin/perl

package eBay::API::XML::Call::SetStoreCustomPage::SetStoreCustomPageResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SetStoreCustomPageResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::SetStoreCustomPage::SetStoreCustomPageResponseType

=head1 DESCRIPTION

Returned after calling SetStoreCustomPageRequest. This serves as
confirmation that the custom page was successfully submitted.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::SetStoreCustomPage::SetStoreCustomPageResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::StoreCustomPageType;


my @gaProperties = ( [ 'CustomPage', 'ns:StoreCustomPageType', ''
	     ,'eBay::API::XML::DataType::StoreCustomPageType', '1' ]
                    );
push @gaProperties, @{eBay::API::XML::ResponseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::ResponseDataType::getAttributesList()};

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



=head2 setCustomPage()

The custom page that was submitted.

#    Argument: 'ns:StoreCustomPageType'

=cut

sub setCustomPage {
  my $self = shift;
  $self->{'CustomPage'} = shift
}

=head2 getCustomPage()

  Returned: Always
#    Returns: 'ns:StoreCustomPageType'

=cut

sub getCustomPage {
  my $self = shift;
  return $self->_getDataTypeInstance( 'CustomPage'
		,'eBay::API::XML::DataType::StoreCustomPageType');
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
