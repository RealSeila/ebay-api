#!/usr/bin/perl

package eBay::API::XML::Call::GetStoreCategoryUpdateStatus::GetStoreCategoryUpdateStatusRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetStoreCategoryUpdateStatusRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetStoreCategoryUpdateStatus::GetStoreCategoryUpdateStatusRequestType

=head1 DESCRIPTION

Returns the status of the processing progress for category structure changes
specified with a SetStoreCategories request. Use this call to retrieve status
when the SetStoreCategories call is being processed asynchronously.
SetStoreCategories will be processed asynchronously when many listings are
affected by the category structure changes.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetStoreCategoryUpdateStatus::GetStoreCategoryUpdateStatusRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");



my @gaProperties = ( [ 'TaskID', 'xs:long', '', '', '' ]
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



=head2 setTaskID()

The task ID returned by the SetStoreCategories call. If the
SetStoreCategories call was processed asynchronously, the TaskID will be
a positive number, otherwise the TaskID will be 0.

  RequiredInput: Yes
#    Argument: 'xs:long'

=cut

sub setTaskID {
  my $self = shift;
  $self->{'TaskID'} = shift
}

=head2 getTaskID()

#    Returns: 'xs:long'

=cut

sub getTaskID {
  my $self = shift;
  return $self->{'TaskID'};
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
