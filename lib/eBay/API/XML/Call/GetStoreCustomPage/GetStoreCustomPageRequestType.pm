#!/usr/bin/perl

package eBay::API::XML::Call::GetStoreCustomPage::GetStoreCustomPageRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetStoreCustomPageRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetStoreCustomPage::GetStoreCustomPageRequestType

=head1 DESCRIPTION

Retrieves the custom page or pages for the user's Store.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetStoreCustomPage::GetStoreCustomPageRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");



my @gaProperties = ( [ 'PageID', 'xs:long', '', '', '' ]
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



=head2 setPageID()

If a PageID is specified, then that page is returned, and
the returned page contains the page Content.
If no PageID is specified, then all pages are returned, without
the page Content.

  RequiredInput: No
#    Argument: 'xs:long'

=cut

sub setPageID {
  my $self = shift;
  $self->{'PageID'} = shift
}

=head2 getPageID()

#    Returns: 'xs:long'

=cut

sub getPageID {
  my $self = shift;
  return $self->{'PageID'};
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
