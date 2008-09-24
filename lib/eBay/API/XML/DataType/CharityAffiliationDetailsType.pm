#!/usr/bin/perl

package eBay::API::XML::DataType::CharityAffiliationDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CharityAffiliationDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::CharityAffiliationDetailsType

=head1 DESCRIPTION

Lists the nonprofit charity organization affiliations for a specified user.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::CharityAffiliationDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::CharityAffiliationDetailType;


my @gaProperties = ( [ 'CharityAffiliationDetail', 'ns:CharityAffiliationDetailType', '1'
	     ,'eBay::API::XML::DataType::CharityAffiliationDetailType', '1' ]
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



=head2 setCharityAffiliationDetail()

Indicates the affiliation status for nonprofit charity organizations
registered with the dedicated eBay Giving Works provider.

#    Argument: reference to an array  
                      of 'ns:CharityAffiliationDetailType'

=cut

sub setCharityAffiliationDetail {
  my $self = shift;
  $self->{'CharityAffiliationDetail'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getCharityAffiliationDetail()

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: reference to an array  
                      of 'ns:CharityAffiliationDetailType'

=cut

sub getCharityAffiliationDetail {
  my $self = shift;
  return $self->_getDataTypeArray('CharityAffiliationDetail');
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
