#!/usr/bin/perl

package eBay::API::XML::DataType::ExtendedContactDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ExtendedContactDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ExtendedContactDetailsType

=head1 DESCRIPTION

Contains extended contact information for an eBay user.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ExtendedContactDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::ContactHoursDetailsType;


my @gaProperties = ( [ 'ClassifiedAdContactByEmailEnabled', 'xs:boolean', '', '', '' ]
	, [ 'ContactHoursDetails', 'ns:ContactHoursDetailsType', ''
	     ,'eBay::API::XML::DataType::ContactHoursDetailsType', '1' ]
	, [ 'PayPerLeadPhoneNumber', 'xs:string', '', '', '' ]
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



=head2 setClassifiedAdContactByEmailEnabled()

Returned for classified ads to indicate whether contact by email is enabled.
In the pay-per-lead feature, which will be available in upcoming months on the
US site, this field will specify whether potential buyers can email the seller
after viewing a pay-per-lead listing.

  Calls: AddItem
         ReviseItem
         VerifyAddItem
         RelistItem
  RequiredInput: No

#    Argument: 'xs:boolean'

=cut

sub setClassifiedAdContactByEmailEnabled {
  my $self = shift;
  $self->{'ClassifiedAdContactByEmailEnabled'} = shift
}

=head2 isClassifiedAdContactByEmailEnabled()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isClassifiedAdContactByEmailEnabled {
  my $self = shift;
  return $self->{'ClassifiedAdContactByEmailEnabled'};
}


=head2 setContactHoursDetails()

All fields related to contact hours including time ranges and 
user-designated time zone.

  Calls: AddItem
         RelistItem
         ReviseItem
         VerifyAddItem
  RequiredInput: No

#    Argument: 'ns:ContactHoursDetailsType'

=cut

sub setContactHoursDetails {
  my $self = shift;
  $self->{'ContactHoursDetails'} = shift
}

=head2 getContactHoursDetails()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll

#    Returns: 'ns:ContactHoursDetailsType'

=cut

sub getContactHoursDetails {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ContactHoursDetails'
		,'eBay::API::XML::DataType::ContactHoursDetailsType');
}


=head2 setPayPerLeadPhoneNumber()

A phone number assigned by eBay and provided to 
potential buyers when they are viewing a pay-per-lead listing.
If a potential buyer (a lead) makes a call to this number,
eBay routes the call to the seller based on 
inputs made by the seller when the seller lists the item.

#    Argument: 'xs:string'

=cut

sub setPayPerLeadPhoneNumber {
  my $self = shift;
  $self->{'PayPerLeadPhoneNumber'} = shift
}

=head2 getPayPerLeadPhoneNumber()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

#    Returns: 'xs:string'

=cut

sub getPayPerLeadPhoneNumber {
  my $self = shift;
  return $self->{'PayPerLeadPhoneNumber'};
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
