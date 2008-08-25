#!/usr/bin/perl

package eBay::API::XML::Call::SetStoreCategories;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SetStoreCategories.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::SetStoreCategories

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::SetStoreCategories inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::SetStoreCategories::SetStoreCategoriesRequestType;
use eBay::API::XML::Call::SetStoreCategories::SetStoreCategoriesResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'SetStoreCategories';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::SetStoreCategories::SetStoreCategoriesRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::SetStoreCategories::SetStoreCategoriesResponseType';
}

#
# input properties
#

=head2 setAction()

Specifies the type of action (Add, Move, Delete, or Rename) to carry out
for the specified categories.

  RequiredInput: Yes
#    Argument: 'ns:StoreCategoryUpdateActionCodeType'

=cut
       
sub setAction {
   my $self   = shift;
   my $sAction = shift;
   $self->getRequestDataType()->setAction($sAction);
}

=head2 setDestinationParentCategoryID()

When adding or moving store categories, specifies the category under
which the listed categories will be located. To add or move categories to
the top level, set the value to -999.

  RequiredInput: Conditionally
#    Argument: 'xs:long'

=cut
       
sub setDestinationParentCategoryID {
   my $self   = shift;
   my $sDestinationParentCategoryID = shift;
   $self->getRequestDataType()->setDestinationParentCategoryID($sDestinationParentCategoryID);
}

=head2 setItemDestinationCategoryID()

Items can only be contained within child categories. A parent category
cannot contain items. If adding, moving, or deleting categories displaces
items, you must specify a destination child category under which the
displaced items will be moved. The destination category must have no
child categories.

  RequiredInput: Conditionally
#    Argument: 'xs:long'

=cut
       
sub setItemDestinationCategoryID {
   my $self   = shift;
   my $sItemDestinationCategoryID = shift;
   $self->getRequestDataType()->setItemDestinationCategoryID($sItemDestinationCategoryID);
}

=head2 setStoreCategories()

Contains information for specifying the store categories being acted on.

  RequiredInput: Yes
#    Argument: 'ns:StoreCustomCategoryArrayType'

=cut
       
sub setStoreCategories {
   my $self   = shift;
   my $pStoreCategories = shift;
   $self->getRequestDataType()->setStoreCategories($pStoreCategories);
}



#
# output properties
#

=head2 getStatus()

When a category structure change is processed synchronously, the status 
is returned as Complete or Failed. For asynchronously processed changes, 
the status is reported as Pending. Use GetStoreCategoryUpdateStatus to 
monitor the status of asynchronously processed changes.

  Returned: Always
#    Returns: 'ns:TaskStatusCodeType'

=cut
       
sub getStatus {
   my $self = shift;
   return $self->getResponseDataType()->getStatus();
}

=head2 getTaskID()

The task ID associated with the category structure change request. If the 
SetStoreCategories call is process synchronously, the task ID is 0. If the 
category structure changes affect many listings, the changes will be 
processed asynchronously and the task ID will be a positive number. Use 
the task ID with GetStoreCategoryUpdateStatus to monitor the status of 
asynchronously processed changes.

  Returned: Always
#    Returns: 'xs:long'

=cut
       
sub getTaskID {
   my $self = shift;
   return $self->getResponseDataType()->getTaskID();
}





1;   
