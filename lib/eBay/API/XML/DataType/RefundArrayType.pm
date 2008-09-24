#!/usr/bin/perl

package eBay::API::XML::DataType::RefundArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. RefundArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::RefundArrayType

=head1 DESCRIPTION

Contains an array of refunds.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::RefundArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::RefundType;


my @gaProperties = ( [ 'Refund', 'ns:RefundType', '1'
	     ,'eBay::API::XML::DataType::RefundType', '1' ]
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



=head2 setRefund()

Contains information about one refund.
Applicable to Half.com (for GetOrders).

#    Argument: reference to an array  
                      of 'ns:RefundType'

=cut

sub setRefund {
  my $self = shift;
  $self->{'Refund'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getRefund()

  Calls: GetOrders
  Returned: Conditionally
  Details: DetailLevel: none

#    Returns: reference to an array  
                      of 'ns:RefundType'

=cut

sub getRefund {
  my $self = shift;
  return $self->_getDataTypeArray('Refund');
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
