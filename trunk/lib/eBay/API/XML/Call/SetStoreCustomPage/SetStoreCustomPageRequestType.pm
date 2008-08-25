#!/usr/bin/perl

package eBay::API::XML::Call::SetStoreCustomPage::SetStoreCustomPageRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SetStoreCustomPageRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::SetStoreCustomPage::SetStoreCustomPageRequestType

=head1 DESCRIPTION

Sets a custom page for a user's eBay Store. The page can include static HTML
content as well as dynamic content that is added using the special eBay Stores
tags.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::SetStoreCustomPage::SetStoreCustomPageRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::StoreCustomPageType;


my @gaProperties = ( [ 'CustomPage', 'ns:StoreCustomPageType', ''
	     ,'eBay::API::XML::DataType::StoreCustomPageType', '1' ]
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



=head2 setCustomPage()

The custom page being submitted.

  RequiredInput: Yes
#    Argument: 'ns:StoreCustomPageType'

=cut

sub setCustomPage {
  my $self = shift;
  $self->{'CustomPage'} = shift
}

=head2 getCustomPage()

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
