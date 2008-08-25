#!/usr/bin/perl

package eBay::API::XML::Call::GetStoreCategoryUpdateStatus::GetStoreCategoryUpdateStatusResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetStoreCategoryUpdateStatusResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetStoreCategoryUpdateStatus::GetStoreCategoryUpdateStatusResponseType

=head1 DESCRIPTION

Returns the store category structure update status, when a prior 
SetStoreCategories call was processed asynchronously. If a SetStoreCategories 
request affects many listings, then the category structure changes will be 
processed asynchronously. If not many listings are affected by category structure 
changes, the status is returned in the SetStoreCategories response.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetStoreCategoryUpdateStatus::GetStoreCategoryUpdateStatusResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::Enum::TaskStatusCodeType;


my @gaProperties = ( [ 'Status', 'ns:TaskStatusCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::TaskStatusCodeType', '' ]
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



=head2 setStatus()

The status (Pending, InProgress, Complete, or Failed) of an update to the 
store category structure.

#    Argument: 'ns:TaskStatusCodeType'

=cut

sub setStatus {
  my $self = shift;
  $self->{'Status'} = shift
}

=head2 getStatus()

  Returned: Always
#    Returns: 'ns:TaskStatusCodeType'

=cut

sub getStatus {
  my $self = shift;
  return $self->{'Status'};
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